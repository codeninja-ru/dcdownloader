unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvDialogs, ExtCtrls, JvExExtCtrls, JvComponent, JvPanel,
  ComCtrls, JvExComCtrls, JvStatusBar, JvExControls, JvButton,
  JvTransparentButton, JvListView, Menus, JvMenus, StdCtrls, JvExStdCtrls,
  JvCheckBox, JvMemo, JvCombobox, ActnList;

type
  TFupload = class(TForm)
    JvOpenDialog1: TJvOpenDialog;
    JvTransparentButton1: TJvTransparentButton;
    JvStatusBar1: TJvStatusBar;
    JvPanel1:    TJvPanel;
    JvPanel2:    TJvPanel;
    JvPanel3:    TJvPanel;
    JvListView1: TJvListView;
    JvPopupMenu1: TJvPopupMenu;
    JvComboBox1: TJvComboBox;
    JvMemo1:     TJvMemo;
    JvCheckBox1: TJvCheckBox;
    JvCheckBox2: TJvCheckBox;
    ActionList1: TActionList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fupload: TFupload;

implementation

uses Unit1;

{$R *.dfm}

end.
