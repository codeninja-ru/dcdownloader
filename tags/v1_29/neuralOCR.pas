unit neuralOCR;

interface

uses Windows, Classes, Contnrs, SysUtils, Graphics, JclGraphics, JvImageList,
  FannNetwork, JclGraphUtils;

{const ninput=100; //число входных нейронов
      noutput=10;  //число выходных
      ncount=10; //число строк матрицы
      imgsize=50; //размер картинки  }

{const max=255;  //максимальный размер массива

type TdyArray=array[0..max] of single;
     PdyArray=^TdyArray;
     }

type
  NOCR = class
  private
    fann:      TFannNetwork;
    Fcount_input: integer;
    Fcount_output: integer;
    Fsize_matrix: integer;
    Fpath:     string; //путь к файлу с сетью
    npicsize:  word;   //€чейки матрицы
    npicwidth: word;   //рпзмер стороны €чейки
    inp, outp: array of single;
    procedure Setcount_input(const Value: integer);
    procedure Setcount_output(const Value: integer);
    procedure Setsize_matrix(const Value: integer);
  public
    chlist:  TStringList; //алфавит
    imgsize: integer;     //размер изображени€

    procedure init(imgsize, ninput, noutput, ncount: integer);
    function copress(b: Tbitmap): Tbitmap;
    procedure Save;

    function code2char(code: integer): string;
    function char2code(ch: string): integer;

    function recognition(bmp: Tbitmap; compress: boolean = True): string; //распознование
    procedure train(bmp: Tbitmap; rez: string; compress: boolean = True);
    //тренируем нейро сеть

    property count_input: integer Read Fcount_input Write Setcount_input;
    property count_output: integer Read Fcount_output Write Setcount_output;
    property size_matrix: integer Read Fsize_matrix Write Setsize_matrix;
    constructor Create(path: string);
    destructor Destroy; override;
  end;

//function teach(nero:NOCR; OCR:Tmodel):string; //запускаем цикл обучени€ по базе картинок


implementation

{function teach(nero:NOCR; OCR:Tmodel):string; //запускаем цикл обучени€ по базе картинок
var i,er,count:integer;
    rez:string;
begin
er:=0;
count:=0;
  for i:=0 to OCR.DB.Count-1 do
   begin
    inc(count);
    rez:=nero.recognition(OCR.db.Bitmaps[i]);
    Yield;
    if rez<>OCR.DB.Data[i].name then
     begin
      inc(er);
      nero.train(OCR.db.Bitmaps[i],OCR.DB.Data[i].name);
     end;
   end;
  nero.Save;
  result:=inttostr(count)+'/'+inttostr(er);
end;  }


{NOCR}

function NOCR.copress(b: Tbitmap): Tbitmap;
var
  rec: TRect;
  bmp: TBitmap;
begin
  bmp := TBitmap.Create;
  rec := Rect(0, 0, b.Width - 1, b.Height - 1);
  bmp.Width := imgsize;
  bmp.Height := imgsize;
  bmp.Canvas.CopyMode := cmSrcCopy;
  bmp.Canvas.CopyRect(rect(0, 0, imgsize - 1, imgsize - 1), b.Canvas, rec);
  Result := bmp;
end;

function NOCR.recognition(bmp: Tbitmap; compress: boolean = True): string;
var
  b:   Tbitmap;
  x, y, i, j, t, q: integer;
  // p:PColor32Array;
  max: single;
  // fp:text;
begin
  if compress then
    b := copress(bmp)
  else
    b := bmp;

  i := 0;
  j := 0;
  q := 0;

{if npicwidth=1 then  //быстрое построение матрицы дл€ больших размеров
 begin
  i:=0;
  for y:=0 to b.Height-1 do
   begin
    p:=b.ScanLine[y];
    for x:=0 to b.Width-1 do
     begin
      if p[x]<>clWhite32 then
       begin
        inp[i]:=1;
       end else inp[i]:=0;
      inc(i);
     end;
   end;

 end;  }

{assignfile(fp,'nero.txt');
Rewrite(fp);  }

  while i < b.Height do
  begin
    while j < b.Width do
    begin

      t := 0;
      for y := i to i + (npicwidth) - 1 do  //оптимизировать
      begin
        // p:=b.ScanLine[y];
        for x := j to j + (npicwidth) - 1 do
        begin
          //if p[x]=clBlack then inc(t);
          if b.Canvas.Pixels[x, y] = clBlack then
            Inc(t);
          //  writeln(fp,b.Canvas.Pixels[x,y],' R= '+IntToStr(GetRValue(b.Canvas.Pixels[x,y]))+' G= '+IntToStr(GetGValue(b.Canvas.Pixels[x,y]))+' B= '+IntToStr(GetBValue(b.Canvas.Pixels[x,y])));
        end;
      end;
      max    := t / npicsize;
      inp[q] := max;
      Inc(q);

      Inc(j, npicwidth);
    end;
    j := 0;
    Inc(i, npicwidth);
  end;

  //CloseFile(fp);

  fann.Run(inp, outp);

{assignfile(fp,'nero.txt');
if FileExists('nero.txt') then Append(fp) else Rewrite(fp);
writeln(fp,'inp');
for i:=0 to High(inp) do write(fp,inp[i],' ');
writeln(fp,'');
writeln(fp,'outp');
for i:=0 to High(outp) do write(fp,outp[i],' ');
writeln(fp,'');
CloseFile(fp); }

  max := 0;
  y   := 0;
  for x := 0 to Fcount_output - 1 do
    if outp[x] > max then
    begin
      max := outp[x];
      y   := x;
    end;

  Result := code2char(y);

  if compress then
    b.Free;
end;

constructor NOCR.Create(path: string);
begin

  inherited Create;
  fann := TFannNetwork.Create(nil);
  fann.LoadFromFile(path);
  Fpath  := path;
  chlist := TStringList.Create;
end;

destructor NOCR.Destroy;
begin
  fann.SaveToFile(Fpath);
  chlist.Free;
  inherited Destroy;

end;

procedure NOCR.train(bmp: Tbitmap; rez: string; compress: boolean = True);
var
  b:   Tbitmap;
  x, y, i, j, t, q: integer;
  //  p:PColor32Array;
  max: single;
begin
  if compress then
    b := copress(bmp)
  else
    b := bmp;
  i := 0;
  j := 0;
  q := 0;
  while i < b.Height do
  begin
    while j < b.Width do
    begin

      t := 0;
      for y := i to i + (npicwidth) - 1 do  //оптимизировать
      begin
        // p:=b.ScanLine[y];
        for x := j to j + (npicwidth) - 1 do
        begin
          if b.Canvas.Pixels[x, y] = clBlack then
            Inc(t);
        end;
      end;
      max    := t / npicsize;
      inp[q] := max;
      Inc(q);

      Inc(j, npicwidth);
    end;
    j := 0;
    Inc(i, npicwidth);
  end;

  for x := 0 to high(outp) do
    outp[x] := 0;
  x := StrToInt(rez);
  if x = -1 then
    Exception.Create('Ќе знаю такого символа')
  else
  begin
    outp[char2code(rez)] := 1;
    Fann.Train(inp, outp);
  end;

  if compress then
    b.Free;
end;


procedure NOCR.Setcount_input(const Value: integer);
begin
  Fcount_input := Value;
  setlength(inp, Fcount_input);
end;

procedure NOCR.Setcount_output(const Value: integer);
begin
  Fcount_output := Value;
  setlength(outp, Fcount_output);
end;

procedure NOCR.Setsize_matrix(const Value: integer);
begin
  Fsize_matrix := Value;
  npicsize     := sqr(imgsize div Fsize_matrix);
  npicwidth    := imgsize div Fsize_matrix;
end;

procedure NOCR.init(imgsize, ninput, noutput, ncount: integer);
begin
  Self.imgsize  := imgsize;
  Fcount_input  := ninput;
  Fcount_output := noutput;
  Setsize_matrix(ncount);
  setlength(inp, Fcount_input);
  setlength(outp, Fcount_output);
end;

procedure NOCR.Save;
begin
  fann.SaveToFile(Fpath);
end;

function NOCR.char2code(ch: string): integer;
begin
  if chlist.Count = 0 then
    Result := StrToInt(ch)
  else
    Result := chlist.IndexOf(ch);
end;

function NOCR.code2char(code: integer): string;
begin
  if chlist.Count = 0 then
    Result := IntToStr(code)
  else
    Result := chlist[code];
end;

end.
