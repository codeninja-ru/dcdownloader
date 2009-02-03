unit Unit3;

{DEFINE debughttp}

interface

uses
  Windows, Classes, Contnrs, SysUtils, Graphics, JclGraphics, JvImageList,
  JclGraphUtils, getfile, shellapi,
  pngimage, JclUnicode, jvclipbrd, IdHTTP, IdCookieManager, JvDSADialogs,
  IdSSLOpenSSL, dwqueue;

type
  work = class(TThread)
  private
    procedure getUrlInfo(text:string; queue: Tdwqueue); //дергаем инфу о файле с датакода
    procedure openUrl(url:string; http:TIdHTTP; mem:TMemoryStream); //открываем урл
    
    procedure login;
    function initHttp(http: TIdHTTP; CookieManager: TIdCookieManager): TIdHTTP;  //создаем объект TIdHTTP для работы с http
    procedure GetImageAndOcr(imgUrl: string); //грузим и распознаем картинку
  protected
    logstr, cookie: string;

    newname, cap, url: string; //новое имя для файла

    rarfile, clbrd: TStringList;

    showformbmp: Tbitmap;
    sendocr:     TPNGObject;

    stop: boolean; //остановка

    _https: TIdHTTP;

    procedure Execute; override;
    procedure delLB;
    procedure addlog;
    procedure blok;
    procedure unblok;
    //    function download(url:string):boolean;
    //procedure downloadinfo;
    //procedure viewinfo; //показываем инфу
    procedure upcookie;
    procedure step1;
    procedure step2;
    procedure step3;
    procedure step4;
    procedure step5;
    procedure newload;
    procedure ocr;

    procedure stopme; //критическая остановка

    procedure hintmsg; //всплывающее сообщение

    function getBigUrl(text: string): string;  //закачка с ссылок 1Гиг


  public
    http:  TIdHTTP;
    IdCookieManager1: TIdCookieManager;
    // gf:TGetFile;
    queue: Tdwqueue;
  end;


implementation

uses strings, shutdown, freespace, Math, Dialogs, Controls,
  IdHTTPHeaderInfo, code_filter, Unit1;


{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure work.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }




{ work }

procedure work.addlog;
begin
  queue.logstr := logstr;
  queue.addlog(self);
end;

procedure work.blok;
begin
  queue.Open(self);
end;

procedure work.delLB;
begin
  queue.del_link(self);
end;

function work.initHttp(http: TIdHTTP; CookieManager: TIdCookieManager): TIdHTTP;
begin
  {http := TIdHTTP.Create(nil);
  IdCookieManager1 := TIdCookieManager.Create(nil); }
  http.AllowCookies      := True;
  http.Request.UserAgent :=
    'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; MRA 4.6 (build 01425))';
  http.Request.Accept    :=
    'text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5';
  http.Request.AcceptLanguage := 'ru';
  http.Request.AcceptEncoding := 'deflate';
  http.Request.AcceptCharSet := 'windows-1251,utf-8;q=0.7,*;q=0.7';
  http.Request.ContentType := '';
  http.Request.Connection := 'keep-alive';
  http.CookieManager     := CookieManager;

  Result := http;
end;

procedure work.GetImageAndOcr(imgUrl: string);
var
  noerr:   boolean; //ошибок нет, картинка распознана
  mem:     TMemoryStream;
  Text:    TStringList;
  png:     TPNGObject;
begin
  Text := TStringList.Create;
  mem  := TMemoryStream.Create;

  try
    repeat   //работаем пока не загрузим и не распознаем
    noerr := True;
    Synchronize(step2);
    try
      http.Get(imgUrl, mem); //грузим картинку
      {$IF DEFINED(debughttp)}
      debugtxt.Add('GET: '+imgUrl);
      debugtxt.AddStrings(http.Request.RawHeaders);
      debugtxt.Add('');
      debugtxt.AddStrings(http.Response.RawHeaders);
      debugtxt.Add('_____________');
      debugtxt.SaveToFile('httplog.txt');
      {$IFEND}
      except
        noerr := False;
        //Inc(cerr);
        Continue;
      end;
      mem.Position := 0;


      png := TPNGObject.Create;
      try
        png.LoadFromStream(mem);
        mem.Clear;


        Synchronize(step3);
        //bmp.SaveToFile('temp.bmp');
        try
          //cap:=ocrbmp(bmp);
          sendocr := png;
          Synchronize(ocr);
          except
            on EIdHTTPProtocolException do
            begin
              logstr := Exception(exceptobject).Message;
              noerr  := False;
              Synchronize(addlog);
              // Synchronize(hintmsg);
            end
            else
            begin
              logstr := 'ocr error ' + Exception(exceptobject).Message;
              Synchronize(addlog);
              Synchronize(hintmsg);
              exit; //если много ошибок
            end;
          end;
      finally
        png.Free;
      end;
    until noerr;
  finally
    mem.Free;
    Text.Free;
  end;
