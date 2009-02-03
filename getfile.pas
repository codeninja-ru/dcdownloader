unit getfile;

interface

uses Windows, wininet, SysUtils;

const
  agent = 'GetHide';

type
  TGetFile = class
  private
    _pos:    cardinal;
    Handle, hConnect: HINTERNET;
    session: HINTERNET;
    buff:    array[0..102300] of char;

    fp:     integer;
    _speed: cardinal;
    m_s:    boolean;
    FSpeed: cardinal; //ограничевать скорость
    function GF: boolean;
    procedure set_maxspeed(const Value: cardinal);
    function GetSpeed: cardinal;
  public
    use_proxy: boolean;
    proxy, proxy_user, proxy_pass: string;
    url: string;
    file_path: string;
    error_str: string;

    host, adr: string;

    set_cookie: boolean;  //передавать ли печеньки
    cookie:     string;   //печеньки

    size:    cardinal;
    restart: boolean; //докачка
    disconnect: boolean;
    constructor Create;

    function Download: boolean; overload;
    function Download(url_file: string): boolean; overload;
    function GetSize: cardinal;
    property Position: cardinal Read _pos Write _pos;
    property MaxSpeed: cardinal Read _speed Write set_maxspeed;
    //максимальная скорость бай в секунду
    property Speed: cardinal read GetSpeed;

  end;

  PGetFile = ^TGetFile;

  Egetfile = class(Exception)
  end;

  EgetfileMsg = class(Exception)   //по этому исключению не останавливем закачку
  end;

  EgetfileRestart = class(Exception)   //исключение по которому можно делать рестатр
  end;


implementation


function FileSize(const Path: string): integer; //выдрано из KOL
var
  FD: TWin32FindData;
  FH: THandle;
begin
  FH     := FindFirstFile(PChar(Path), FD);
  Result := 0;
  if FH = INVALID_HANDLE_VALUE then
    exit;
  Result := FD.nFileSizeLow;
  if ((FD.nFileSizeLow and $80000000) <> 0) or (FD.nFileSizeHigh <> 0) then
    Result := -1;
  Windows.FindClose(FH);
  // FindClose( FH );
end;

function TGetFile.Download: boolean;
begin
  Result := GF;
end;

function TGetFile.Download(url_file: string): boolean;
begin
  url    := url_file;
  Result := GF;
end;

function TGetFile.GF: boolean;
var //dwBufferLen:cardinal;
  t1, t2: cardinal;
  er:     boolean;
  Header: string;
  num, dwBufferLen, stat: cardinal;
  count_error: integer; //счетчик ошибок
