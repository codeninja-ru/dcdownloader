unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvComponent, JvSpeedButton,
  JvClipboardMonitor, JvFormAnimation, ComCtrls;

type
  TForm4 = class(TForm)
    Memo1:   TMemo;
    Button1: TButton;
    Button2: TButton;
    JvClipboardMonitor1: TJvClipboardMonitor;
    JvFormAnimation1: TJvFormAnimation;
    JvSpeedButton1: TJvSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure JvSpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure JvClipboardMonitor1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1, strings;

{$R *.dfm}


procedure TForm4.Button1Click(Sender: TObject);
var
  i, p: integer;
  url:  string;
  s:    TStringList;
  node: TTreeNode;
begin
{s:=TStringList.Create;
FMain.extracturl(Memo1.Lines.Text,s);
if s.Count>0 then
 begin
  node:=Fmain.addnode(nil,'dir',true);
  for i:=0 to s.Count-1 do FMain.addnode(node,s[i],false);
 end;
s.Free;
Memo1.Lines.Clear;
close;  }


  node := Fmain.addnode(nil, 'dir', True);

  for i := 0 to Memo1.Lines.Count - 1 do
  begin
    url := LowerCase(trim(Memo1.Lines[i]));
    if url = '' then
      Continue;
    if (url = 'begin') or (url = 'end') then
    begin
      FMain.LBlist.Items.Add(url);
      Continue;
    end;

    if pos('data.cod.ru/', url) = 0 then
      Continue;
    // if p<>0 then url:=copy(url,p,length(url)) else Continue;
    // p:=pos(' ',url);
    // if p=0 then FMain.LBlist.Items.Add(url) else
    //  begin
    s := TStringList.Create;
    explodes(' ', url, s);
    for p := 0 to s.Count - 1 do
      if pos('data.cod.ru/', s[p]) <> 0 then
      begin
        url := trim(s[p]);
        if pos('http://', url) = 0 then
          url := 'http://' + url;
        FMain.LBlist.Items.Add(url);
        FMain.addnode(node, url, False);
        break;
      end;
    s.Free;
    //  end;

  end;
  Memo1.Lines.Clear;
  Close;
end;

procedure TForm4.JvSpeedButton1Click(Sender: TObject);
begin
  Memo1.Lines.Add('begin');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('end');
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
  Close;
end;

procedure TForm4.JvClipboardMonitor1Change(Sender: TObject);
begin
  FMain.clipbrdmon;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  //JvClipboardMonitor1.Enabled:=FMain.JvCheckBox1.Checked;
end;

procedure TForm4.FormHide(Sender: TObject);
begin
  Memo1.Clear;
end;

end.
