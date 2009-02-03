unit strings;
interface
uses classes,sysutils;
function findstr(substr,str:string; n:integer=1):integer;  //ѕоиск строки
function findstri(substr,str:string; n:integer=1):integer;  //–егистро независимый поиск строки
function str_replace(substr,rstr,str:string):string;  //ищит и замен€ет подстроку в строке
function stri_replace(substr,rstr,str:string):string; //–егистронезависима€ замена
function delstr(substr,str:string):string;   //удал€ем строку в строке
function delstri(substr,str:string):string; //тоже без учета регистра
function Trim(const S:string):string; //обрезает пробелы
function explode(raz,str:string; var mas:array of string):integer; //разбивает строку на подстроки
function unexplode(raz:string; mas:array of string; n:integer=-1):string; //объедин€ет масив в строку
//procedure sortms(var str:array of string; var int:array of integer);
function explodes(raz,str:string; var mas:TstringList):integer; //разбивает строку на подстроки в Tstrings
function TrimRight(const S: string): string;
function TrimLeft(const S: string): string;
function findstr_up(substr,str:string; n:integer=1):integer; //поиск в обратную сторону
function findstri_up(substr,str:string; n:integer=1):integer;
function StrBetween(const S: String; const Start, Stop: String): String; //вытаскиваем строку "между сток"
{‘ункции  TrimRight,TrimLeft,Trim выдраны из KOL}

implementation
function findstr(substr,str:string; n:integer=1):integer;
var i,j,f:integer;
 begin
  if (abs(length(str)-n))<length(substr) then
   begin
    findstr:=0;
    exit;
   end;
  if n<1 then n:=1; f:=0;
  for i:=n to length(str) do
   begin
    if str[i]=substr[1] then
    for j:=1 to length(substr) do
     begin
      if str[i+j-1]=substr[j] then f:=i else
       begin
        f:=0;
        break;
       end;
     end;
    if f<>0 then
     begin
      findstr:=f;
      exit;
     end;
   end;
 findstr:=f;
 end;

function findstri(substr,str:string; n:integer=1):integer;
var i,j,f:integer;
 begin
  if (abs(length(str)-n))<length(substr) then
   begin
    findstri:=0;
    exit;
   end;
  if n<1 then n:=1; f:=0;
 // AnsiLowerCase(str);
  //AnsiLowerCase(substr);
  for i:=n to length(str) do
   begin
    if AnsiLowerCase(str[i])=AnsiLowerCase(substr[1]) then
    for j:=1 to length(substr) do
     begin
      if AnsiLowerCase(str[i+j-1])=AnsiLowerCase(substr[j]) then f:=i else
       begin
        f:=0;
        break;
       end;
     end;
    if f<>0 then
     begin
      findstri:=f;
      exit;
     end;
   end;
 findstri:=f;
 end;

function findstr_up(substr,str:string; n:integer=1):integer;
var i,j,f,k:integer;
 begin
  if n<1 then n:=1; f:=0;
  for i:=n downto 1 do
   begin
    if str[i]=substr[length(substr)] then
     begin
      f:=i;
      for j:=length(substr)-1 downto 1 do
       begin
        k:=i-j;
        if k>1 then
         begin
          if str[k]<>substr[j] then
           begin
            f:=0;
            break;
           end;
         end else f:=0;
       end;
     end;
    if f<>0 then
     begin
      result:=f-length(substr)+1;
      exit;
     end;
   end;
 result:=f;
 end;

function findstri_up(substr,str:string; n:integer=1):integer;
var i,j,f,k:integer;
 begin
  if n<1 then n:=1; f:=0;
  for i:=n downto 1 do
   begin
    if AnsiLowerCase(str[i])=AnsiLowerCase(substr[length(substr)]) then
     begin
      f:=i;
      for j:=length(substr)-1 downto 1 do
       begin
        k:=i-j;
        if k>1 then
         begin
          if AnsiLowerCase(str[k])<>AnsiLowerCase(substr[j]) then
           begin
            f:=0;
            break;
           end;
         end else f:=0;
       end;
     end;
    if f<>0 then
     begin
      result:=f-length(substr)+1;
      exit;
     end;
   end;
 result:=f;
 end;



