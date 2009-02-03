unit acc_tester;

interface

{DEFINE debughttp}

uses
  Classes {$IFDEF MSWINDOWS} , Windows {$ENDIF}, ActnList, SysUtils, variants, DB;

type
  Tacctest = class(TThread)
  private
    procedure upcookie;
  protected
    email, pwd, cookie: string;
    size: integer;
    list: TStringList;
    procedure Execute; override;
    procedure unblock;
    procedure block;
    procedure gettasklist;
    procedure setresult;
    procedure clearcookie;
  public
    me:    ^pointer;
    meact: Taction;
    all:   boolean;
  end;

implementation

uses strings, Unit1;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure Tacctest.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ Tacctest }

procedure Tacctest.Execute;
var
  i:    integer;
  mem:  TStringStream;
  mem1: TMemoryStream;
  post: TStringList;
  //    p2:integer;
  temp: string;
begin
  with FMain do
  begin
    Synchronize(block);
    list := TStringList.Create;
    Synchronize(gettasklist);  //получаем список "заданий"

    for i := 0 to list.Count - 1 do
    begin     //https://id.cod.ru/auth/
      Synchronize(clearcookie); //очищаем куки
      post  := TStringList.Create;
      email := list.Names[i];
      pwd   := list.Values[email];
      post.Add('email=' + email);
      post.Add('password=' + pwd);
      post.Add('action=doauth');
      post.Add('x=0');
      post.Add('y=0');

      https1.Get('https://id.cod.ru/');  //грузим главную страницу

      mem1 := TMemoryStream.Create;
      try
        https1.Post('https://id.cod.ru/', post, mem1);
   {$IF DEFINED(debughttp)}
    debugtxt.AddStrings(https1.Request.RawHeaders);
    debugtxt.Add('');
    debugtxt.AddStrings(https1.Response.RawHeaders);
    debugtxt.Add('_____________');
    debugtxt.SaveToFile('httplog.txt');
   {$IFEND}
        //mem1.SaveToFile('temp.html');
      except

      end;

  { cookie:=https1.Response.RawHeaders.Values['Set-Cookie'];  //ищем печеньки
   if length(cookie)<>0 then
   begin
    p2:=pos(';',cookie);
    cookie:=copy(cookie,0,p2-1);
    Synchronize(upcookie); //ставим печеньки
   end;  }

      mem1.Free;
      mem := TStringStream.Create('');

      http1.Get('http://dsv.data.cod.ru', mem);
      //ToDo1 нужно будет убрать привязку к конкретному урлу
   {$IF DEFINED(debughttp)}
    debugtxt.AddStrings(https1.Request.RawHeaders);
    debugtxt.Add('');
    debugtxt.AddStrings(https1.Response.RawHeaders);
    debugtxt.Add('_____________');
    debugtxt.SaveToFile('httplog.txt');
   {$IFEND}

      temp := StrBetween(mem.DataString, '(max:&nbsp;', ')');
      post.Clear;
      explodes(' ', temp, post);
      temp := post[0];
      size := StrToInt(temp);
      if post[1] = 'Mb' then
        size := size * 1024000
      else if post[1] = 'Kb' then
        size := size * 1024;
      Synchronize(setresult);

      mem.Free;
      post.Free;
    end;

    list.Free;
    Synchronize(unblock);
  end;
end;

procedure Tacctest.unblock;
begin
  me^ := nil;
  meact.Enabled := True;
end;

procedure Tacctest.block;
begin
  meact.Enabled := False;
end;

procedure Tacctest.gettasklist;
var
  b: TBookmarkStr;
begin
  with FMain do
  begin
    b := JvCsvDataSet1.Bookmark;
    JvCsvDataSet1.First;
    while not JvCsvDataSet1.EOF do
    begin
      if (all) or (JvCsvDataSet1SIZE.Value = -1) then
        list.Add(JvCsvDataSet1EMAIL.AsString + '=' + JvCsvDataSet1PWD.AsString);
      JvCsvDataSet1.Next;
    end;
    JvCsvDataSet1.Bookmark := b;
  end;
end;

procedure Tacctest.setresult;
var
  b: TBookmarkStr;
begin
  with FMain do
  begin
    b := JvCsvDataSet1.Bookmark;
    if JvCsvDataSet1.Locate('EMAIL', VarArrayOf([email]), [loCaseInsensitive]) then
    begin
      JvCsvDataSet1.Edit;
      JvCsvDataSet1.FieldByName('SIZE').AsInteger := size;
      JvCsvDataSet1.Post;
      FMain.JvCsvDataSet1.Flush;
    end;
    JvCsvDataSet1.Bookmark := b;
    JvCsvDataSet1.Flush;
  end;

end;

procedure Tacctest.upcookie;
begin
  with FMain do
  begin
    IdCookieManager3.AddCookie(cookie, 'data.cod.ru');
    // IdCookieManager3.CookieCollection.Items[1].Expires:=IdCookieManager3.CookieCollection.Items[0].Expires;
    //  IdCookieManager3.CookieCollection.Items[1].Path:=IdCookieManager3.CookieCollection.Items[0].Path;
  end;

end;

procedure Tacctest.clearcookie;
begin
  FMain.IdCookieManager3.CookieCollection.Clear;
end;

end.
