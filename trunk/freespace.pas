unit freespace;

interface

uses Windows, SysUtils;

{function GetDiskFreeSpaceEx(lpDirectoryName: PAnsiChar;
var lpFreeBytesAvailableToCaller : Integer;
var lpTotalNumberOfBytes: Integer;
var lpTotalNumberOfFreeBytes: Integer) : bool;
stdcall;
external kernel32
name 'GetDiskFreeSpaceExA';  }

function getfreespace(d: string): double;

procedure GetDiskSizeAvail(TheDrive: PChar; var TotalBytes: double;
  var TotalFree: double);

implementation

function getfreespace(d: string): double;
var
  a, b: double;
begin
  GetDiskSizeAvail(PChar(d), a, b);
  Result := b;
end;

procedure GetDiskSizeAvail(TheDrive: PChar; var TotalBytes: double;
  var TotalFree: double);
var
  AvailToCall: int64;
  TheSize:     int64;
  FreeAvail:   pLargeInteger;

begin
  GetDiskFreeSpaceEx(TheDrive, AvailToCall, TheSize, FreeAvail);
  {$IFOPT Q+}
  {$DEFINE TURNOVERFLOWON}
  {$Q-}
  {$ENDIF}
  if TheSize >= 0 then
    TotalBytes := TheSize
  else
  if TheSize = -1 then
  begin
    TotalBytes := $7FFFFFFF;
    TotalBytes := TotalBytes * 2;
    TotalBytes := TotalBytes + 1;
  end
  else
  begin
    TotalBytes := $7FFFFFFF;
    TotalBytes := TotalBytes + abs($7FFFFFFF - TheSize);
  end;

  if AvailToCall >= 0 then
    TotalFree := AvailToCall
  else
  if AvailToCall = -1 then
  begin
    TotalFree := $7FFFFFFF;
    TotalFree := TotalFree * 2;
    TotalFree := TotalFree + 1;
  end
  else
  begin
    TotalFree := $7FFFFFFF;
    TotalFree := TotalFree + abs($7FFFFFFF - AvailToCall);
  end;
end;



end.
