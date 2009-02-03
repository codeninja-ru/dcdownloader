unit shutdown;

interface

uses Windows, SysUtils;

procedure ShutDown_pk;

implementation

function GetWinVersion: string;
var
  VersionInfo: TOSVersionInfo;
  OSName:      string;
begin
  // устанавливаем размер записи
  VersionInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
  if Windows.GetVersionEx(VersionInfo) then
  begin
    with VersionInfo do
    begin
      case dwPlatformId of
        VER_PLATFORM_WIN32s: OSName   := 'Win32s';
        VER_PLATFORM_WIN32_WINDOWS: OSName := 'Windows 95';
        VER_PLATFORM_WIN32_NT: OSName := 'Windows NT';
      end; // case dwPlatformId
      Result := OSName + ' Version ' + IntToStr(dwMajorVersion) +
        '.' + IntToStr(dwMinorVersion) + #13#10' (Build ' + IntToStr(
        dwBuildNumber) + ': ' + szCSDVersion + ')';
    end; // with VersionInfo
  end // if GetVersionEx
  else
    Result := '';
end;

procedure ShutDown_pk;
const
  SE_SHUTDOWN_NAME = 'SeShutdownPrivilege'; // Borland forgot this declaration
var
  hToken: THandle;
  tkp:    TTokenPrivileges;
  tkpo:   TTokenPrivileges;
  zero:   DWORD;
begin
  if Pos('Windows NT', GetWinVersion) = 1 then // we've got to do a whole buch of things
  begin
    zero := 0;
    if not OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or
      TOKEN_QUERY, hToken) then
    begin
      MessageBox(0, 'Exit Error', 'OpenProcessToken() Failed', MB_OK);
      Exit;
    end;
    // if not OpenProcessToken( GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken)

    if not OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or
      TOKEN_QUERY, hToken) then
    begin
      MessageBox(0, 'Exit Error', 'OpenProcessToken() Failed', MB_OK);
      Exit;
    end;
    // if not OpenProcessToken( GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken)

    // SE_SHUTDOWN_NAME
    if not LookupPrivilegeValue(nil, 'SeShutdownPrivilege',
      tkp.Privileges[0].Luid) then
    begin
      MessageBox(0, 'Exit Error', 'LookupPrivilegeValue() Failed', MB_OK);
      Exit;
    end; // if not LookupPrivilegeValue( nil, 'SeShutdownPrivilege' , tkp.Privileges[0].Luid )

    tkp.PrivilegeCount := 1;
    tkp.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;

    AdjustTokenPrivileges(hToken, False, tkp, SizeOf(TTokenPrivileges), tkpo, zero);
    if boolean(GetLastError()) then
    begin
      MessageBox(0, 'Exit Error', 'AdjustTokenPrivileges() Failed', MB_OK);
      Exit;
    end // if Boolean( GetLastError() )
    else
      ExitWindowsEx(EWX_FORCE or EWX_SHUTDOWN, 0);

  end // if OSVersion = 'Windows NT'
  else
  begin // just shut the machine down
    ExitWindowsEx(EWX_FORCE or EWX_SHUTDOWN, 0);
  end; // else
end;



end.
