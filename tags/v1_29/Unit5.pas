unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JclDebug;

type
  TFdebug = class(TForm)
    Button1: TButton;
    Memo1:   TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdebug: TFdebug;

implementation

{$R *.dfm}

procedure TFdebug.Button1Click(Sender: TObject);
var
  StackInfoList: TJclStackInfoList;
begin
  StackInfoList := JclCreateStackList(True, 0, nil);
  try
    Memo1.Lines.BeginUpdate;
    Memo1.Lines.Clear;
    StackInfoList.AddToStrings(Memo1.Lines, True, True, True);
    Memo1.Lines.EndUpdate;
  finally
    StackInfoList.Free;
  end;
end;

end.