end;

procedure work.Execute;
var
  img:     string;
  s:       string; //всякий временный хлам
  mem:     TMemoryStream;
  Text:    TStringList;
  png:     TPNGObject;
  // bmp:TBitmap;
  httperr: boolean;
  noerr:   boolean; //ошибок нет, картинка распознана
  cerr:    integer; //кол-во ошибок
const
  fimg  = '<img width=95 height=60 border=0 src="';
  // ferr='<center><p style="color: red">';
  ferr  = '<b style="color: red;">';
  ferr1 = '<p style="color: red">';
begin
  queue.perent := self;

  http := TIdHTTP.Create(nil);
  IdCookieManager1 := TIdCookieManager.Create(nil);


  try
    http := initHttp(http, IdCookieManager1);
    stop := False;
    Synchronize(blok);
    Synchronize(login);
    Text := TStringList.Create;
    mem  := TMemoryStream.Create;

    while (queue.hasNext) and not stop do
    begin

      try

        Synchronize(newload);
        queue.furl := url;
        if url = '' then
          break;

        Text.Clear;

        logstr := 'Открываем ' + url;
        Synchronize(addlog);

        openUrl(url,http,mem);

        noerr := True;

        repeat
          mem.Position := 0;
          Text.LoadFromStream(mem);

          {$IF DEFINED(debughttp)}
          text.SaveToFile('text.html');
          {$IFEND}

          // img:=StrBetween(text.Text,fimg,'"></td></tr>');

          img := StrBetween(Text.Text, fimg, '"'); //ищим картинку
          if img <> '' then
          begin
            img := 'http://' + StrBetween(url, 'http://', '/') + img;
          end
          else
          begin  //картинку не нашли
            img := StrBetween(UTF8Decode(Text.Text), ferr, '<');  //ищим ошибку
            if img <> '' then
              //ошибка найдена. в противном случаи пытаемся запросить файл без картинки
            begin
              noerr  := False;
              logstr := 'Ошибка: ' + img + ' ' + url;
              Synchronize(addlog);
              Synchronize(hintmsg);
              Synchronize(delLB);
              break;
            end;
          end;

          getUrlInfo(Text.Text,queue);

          mem.Clear;

          cookie := http.Response.RawHeaders.Values['Set-Cookie'];  //ищем печеньки
          if length(cookie) <> 0 then
          begin
            // p2:=pos(';',cookie);
            cookie := copy(cookie, 0, pos(';', cookie) - 1);
            Synchronize(upcookie); //ставим печеньки
          end;

          cerr := 0;

          if img = '' then
            Synchronize(step3)
          else
            GetImageAndOcr(img);

          repeat
            httperr := True;
            //посылаем запрос на файл
            noerr   := False;
            //http.Request.Referer:=url;

            try

            s := getBigUrl(Text.Text);
            if s <> '' then
            begin //урл с файлом на 1 Гиг
              url := s;
              //нужно выдернуть имя файла
              if not queue.download(url) then exit;
            end else
            begin  //обычный урл
              Text.Clear;
              Text.Add('submit=1');
              Text.Add('code=' + cap);
              Text.Add('x=0');
              Text.Add('y=0');
              http.Post(url, Text, mem);
              
              {$IF DEFINED(debughttp)}
              debugtxt.Add('POST: '+url);
              debugtxt.AddStrings(http.Request.RawHeaders);
              debugtxt.Add('');
              debugtxt.AddStrings(http.Response.RawHeaders);
              debugtxt.Add('_____________');
              debugtxt.SaveToFile('httplog.txt');
              {$IFEND}
            end;




   {  mem.Position:=0;
     text.LoadFromStream(mem);
     text.SaveToFile('text.html');  }

              //inc(cerr);
            except

              on EIdHTTPProtocolException do
              begin
                if http.Response.ResponseCode = 302 then
                begin
                  logstr := 'Получили прямую ссылку';
                  Synchronize(addlog);
                  noerr := True;
                  try
                    if not queue.download(http.Response.Location) then
                      exit;
                  except
                    logstr := Exception(exceptobject).Message;
                    Synchronize(addlog);
                  end;
                end
                else
                begin
                  logstr := Exception(exceptobject).Message;
                  Synchronize(addlog);
                  httperr := False;
                end;
              end
              else
              begin
                logstr := Exception(exceptobject).Message;
                Synchronize(addlog);
                httperr := False;
                //Inc(cerr);  //отрубил счетчик ошибок
              end;

            end;
          until httperr;

          if not noerr then
          begin   //ищим ошибку
            mem.Position := 0;
            Text.Clear;
            Text.LoadFromStream(mem);
            logstr := trim(StrBetween(UTF8Decode(Text.Text), ferr1, '<'));
            if logstr = '' then
              logstr := trim(StrBetween(UTF8Decode(Text.Text), ferr, '<'));
            if logstr <> 'Неправильное кодовое число' then
            begin
              Synchronize(hintmsg);
              Synchronize(addlog);
              Synchronize(delLB);
              //ошибку поймали и нужно продолжить качать следующий файл
              break; //тогда until noerr наверно не нужен
            end;
            if logstr = '' then  //если глюк на серваке. в принципе это не надо
            begin
              logstr := trim(UTF8Decode(Text.Text));
              if logstr = '' then  logstr := 'Неизвестная ошибка';
              Synchronize(hintmsg);
              Synchronize(addlog);
              exit;
            end;

          end;

          if cerr > 10 then //если много ошибок
          begin
            logstr := 'Много ошибок';
            Synchronize(addlog);
            break;
          end;


        until noerr;

      except
        //рестарт закачки
        on e: EdcRestart do
        begin
          logstr := e.Message;
          Synchronize(addlog);
          Continue;
        end;
      end;

    end;

  finally  //трай от него стоит в самом начале
    if http <> nil then
      http.Free;
    if IdCookieManager1 <> nil then
      IdCookieManager1.Free;
    mem.Free;
    Text.Free;
    Synchronize(unblok);
  end;

