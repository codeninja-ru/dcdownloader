unit code_filter;

//�������

interface

uses Math, Classes, Contnrs, SysUtils, Graphics, JclGraphics, JvImageList,
  Types, JclGraphUtils, pngimage;

const
  ninput  = 100; //����� ������� ��������
  noutput = 10;  //����� ��������
  ncount  = 10;  //����� ����� �������
  imgsize = 50;  //������ ��������


function how_color(c: Tcolor32): integer; //���������� ����
function test_color(t: integer; c: Tcolor32): boolean;
function not_main(c: Tcolor32): boolean; //���� �� �������� ����
function ocrbmp(b: TPNGObject): string;


implementation

uses neuralOCR;

type
  sortarray = array[1..5] of integer;

var
  ner1: NOCR;
  idx:  integer;

procedure sort(var a, an: sortarray);
const
  l = 1;
var
  min: integer; { ����� ������������ �������� � �����
                  ������� �� i �� ������� ������� ������� }
  j:   integer; { ����� ��������, ������������� � ����������� }
  buf: integer; { �����, ������������ ��� ������ ��������� ������� }
  i:   integer;
begin
  for i := l to idx - 1 do
  begin
    { ����� ������������ �������� � ����� ������� �� �[1] �� a[SIZE]}
    min := i;
    for j := i + l to idx do
      if a[j] < a[min] then
        min := j;

    { �������� ������� a [min] � a[i] }
    buf     := an[i];
    an[i]   := an[min];
    an[min] := buf;
    buf     := a[i];
    a[i]    := a[min];
    a[min]  := buf;

  end;
end;

function ocrbmp(b: TPNGObject): string;
var
  b1:    TBitmap;
  x, y, f, l, fy, ly, i, s, sly, sfy: integer;
  rez1:  string;
  a, an: sortarray;
  //    p:PColor32Array;
  c:     Tcolor;
begin
  idx := 0;

  for i := 1 to 5 do
  begin

    f  := b.Width - 1;
    fy := b.Height - 1;
    ly := 0;
    l  := 0;


    for x := 0 to b.Width - 1 do    //���� ���� ��������� �����
    begin
      s   := 0;  //������� �������� �����
      sly := ly; //������� ��� �������� �����
      sfy := fy;
      for y := 0 to b.Height - 1 do
      begin
        {p:=b.ScanLine[y];
        c:=p[x];  }
        c := b.Pixels[x, y];
        if test_color(i, c) then
        begin
          Inc(s);

          if sly < y then
            sly := y;
          if sfy > y then
            sfy := y;

          if s > 3 then
          begin
            l := x;
            if f > x then  //�������� ������ ��������� �����
            begin
              f := x;
              break;
            end;
          end;
        end;

      end;
      if s > 3 then
      begin
        ly := sly;
        fy := sfy;
      end;
    end;


    b1 := TBitmap.Create;
    if l < f then
      l := b.Width - 1;
    if ly < fy then
      ly := b.Height - 1;
    try
      b1.Width  := l - f;
      b1.Height := ly - fy;
    except
      //b.SaveToFile('temp.bmp');

    end;
    if (fy <> ly) or (f <> l) then
      for y := fy to ly do
      begin
        for x := f to l do
        begin
          if test_color(i, b.Pixels[x, y]) then
            b1.Canvas.Pixels[x - f, y - fy] := clBlack
          else
          if not_main(b.Pixels[x, y]) then
            b1.Canvas.Pixels[x - f, y - fy] := clBlack;
        end;
      end;
    // b1.SaveToFile('temp'+inttostr(i)+'.bmp');
    if (fy <> ly) or (f <> l) then
    begin
      Inc(idx);
      rez1    := ner1.recognition(b1);
      a[idx]  := f;
      an[idx] := StrToInt(rez1);
    end;


    a[i] := f;
    try
      if rez1 <> '' then
        an[i] := StrToInt(rez1)
      else
        an[i] := 0; //�������� ����  is not a valid integer value
    except
      an[i] := 0;
    end;

    b1.Free;

  end;

  try
    sort(a, an);
    rez1 := '';
    for i := 1 to idx do
      rez1 := rez1 + IntToStr(an[i]);
    Result := trim(rez1);
  except
    Result := '';
  end;
  //StackInfoList.Free;
end;

function maxcolor(r, g, b: byte): integer; //������������ ����
var
  rez: integer;