begin
  repeat
    Result     := False;
    disconnect := False;

    if use_proxy then
      session := InternetOpen(agent, INTERNET_OPEN_TYPE_PROXY, PChar(proxy), nil, 0)
    else
      session := InternetOpen(agent, INTERNET_OPEN_TYPE_DIRECT, nil, nil, 0);

    if session = nil then
    begin
      error_str := 'InternetOpen error';
      raise Exception.Create('InternetOpen error');
    end;

    if proxy_user <> '' then
    begin
      if not InternetSetOption(Session, INTERNET_OPTION_PROXY_USERNAME,
        PChar(proxy_user), length(proxy_user)) then
      begin
        error_str := 'Set INTERNET_OPTION_PROXY_USERNAME Error';
        InternetCloseHandle(session);

        raise Egetfile.Create('Set INTERNET_OPTION_PROXY_USERNAME Error');
        /// exit;
      end;
      if not InternetSetOption(Session, INTERNET_OPTION_PROXY_PASSWORD,
        PChar(proxy_pass), length(proxy_pass)) then
      begin
        error_str := 'Set INTERNET_OPTION_PROXY_PASSWORD Error';
        InternetCloseHandle(session);

        raise Egetfile.Create('Set INTERNET_OPTION_PROXY_PASSWORD Error');

        //exit;
      end;
    end;

    _pos := 0; //позиция в файле

    if FileExists(file_path) and restart then
    begin
      _pos := FileSize(file_path);
    end
    else
    begin
      restart := False; //если файла нет то и докачка нам не нужна
    end;

    try

      size := GetSize;
      if restart then
      begin
        {if size = 0 then
          _pos := 0
        else   }
        if size = _pos then
        begin
        //TODO добавить проверку на случай если позция файла больше размера.
          //result:=true;//*************************************************
          //error_str:='Файл уже закачен';
          raise EgetfileMsg.Create('Файл уже закачен');
          // exit;
        end;
      end;


      host := url; //вытаскиваем host и путь к файлу. (не самый лучший способ)
      Delete(host, Pos('http://', host), 7);
      num  := Pos('/', host);
      adr  := copy(host, num + 1, length(host));
      host := Copy(host, 1, num - 1);

      count_error := 0;
      repeat  //пытаемся 10 раз пока не получится. на случай если сервак тормазит

        if count_error > 100 then
          raise Egetfile.Create('Много ошибок'); //если много ошибок значит
        hConnect := InternetConnect(session, PChar(host),
          INTERNET_DEFAULT_HTTP_PORT, nil, nil, INTERNET_SERVICE_HTTP, 0, 0);
        Handle   := HttpOpenRequest(hConnect, 'GET', PChar(adr),
          'HTTP/1.0', '', nil, INTERNET_FLAG_RELOAD or INTERNET_FLAG_NO_CACHE_WRITE, 0);
        Header   := 'Content-Type: application/x-www-form-urlencoded'#13#10;
        if not (HttpAddRequestHeaders(Handle, PChar(Header),
          Length(Header), HTTP_ADDREQ_FLAG_REPLACE or HTTP_ADDREQ_FLAG_ADD)) then
        begin
          raise Egetfile.Create('Ошибка заполнения запроса');
          //error_str:= 'Ошибка заполнения запроса.';
          //exit;
        end;

        if set_cookie then
        begin
          Header := 'Cookie: ' + cookie + #13#10;
          if not (HttpAddRequestHeaders(Handle, PChar(Header),
            Length(Header), HTTP_ADDREQ_FLAG_REPLACE or HTTP_ADDREQ_FLAG_ADD)) then
          begin
            raise Egetfile.Create('Ошибка заполнения запроса. cookie');
     {error_str:= 'Ошибка заполнения запроса. cookie';
     exit;  }
          end;
        end;


        if restart then
        begin
          Header := 'Range: bytes=' + IntToStr(_pos) + '-';
          if not (HttpAddRequestHeaders(Handle, PChar(Header),
            Length(Header), HTTP_ADDREQ_FLAG_ADD)) then
          begin
            raise Egetfile.Create('Ошибка заполнения запроса.');
      {error_str:= 'Ошибка заполнения запроса.';
      exit; }
          end;
        end;

        // Отправляем запрос
        if not (HttpSendRequest(Handle, nil, 0, nil, 0)) then
        begin
          error_str := 'Ошибка отправки запроса.';
          Inc(count_error);
          InternetCloseHandle(hConnect);
          InternetCloseHandle(Handle);
          Continue;
        end;
        count_error := 0;
      until count_error = 0;


      //проверяем ответ сервера
      dwBufferLen := sizeof(stat);
      num := 0;
      if HttpQueryInfo(Handle, HTTP_QUERY_FLAG_NUMBER or
        HTTP_QUERY_STATUS_CODE, @stat, dwBufferLen, num) <> True then
      begin
        raise Egetfile.Create('Ошибка HttpQueryInfo');
      end;
      if (stat <> HTTP_STATUS_OK) and (stat <> HTTP_STATUS_PARTIAL_CONTENT) then
      begin
        if (stat = 500) or (stat = 503) or (stat = 504) then
          raise EgetfileRestart.Create('Ошибка запроса файла ' + IntToStr(stat))
        else if stat = 404 then  // 404 не пропускаем закачку. т к были приценденты глюка сервера
          raise EgetfileRestart.Create('Ошибка запроса файла ' + IntToStr(stat))
        else // неизвестная ошибка (новые чудеса обменника) оставноим закачку
          raise Egetfile.Create('Ошибка запроса файла ' + IntToStr(stat));
      end;
      count_error := 0;


      //try
      if _pos <> 0 then //создаем файл
      begin
        fp := FileOpen(file_path, fmOpenReadWrite);
        FileSeek(fp, _pos, 0);
      end
      else
      begin
        fp := FileCreate(file_path);
      end;

      num := 1;
      while num <> 0 do
      begin

        t1 := GetTickCount;
        er := InternetReadFile(Handle, @buff, sizeof(buff), num);
        t2 := GetTickCount;
        t1 := t2 - t1;
        try
          FSpeed := sizeof(buff) div t1;
        except
          FSpeed := 0;
        end;

        if m_s then
        begin
          t2 := 1000 div _speed;
          if t1 < t2 then
            sleep(t2 - t1);
        end;

        if num<>0 then FileWrite(fp, buff, num);

        _pos := _pos + num;
        if not er then
        begin
          Result     := False;
          disconnect := True;
          raise EgetfileRestart.Create('Обрыв связи, файл не докачен');
        end;

        sleep(0);
      end;

    finally
      FileClose(fp);
      InternetCloseHandle(hConnect);
      InternetCloseHandle(Handle);
      InternetCloseHandle(session);
    end;

  until count_error = 0; //это был цикл специально для HTTP_STATUS_SERVICE_UNAVAIL

  _pos   := 0;
  Result := True;
end;

constructor TGetFile.Create;
begin
  inherited Create;
  _pos    := 0;
  restart := False;
  set_cookie := False;
  m_s     := False;
  disconnect := False;
end;

procedure TGetFile.set_maxspeed(const Value: cardinal);
begin
  _speed := Value;
  m_s    := Value > 0;
end;


function TGetFile.GetSize: cardinal;
var
  session: HINTERNET;
  Handle: HINTERNET;
  dwBufferLen, num, stat: cardinal;
begin

  Result := 0;
  if use_proxy then
    session := InternetOpen(agent, INTERNET_OPEN_TYPE_PROXY, PChar(proxy), nil, 0)
  else
    session := InternetOpen(agent, INTERNET_OPEN_TYPE_DIRECT, nil, nil, 0);
  Handle := InternetOpenUrl(session, PChar(url), nil, 0, INTERNET_FLAG_RELOAD, 0);
  if Handle = nil then
  begin
    error_str := 'InternetOpenUrl Error';
    InternetCloseHandle(session);
    raise EgetfileRestart.Create('InternetOpenUrl Error');
  end;
  num := 0;

  dwBufferLen := sizeof(stat);
  if HttpQueryInfo(Handle,HTTP_QUERY_FLAG_NUMBER or HTTP_QUERY_CONTENT_LENGTH,
    @stat, dwBufferLen, num) <> True then
      Result := 0 //raise EgetfileRestart.Create('Не удалось получить размер файла')
    else Result := stat; 

  //TODO отлов бага. когда сервак неправильно выдает длинну.
  //поидеи HttpQueryInfo должна возвращать false, но это почему-то не происходит. спасибо Билли.
  if (Result = 403) then Result := 0;

  InternetCloseHandle(Handle);
  InternetCloseHandle(session);

end;

function TGetFile.GetSpeed: cardinal;
begin
  Result := FSpeed;
  FSpeed := 0;  //обнуляем скорость после прочтения. костыль. нужно когда тупит обменник и показывается предыдущая скорость вмсето нулевой
end;

end.