end;

procedure work.getUrlInfo(text: string; queue: Tdwqueue);
const   fn    = '<p style="font-size:14px;">Р¤Р°Р№Р» <b title="';  //название файла
        fn1    = '<li>С„Р°Р№Р»: <b title="';  //название файла для аков в 1гиг
        fd    = '<p><i>'; //описание файла
        fs    = '<p>размер <b>';  //размер
        fs1    = '<li>размер: <b>';  //размер для аков в 1гиг
begin
 queue.fname := UTF8Decode(StrBetween(text, fn, '"'));  //ищим имя файла
 if queue.fname = '' then queue.fname := UTF8Decode(StrBetween(text, fn1, '"'));
 queue.fdisc := UTF8Decode(StrBetween(text, fd, '<'));  //ищим описание
 queue.fsize := trim(StrBetween(UTF8Decode(text), fs, 'Kb</b>')); //ищим размер
 if queue.fsize = '' then queue.fsize := trim(StrBetween(UTF8Decode(text), fs1, '</b>')); //ищим размер
end;

function work.getBigUrl(text: string): string;  //закачка с ссылок 1Гиг
const  fa = '<p align="center"><a href="';
var
  url: string;
begin
  Result := trim(StrBetween(UTF8Decode(text), fa, '"'));
end;

procedure work.hintmsg;
begin
  queue.logstr := logstr;
  queue.hintmsg(self);
end;

procedure work.login;
var
  post: TStringList;
  email, pwd, url: string;
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocket;
  mem:     TMemoryStream;
  text:    TStringList;