begin
  rez := 0;
  if (r > g) and (r > b) then
    rez := 1
  else
  if (g > r) and (g > b) then
    rez := 2
  else
  if (b > r) and (b > g) then
    rez := 3;
  Result := rez;
end;

function mincolor(r, g, b: byte): integer; //����������� ����
var
  rez: integer;
begin
  rez := 0;
  if (r < g) and (r > b) then
    rez := 1
  else
  if (g < r) and (g < b) then
    rez := 2
  else
  if (b < r) and (b < g) then
    rez := 3;
  Result := rez;
end;

function is_2max(c1, c2, c3: byte): boolean; //��������� �� ������ ���� ������ �� ��������
begin
  Result := ((c1 > c2) and (c1 < c3)) or ((c1 > c3) and (c1 < c2));
end;

{function is_znach(c1,c2,c3:byte):boolean; //������ ���� ��� ������������ ��� ������ �� �������
begin
result:=not_equal(c1,c2,c3) and (maxcolor(c1,c2,c3)=1) or is_2max(c1,c2,c3);
end;    }

//R G B

function not_equal(c1, c2, c3: byte): boolean; //�� ���������� ������ ��������
begin
  Result := (c1 <> c2) and (c1 <> c3) and (c2 <> c3);
end;

function is_siniy(c: Tcolor32): boolean;   //�����
var
  r, g, b: byte;
begin
  r      := GetColorRed(c);
  g      := GetColorGreen(c);
  b      := GetColorBlue(c);
  Result := ((r = g) and (b > r));
end;

function is_zeleniy(c: Tcolor32): boolean;   //����� �������
var
  r, g, b: byte;
begin
  r      := GetColorRed(c);
  g      := GetColorGreen(c);
  b      := GetColorBlue(c);
  Result := ((g = b) and (g > r));
end;

function is_siren(c: Tcolor32): boolean;   //���������
var
  r, g, b: byte;
begin
  r      := GetColorRed(c);
  g      := GetColorGreen(c);
  b      := GetColorBlue(c);
  Result := ((r = b) and (g < r));
end;

function is_krasn(c: Tcolor32): boolean;   //�������
var
  r, g, b: byte;
begin
  r      := GetColorRed(c);
  g      := GetColorGreen(c);
  b      := GetColorBlue(c);
  Result := ((g = b) and (r > g));
end;

function is_salat(c: Tcolor32): boolean;   //�������������
var
  r, g, b: byte;
begin
  r      := GetColorRed(c);
  g      := GetColorGreen(c);
  b      := GetColorBlue(c);
  Result := ((r = b) and (g > r));
end;

function is_bel(c: Tcolor32): boolean;   //�������������
var
  r, g, b: byte;
begin
  r      := GetColorRed(c);
  g      := GetColorGreen(c);
  b      := GetColorBlue(c);
{r:=RedComponent(c);
g:=GreenComponent(c);
b:=BlueComponent(c);  }
  Result := (r = b) and (b = g);
end;

function how_color(c: Tcolor32): integer; //���������� ����
begin
  if is_siniy(c) then
    Result := 1
  else if is_zeleniy(c) then
    Result := 2
  else
  if is_siren(c) then
    Result := 3
  else if is_krasn(c) then
    Result := 4
  else
  if is_salat(c) then
    Result := 5
  else if is_bel(c) then
    Result := 6
  else
    Result := 0;
end;

function test_color(t: integer; c: Tcolor32): boolean; //�������� �� ���������� ����
begin
  case t of
    1: Result := is_siniy(c);
    2: Result := is_zeleniy(c);
    3: Result := is_siren(c);
    4: Result := is_krasn(c);
    5: Result := is_salat(c);
    else
      Result := False;
  end;

end;


function not_main(c: Tcolor32): boolean; //���� �� �������� ����
var
  r, g, b: byte;
begin
  r := GetColorRed(c);
  g := GetColorGreen(c);
  b := GetColorBlue(c);
  //����������
  if is_salat(c) and (g < 130) then
    Result := True
  else
  if is_siniy(c) and (g < 100) then
    Result := True
  else
    Result := not_equal(r, g, b);
end;


initialization
  ner1 := NOCR.Create(ExtractFileDir(ParamStr(0)) + '\dv_cod.net');
  ner1.init(imgsize, ninput, noutput, ncount);


finalization
  ner1.Free;

end.
