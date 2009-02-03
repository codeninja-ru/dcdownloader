library wget;
//program wget;

uses windows;

{APPTYPE CONSOLE}

//[function ExecuteWait]   //функция запускает приложение с параметрами и ждет его завершения (позаимствовано из KOL http://kolmck.net/)
function ExecuteWait( const AppPath, CmdLine, DfltDirectory: String;
         Show: DWORD; TimeOut: DWORD; ProcID: PDWORD ): Boolean;
var Flags: DWORD;
    Startup: TStartupInfo;
    ProcInf: TProcessInformation;
    DfltDir: PChar;
    App: String;
begin
  Result := FALSE;
  Flags := CREATE_NEW_CONSOLE;
  if Show = SW_HIDE then
    Flags := Flags or {$IFDEF F_P}$08000000{$ELSE}CREATE_NO_WINDOW{$ENDIF};
  FillChar( Startup, SizeOf( Startup ), 0 );
  Startup.cb := Sizeof( Startup );
  Startup.wShowWindow := Show;
  Startup.dwFlags := STARTF_USESHOWWINDOW;
  if ProcID <> nil then
    ProcID^ := 0;
  DfltDir := nil;
  if DfltDirectory <> '' then
    DfltDir := PChar( DfltDirectory );
  if ProcID <> nil then
    ProcID^ := 0;
  App := AppPath;
  if (pos( ' ', App ) > 0) and (pos( '"', App ) <= 0) then
    App := '"' + App + '"';
  if (App <> '') and (CmdLine <> '') then
    App := App + ' ';
  if CreateProcess( nil, PChar( App + CmdLine ), nil,
     nil, FALSE, Flags, nil, DfltDir, Startup,
     ProcInf ) then
  begin
    if WaitForSingleObject( ProcInf.hProcess, TimeOut ) = WAIT_OBJECT_0 then
    begin
      CloseHandle( ProcInf.hProcess );
      Result := TRUE;
    end
      else
    begin
      if ProcID <> nil then
        ProcID^ := ProcInf.hProcess;
    end;
    CloseHandle( ProcInf.hThread );
  end;
end;


function plg_downloader_name:pchar; export; stdcall; //возвращает ссылку на строку с именем плагина
begin
result:='GNU Wget';
end;

function GetStartDir : String;  //путь к папке откуда нас запустили. взято из KOL
var Buffer:array[0..260] of Char;
    I : Integer;
begin
  I := GetModuleFileName( 0, Buffer, Sizeof( Buffer ) );
  for I := I downto 0 do
    if Buffer[ I ] = '\' then
    begin
      Buffer[ I + 1 ] := #0;
      break;
    end;
  Result := Buffer;
end;

function download(url,dir,referer,cookie:pchar):boolean export; stdcall; //собственно закачка url - ссылка dir - папка куда складывать файло  referer - откуда пришли (можно не юзать)  cookie - печеньки (тоже можно не юзать)
var wget_dir:pchar; // папка где находится wget
begin
wget_dir:=pchar(GetStartDir+'wget\'); 
result:=ExecuteWait(wget_dir+'wget.exe',url,dir,SW_SHOW,INFINITE,nil);
end;

exports plg_downloader_name,download;


begin

end.