function str_replace(substr,rstr,str:string):string;
var i,old:integer;
    s:string;
 begin
  s:='';
  i:=1;
  old:=1;
  while true do
   begin
    i:=findstr(substr,str,i);
    if i>1 then s:=s+copy(str,old,i-old);
    if i=0 then
     begin
      s:=s+copy(str,old,length(str));
      break;
     end;
    old:=i+length(substr);
    if i<>0 then inc(i);
    s:=s+rstr;
   end;
  str_replace:=s;
 end;

function stri_replace(substr,rstr,str:string):string;
var i,old:integer;
    s:string;
 begin
  s:='';
  i:=1;
  old:=1;
  while true do
   begin
    i:=findstri(substr,str,i);
    if i>1 then s:=s+copy(str,old,i-old);
    if i=0 then
     begin
      s:=s+copy(str,old,length(str));
      break;
     end;
    old:=i+length(substr);
    if i<>0 then inc(i);
    s:=s+rstr;
   end;
  stri_replace:=s;
 end;

function delstr(substr,str:string):string;
 begin
  delstr:=str_replace(substr,'',str);
 end;

function delstri(substr,str:string):string;
 begin
  delstri:=stri_replace(substr,'',str);
 end;
function TrimLeft(const S: string): string;
var
  I, L: Integer;
begin
  L := Length(S);
  I := 1;
  while (I <= L) and (S[I] <= ' ') do Inc(I);
  Result := Copy(S, I, Maxint);
end;
function TrimRight(const S: string): string;
var
  I: Integer;
begin
  I := Length(S);
  while (I > 0) and (S[I] <= ' ') do Dec(I);
  Result := Copy(S, 1, I);
end;
function Trim(const S:string):string;
 begin
  Result := TrimLeft( TrimRight( S ) );
 end;

function explode(raz,str:string; var mas:array of string):integer;
var i,j,old:integer;
 begin
  j:=0; old:=1; i:=1;
  if length(str)<i then
   begin
    result:=0;
    exit;
   end;
  while true do
   begin
    i:=findstr(raz,str,i);
    if high(mas)<j then break;
    if i<>0 then mas[j]:=copy(str,old,i-old) else
     begin
      mas[j]:=copy(str,old,length(str));
      break;
     end;
    i:=i+length(raz);
    old:=i;
    inc(j); inc(i);
   end;
  explode:=j;
 end;

function explodes(raz,str:string; var mas:TstringList):integer;
var i,j,old:integer;
 begin
  j:=0; old:=1; i:=1;
  if length(str)<i then exit;
  while true do
   begin
    i:=findstr(raz,str,i);
    if i<>0 then mas.add(copy(str,old,i-old)) else
     begin
      mas.add(copy(str,old,length(str)));
      break;
     end;
    i:=i+length(raz);
    old:=i;
    inc(j); inc(i);
   end;
  result:=j;
 end;

function unexplode(raz:string; mas:array of string; n:integer=-1):string;
var i:integer;
    s:string;
 begin
  if n<0 then n:=high(mas);
  s:=mas[0];
  for i:=1 to n do
   begin
    s:=s+raz+mas[i];
   end;
  unexplode:=s;
 end;

{procedure sortms(var str:array of string; var int:array of integer);
var b:string;
    xb,i,j:integer;
 begin
  for i:=2 to high(str) do begin
    for j:=high(str) downto i do
     if int[j-1]>int[j] then begin
 //application.ProcessMessages;
     b:=str[j-1]; str[j-1]:=str[j]; str[j]:=b;
     xb:=int[j-1]; int[j-1]:=int[j]; int[j]:=xb;
     end;
   end;
 end;  }


function StrBetween(const S: String; const Start, Stop: String): String;
var p1,p2:integer;
begin
 result:='';
 p1:=findstr(start,s);
 if p1=0 then exit;
 p1:=p1+length(start);
 p2:=findstr(Stop,s,p1);
 if p2=0 then p2:=length(s) else p2:=p2;
 result:=copy(s,p1,p2-p1);

end;

end.
