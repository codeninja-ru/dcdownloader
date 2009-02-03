unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvExExtCtrls, JvImage, Mask;

type
  TForm2 = class(TForm)
    JvImage1:  TJvImage;
    Button1:   TButton;
    MaskEdit1: TMaskEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    cap: string;
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  cap := MaskEdit1.Text;
  Close;
end;

end.