begin
  if not queue.hasNext then
    exit;
  if not queue.anonym then
    exit;

  _https := TIdHTTP.Create(nil);
  post   := TStringList.Create;
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocket.Create(nil);
  _https.IOHandler := IdSSLIOHandlerSocket;
  IdSSLIOHandlerSocket.SSLOptions.Mode := sslmUnassigned;
  IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv3;

  mem := TMemoryStream.Create;
  text := TStringList.Create;
  
  try

    IdCookieManager1.CookieCollection.Clear;
    _https.CookieManager := http.CookieManager;
    _https.Request := http.Request;

    email := queue.login;
    pwd   := queue.pwd;


    post.Add('email=' + email);
    post.Add('password=' + pwd);
    post.Add('action=doauth');
    post.Add('x=0');
    post.Add('y=0');

    url := 'https://id.cod.ru/';

    _https.Get(url);  //грузим главную страницу
    _https.Post(url, post, mem);

    {$IF DEFINED(debughttp)}
    debugtxt.Add('POST: '+url);
    debugtxt.AddStrings(_https.Request.RawHeaders);
    debugtxt.Add('');
    debugtxt.AddStrings(_https.Response.RawHeaders);
    debugtxt.Add('_____________');
    debugtxt.SaveToFile('httplog.txt');
    {$IFEND}


    mem.Position := 0;
    text.LoadFromStream(mem);
    //text.SaveToFile('login.html');

  finally
    post.Free;
    text.Free;
    mem.free;
    _https.Free;
    IdSSLIOHandlerSocket.Free;
  end;
end;

procedure work.newload;
begin
  url := queue.get_link;
end;

procedure work.ocr;
begin
  cap := ocrbmp(sendocr);
{Form2.JvImage1.Picture.Assign(sendocr);
Form2.MaskEdit1.Text:=cap;
Form2.ShowModal;   }

end;

procedure work.openUrl(url:string; http: TIdHTTP; mem: TMemoryStream);
var cerr: Integer;
    noerr: boolean;
begin
  //LBlist.Items.Delete(0);
  mem.Clear;
  mem.Position := 0;
  //Text.Clear;
  // JvInstallLabel1.SetStyle(0,);

  cerr  := 0;  //грузим страницу в память
  noerr := True;
  repeat
    noerr := True;
    Synchronize(step1);
    try
      http.Get(url, mem);
      {$IF DEFINED(debughttp)}
      debugtxt.Add('GET: '+url);
      debugtxt.AddStrings(http.Request.RawHeaders);
      debugtxt.Add('');
      debugtxt.AddStrings(http.Response.RawHeaders);
      debugtxt.Add('_____________');
      debugtxt.SaveToFile('httplog.txt');
      {$IFEND}
      except
        on EIdHTTPProtocolException do
          begin
            if http.Response.ResponseCode = 302 then
              begin
                logstr := 'Редирект на '+http.Response.Location;
                url:=http.Response.Location;
                Synchronize(addlog);
                noerr := False;
              end;
        end
        else
        begin
           noerr := False;
           Inc(cerr);
           if cerr > 10 then
           begin
             logstr := Exception(exceptobject).Message;
             Synchronize(addlog);
             raise Exception.Create('openUrl error');
             //exit; //если много ошибок
          end;
          end;


        end;
      until noerr;

end;

procedure work.step1;
begin
  queue.step1(self);
end;

procedure work.step2;
begin
  queue.step2(self);
end;

procedure work.step3;
begin
  queue.step3(self);
end;

procedure work.step4;
begin
  queue.step4(self);
end;

procedure work.step5;
begin
  queue.step5(self);
end;

procedure work.stopme;
begin

end;

procedure work.unblok;
begin
  queue.Close(self);
end;

procedure work.upcookie;
begin
  IdCookieManager1.AddCookie(cookie, 'data.cod.ru');
  IdCookieManager1.CookieCollection.Items[IdCookieManager1.CookieCollection.Count -
    1].Expires := IdCookieManager1.CookieCollection.Items[0].Expires;
  IdCookieManager1.CookieCollection.Items[IdCookieManager1.CookieCollection.Count -
    1].Path    := IdCookieManager1.CookieCollection.Items[0].Path;
end;



end.
