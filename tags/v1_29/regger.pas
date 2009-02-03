unit regger;

interface

uses
  Classes, Math, SysUtils, pngimage, Dialogs, ActnList, IdHTTP;

type
  reger = class(TThread)
  private
    Count, idx: integer;
    state, mail, pwd: string;
    { Private declarations }
  protected
    procedure Execute; override;
    procedure getcount;
    procedure setcount;
    procedure setstate;
    procedure addacc;
    procedure unblock;
  public
    http:  TIdHTTP;
    me:    ^pointer;
    meact: Taction;
  end;

implementation

uses Unit1, strings, code_filter;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure reger.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ reger }

function randstr: string;
var
  i, c: integer;
begin
  Randomize;
  c      := RandomRange(5, 10);
  Result := '';
  for i := 0 to c do
  begin
    Result := Result + char(RandomRange(97, 122));
  end;
end;


procedure reger.addacc;
begin
  with FMain do
  begin
    JvCsvDataSet1.Append;
    JvCsvDataSet1.FieldValues['EMAIL'] := mail + '@spamavert.com';
    JvCsvDataSet1.FieldValues['PWD']   := pwd;
    JvCsvDataSet1.FieldValues['SIZE']  := 102400000;  //????
    JvCsvDataSet1.FieldValues['LASTACCESS'] := NOW;
    JvCsvDataSet1.Post;
    JvCsvDataSet1.Flush;
  end;
end;

procedure reger.Execute;
var
  mem:  TMemoryStream;
  Text: TStringList;
  png:  TPNGObject;
  cap:  string;
  ok:   boolean;
  temp, url: string;
  limit, i: integer;
begin
  with FMain do
  begin
    http := TIdHTTP.Create(nil);
    try
      http.AllowCookies      := True;
      http.Request.UserAgent :=
        'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.6) Gecko/20050317 Firefox/1.0.2';
      http.Request.Accept    :=
        'text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5';
      http.Request.AcceptLanguage := 'ru,en-gb;q=0.7,en;q=0.3';
      http.Request.AcceptEncoding := 'deflate';
      http.Request.AcceptCharSet := 'windows-1251,utf-8;q=0.7,*;q=0.7';
      http.Request.ContentType := '';
      http.Request.Connection := 'keep-alive';
      http.CookieManager     := IdCookieManager1;


      Synchronize(getcount);
      mem  := TMemoryStream.Create;
      Text := TStringList.Create;
      for i := 1 to Count do
      begin
        idx := i;
        Synchronize(setcount);
        repeat
          //грузим страницу
          state := 'Грузим страницу регистрации';
          Synchronize(setstate);

          ok := False;
          https.Get('https://id.cod.ru/registration/', mem);
          mem.Position := 0;
{text.Clear;
text.LoadFromStream(mem);}

          state := 'Грузим картинку';
          Synchronize(setstate);
          https.Get('https://id.cod.ru/regpicture/', mem);  //грузим картинку
          state := 'Распознаем';
          Synchronize(setstate);
          mem.Position := 0;
          png := TPNGObject.Create;
          png.LoadFromStream(mem);
          cap := ocrbmp(png);
          //png.SaveToFile('temp.png');
          png.Free;
          mem.Clear;
 {text.Clear;
 text.LoadFromStream(mem); }

          state := 'Запрос на регистрацию';
          Synchronize(setstate);
          mail := randstr;
          Text.Clear;
          Text.Add('action=registration');
          Text.Add('email=' + mail + '@spamavert.com');
          Text.Add('emailCheck=' + mail + '@spamavert.com');
          Text.Add('nickname=' + randstr);
          Text.Add('safeCode=' + cap);
          Text.Add('city=Владивосток');
          Text.Add('Day=%E2%80%94');
          Text.Add('bMon=%E2%80%94');
          Text.Add('bYear=%E2%80%94');
          Text.Add('fio=');
          Text.Add('sex=%E2%80%94');
          Text.Add('phone=');
          Text.Add('about=');
          Text.Add('address=');
          Text.Add('x=89');
          Text.Add('y=18');
          //<tr><td bgcolor="#CC0000" style="color:#FFF; font-size:16px; font-weight:bold;" align=center>
          try
            https.Post('https://id.cod.ru/registration/', Text, mem); //http://spamavert.org/
            mem.Position := 0;
            Text.LoadFromStream(mem);
            temp := StrBetween(Text.Text,
              '<tr><td align=center bgcolor="#006633" style="color:#FFF; font-size:16px; font-weight:bold;" align=center>',
              '</td></tr>');
            temp := copy(UTF8Decode(temp), 1, 26);
            mem.Clear;
            if temp = 'Регистрация прошла успешно' then
            begin
              ok    := True;
              limit := 0;
              state := 'Ждем письмо';
              Synchronize(setstate);
              repeat  //лезим за кодом на сервак
                sleep(3000);
                Inc(limit);

                http.Get('http://spamavert.org/mail.php?alias=' + mail, mem);
                mem.Position := 0;
                Text.Clear;
                Text.LoadFromStream(mem);
                mem.Clear;
                temp := StrBetween(UTF8Decode(Text.Text), '<h1>', '</h1>');
              until (temp = '') or (limit > 10);
              if limit > 10 then
              begin
                ShowMessage('Ошибка');
                exit;
              end;
              //ищим пароль
              temp := UTF8Decode(Text.Text);
              pwd  := StrBetween(temp, 'Ваш пароль: ', #$D);
              url  := 'https://' + StrBetween(temp, 'https://', '" rel="nofollow">');

              //активация
              state := 'Активация';
              Synchronize(setstate);
              https.Get(url);

              //логин на акк
              if FMain.JvCheckBox2.Checked then
              begin
                state := 'Авторизация';
                Synchronize(setstate);
                Text.Clear;
                Text.Add('action=doauth');
                Text.Add('email=' + mail + '@spamavert.com');
                Text.Add('password=' + pwd);
                try
                  https.Post('https://id.cod.ru/', Text, mem);
                except

                end;
              end;
              Synchronize(addacc);
            end;
            // mem.SaveToFile('temp.html');
          except
            ShowMessage('Ошибка');
            exit;
          end;

        until ok;

      end;
      state := 'Закончили';
      Synchronize(setstate);
      Text.Free;
      mem.Free;
      Synchronize(unblock);
      me^ := pointer(nil);

    finally
      http.Free;
    end;

  end;
end;



procedure reger.getcount;
begin
  Count := FMain.JvSpinEdit1.AsInteger;
end;

procedure reger.setcount;
begin
  FMain.JvStatusBar1.Panels[0].Text := IntToStr(Count) + '/' + IntToStr(idx);
  ;
end;

procedure reger.setstate;
begin
  FMain.JvStatusBar1.Panels[1].Text := state;
end;

procedure reger.unblock;
begin
  if meact <> nil then
    meact.Enabled := True;
end;

end.
