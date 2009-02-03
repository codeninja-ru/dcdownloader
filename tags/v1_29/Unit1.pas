unit Unit1;

interface

{DEFINE debug}
{DEFINE debughttp}



uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExExtCtrls, JvImage, ExtDlgs, StdCtrls, FannNetwork, JclGraphUtils,
  ActnList, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, JvTabBar, ComCtrls, JvExComCtrls, JvStatusBar, JvComponent,
  JvComCtrls, ToolWin, JvToolBar, JvPanel, JvProgressBar, JvExStdCtrls,
  JvHtControls, JvExControls, JvInstallLabel, JvFormPlacement, JvLabel,
  Mask, JvExMask, JvToolEdit, Menus, JvMenus, JvAppStorage,
  JvAppIniStorage, ImgList, JvImageList, JvFormMagnet, JvListBox,
  IdCookieManager, OleCtrls, SHDocVw, IdCookie, JvTimer, JvLogFile,
  IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, DB, JvCsvData,
  JvClipboardMonitor, JvTrayIcon, StdActns, JvExForms, JvScrollBox,
  JvgWizardHeader, JvEdit, JvRadioButton, JvCombobox, JvCheckBox,
  JvGroupBox, JvRadioGroup, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvSpin,
  JvButton, JvTransparentButton, JvListView, JvLinkLabel, JvSplitter,
  JvBalloonHint, CommCtrl, JvSplit,
  JvSyncSplitter, {$IF DEFINED(debug)}JclDebug, JclHookExcept,{$IFEND}Unit3,
  JvColorTrackbar, JvgCaption, shellapi,
  jvclipbrd, IdServerIOHandler,
  Buttons, regger, acc_tester, dcqueue,
  JvDialogs, RegExpr, JvListComb, XPMan;

type
  TFMain = class(TForm)
    ActionList1: TActionList;
    JvStatusBar1: TJvStatusBar;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    JvPanel1: TJvPanel;
    JvToolBar1: TJvToolBar;
    ToolButton1: TToolButton;
    JvGradientProgressBar1: TJvGradientProgressBar;
    JvPanel2: TJvPanel;
    JvInstallLabel1: TJvInstallLabel;
    JvImageList1: TJvImageList;
    Aadd:    TAction;
    Astop:   TAction;
    Apouse:  TAction;
    Astart:  TAction;
    JvPopupMenu1: TJvPopupMenu;
    jvdir:   TJvDirectoryEdit;
    JvLabel1: TJvLabel;
    LBlist:  TJvListBox;
    ToolButton2: TToolButton;
    JvImageList2: TJvImageList;
    IdCookieManager1: TIdCookieManager;
    JvTimer1: TJvTimer;
    Adel:    TAction;
    N1:      TMenuItem;
    N2:      TMenuItem;
    Aclear:  TAction;
    N3:      TMenuItem;
    JvTrayIcon1: TJvTrayIcon;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage1: TJvFormStorage;
    JvTabDefaultPainter1: TJvTabDefaultPainter;
    ToolButton4: TToolButton;
    JvSplitter1: TJvSplitter;
    JvgWizardHeader1: TJvgWizardHeader;
    TabSheet4: TTabSheet;
    web:     TWebBrowser;
    JvScrollBox1: TJvScrollBox;
    Linfo:   TJvLinkLabel;
    JvLinkLabel1: TJvLinkLabel;
    JvClipboardMonitor1: TJvClipboardMonitor;
    JvCheckBox1: TJvCheckBox;
    JvRadioGroup1: TJvRadioGroup;
    JvCsvDataSet1: TJvCsvDataSet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DataSource1: TDataSource;
    JvPanel3: TJvPanel;
    JvPanel4: TJvPanel;
    JvDBGrid1: TJvDBGrid;
    JvCsvDataSet1EMAIL: TStringField;
    JvCsvDataSet1PWD: TStringField;
    JvCsvDataSet1SIZE: TIntegerField;
    JvCsvDataSet1LASTACCESS: TDateTimeField;
    https:   TIdHTTP;
    IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket;
    JvCheckBox2: TJvCheckBox;
    JvGroupBox1: TJvGroupBox;
    JvSpinEdit1: TJvSpinEdit;
    JvLabel2: TJvLabel;
    Areg:    TAction;
    JvTransparentButton1: TJvTransparentButton;
    JvTransparentButton2: TJvTransparentButton;
    Atest:   TAction;
    IdCookieManager2: TIdCookieManager;
    JvPanel5: TJvPanel;
    JvPanel6: TJvPanel;
    JvListView1: TJvListView;
    https1:  TIdHTTP;
    IdCookieManager3: TIdCookieManager;
    http1:   TIdHTTP;
    JvGroupBox2: TJvGroupBox;
    JvRadioButton1: TJvRadioButton;
    JvRadioButton2: TJvRadioButton;
    Jvlogin: TJvEdit;
    Jvpwd:   TJvEdit;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvCheckBox3: TJvCheckBox;
    TabSheet7: TTabSheet;
    JvLogFile: TJvLogFile;
    Mlog:    TMemo;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    JvRGrest: TJvRadioGroup;
    JvPMtray: TJvPopupMenu;
    N4:      TMenuItem;
    N5:      TMenuItem;
    N6:      TMenuItem;
    N7:      TMenuItem;
    N8:      TMenuItem;
    Aup:     TAction;
    Adown:   TAction;
    Ainfo:   TAction;
    ToolButton3: TToolButton;
    N9:      TMenuItem;
    N10:     TMenuItem;
    Apouse1: TMenuItem;
    Astop1:  TMenuItem;
    CBplglist: TJvComboBox;
    Label1:  TLabel;
    XPManifest1: TXPManifest;
    TVlist:  TJvTreeView;
    Atop: TAction;
    Abuttom: TAction;
    N11: TMenuItem;
    N12: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure AstartExecute(Sender: TObject);
    procedure JvTimer1Timer(Sender: TObject);
    procedure AaddExecute(Sender: TObject);
    procedure AdelExecute(Sender: TObject);
    procedure AclearExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AstopExecute(Sender: TObject);
    procedure ApouseExecute(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure webNewWindow2(Sender: TObject; var ppDisp: IDispatch;
      var Cancel: wordbool);
    procedure webBeforeNavigate2(Sender: TObject; const pDisp: IDispatch;
      var URL, Flags, TargetFrameName, PostData, Headers: olevariant;
      var Cancel: wordbool);
    procedure JvLinkLabel1LinkClick(Sender: TObject; LinkNumber: integer;
      LinkText, LinkParam: string);
    procedure JvDragDrop1Drop(Sender: TObject; Pos: TPoint; Value: TStrings);
    procedure JvClipboardMonitor1Change(Sender: TObject);
    procedure JvCheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AregExecute(Sender: TObject);
    procedure AtestExecute(Sender: TObject);
    procedure JvRadioButton1Click(Sender: TObject);
    procedure JvRadioButton2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure AupExecute(Sender: TObject);
    procedure AdownExecute(Sender: TObject);
    procedure AtopExecute(Sender: TObject);
    procedure AbuttomExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // lastpos:cardinal; //для измерения скорости
    start: boolean; //запуск закачек из командной строки

    mydir:  string;
    w:      work;
    htmlformat: cardinal; //код формата буфера обмена
    cbblok: boolean;      //защита буфера обмена
    reg:    reger;
    acctest: Tacctest;
    plglist: TStringList;
    queue:  Tdcqueue;
    procedure clipbrdmon;
    procedure extracturl(str: string; rez: TStrings);

    function addnode(node: TTreeNode; Text: string; isdir: boolean): TTreeNode;
  end;

  {$IF DEFINED(debughttp)}
   var debugtxt:TStringList;
  {$IFEND}



const
  kopilka = 'http://smskopilka.ru/?info&id=30721';

var
  FMain:     TFMain;
  npicsize:  word; //ячейки матрицы
  npicwidth: word; //рпзмер стороны ячейки

  rx: TRegExpr;

  {$IF DEFINED(debug)}
  debugstr:      TStringList;
  StackInfoList: TJclStackInfoList;
  {$IFEND}


const
  clinfo = '<b>Ссылка: </b>%s<br><b>Файл: </b>%s<br><b>Описание: </b>%s<br><b>Имя на диске: </b>%s<br><b>Размер: </b>%s';


implementation

uses code_filter, Unit2, Unit4, Math, strings, shutdown;

{$R *.dfm}

{$IF DEFINED(debug)}
procedure AnyExceptionNotify(ExceptObj: TObject; ExceptAddr: Pointer;
  OSException: boolean);
begin
  if Exception(ExceptObj).Message = 'Connection Closed Gracefully.' then
  begin
    debugstr.Add('X');
    debugstr.SaveToFile('debuginfo.txt');
  end
  else
  if Exception(ExceptObj).Message = 'HTTP/1.1 302 Found' then
  begin
    debugstr.Add('Y');
    debugstr.SaveToFile('debuginfo.txt');
  end
  else
  begin
    debugstr.Add('=================================');
    debugstr.Add(Exception(ExceptObj).Message);
    JclLastExceptStackListToStrings(debugstr, True, False, True);
    debugstr.SaveToFile('debuginfo.txt');
  end;
end;

{$IFEND}



procedure TFMain.FormCreate(Sender: TObject);
var //fp:textfile;
    //str,email,pwd:string;
    //    s:TStringList;
  sr: TSearchRec;
  hl: cardinal;
  plg_name: plg_downloader_name;

  i: integer;
begin
{$IF DEFINED(debughttp)}
debugtxt:=TStringList.Create;
{$IFEND}

  mydir := ExtractFileDir(Application.ExeName);
  JvLogFile.FileName := mydir + '\log.txt';

  cbblok := False;

{$IF DEFINED(debug)}
  Include(JclStackTrackingOptions, stRawMode);
  JclStartExceptionTracking;
  debugstr := TStringList.Create;
  JclAddExceptNotifier(AnyExceptionNotify);
{$IFEND}

  rx := TRegExpr.Create;
  rx.Expression := '([a-z0-9]+.)?data.cod.ru/[0-9]+';    //([a-z]+.)?data.cod.ru/[0-9]+
  rx.Compile;


  //грузим акки
{JvCsvDataSet1.Active:=true;
if FileExists('accounts.cfg') then
 begin
  assignfile(fp,'accounts.cfg');
  reset(fp);
  while not Eof(fp) do
   begin
    readln(fp,str);
    s:=TStringList.Create;
    try
     explodes(':',str,s);
     email:=s[0];
     pwd:=s[1];
    finally
     s.Free
    end;
    if not JvCsvDataSet1.Locate('EMAIL',VarArrayOf([email]),[loCaseInsensitive]) then
     begin
      JvCsvDataSet1.Append;
      JvCsvDataSet1.FieldValues['EMAIL']:=email;
      JvCsvDataSet1.FieldValues['PWD']:=pwd;
      JvCsvDataSet1.FieldValues['SIZE']:=100*1024;  //????
      JvCsvDataSet1.FieldValues['LASTACCESS']:=NOW;
      JvCsvDataSet1.Post;
     /// JvCsvDataSet1.First;
     end;
   end;
  closefile(fp);
  JvCsvDataSet1.Flush;
 end; }


  //загрузка плагинов
  if DirectoryExists(mydir + '\plugins') then
  begin
    plglist := TStringList.Create;
    if FindFirst(mydir + '\plugins\*.dll', faAnyFile, sr) = 0 then
    begin
      repeat
        hl := LoadLibrary(PChar(mydir + '\plugins\' + sr.Name));
        try
          @plg_name := GetProcAddress(hl, 'plg_downloader_name');
          if @plg_name = nil then
            Continue;
          plglist.Add(sr.Name + '=' + plg_name);
          CBplglist.Items.Add(plg_name);
        finally
          FreeLibrary(hl);
        end;
      until FindNext(sr) <> 0;
    end;
    CBplglist.ItemIndex := 0;
  end;

  queue := Tdcqueue.Create;

  start := False;  //обработка параметров командной строки
  i     := 0;
  while i <= ParamCount do
  begin
    Inc(i);
    if LowerCase(ParamStr(i)) = 'start' then
      start := True; //запуск закачек
  {if LowerCase(paramstr(i))='-i' then
   if LowerCase(paramstr(i+1))<>'' then
    begin
     LBlist.Items.LoadFromFile(LowerCase(paramstr(i+1)));
     inc(i);
    end; }
  end;
end;

procedure TFMain.AstartExecute(Sender: TObject);
begin
  if LBlist.Count = 0 then
    exit;
  if DirectoryExists(jvdir.Text) then
  begin
    if w <> nil then
    begin
      w.Resume;
      Apouse.Enabled := not w.Suspended;
      Astart.Enabled := w.Suspended;
    end
    else
    begin
      w := work.Create(True);
      w.queue := queue;
      w.Resume;
    end;

  end
  else
    ShowMessage('Директория не найдена');
end;

procedure TFMain.JvTimer1Timer(Sender: TObject);
var
  p: integer;
begin
  if w <> nil then
  //TODO наверно этот мусор можно убрать
    if queue.gf <> nil then    //прогресс бар
    begin
      try
        if queue.gf.size <> 0 then
        begin
          p := round((queue.gf.Position / queue.gf.size) * 100);
          JvGradientProgressBar1.Position := p;
          JvStatusBar1.Panels[0].Text := 'Скорость: ' + IntToStr(queue.gf.Speed) + ' Кб/с';
          JvStatusBar1.Panels[1].Text := IntToStr(p) + ' %';
        end;
      except
        on ERangeError do
          exit;
      end;

    end;

end;

procedure TFMain.AaddExecute(Sender: TObject);
begin
  if not Form4.Visible then
    Form4.ShowModal
  else
    Form4.BringToFront;
end;

procedure TFMain.AdelExecute(Sender: TObject);
//var i:integer;
begin
 {for i:=0 to LBlist.Count-1 do
  if LBlist.Selected[i] then LBlist.del }
  LBlist.DeleteSelected;
end;

procedure TFMain.AclearExecute(Sender: TObject);
begin
  LBlist.Clear;
end;

procedure TFMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  JvTrayIcon1.Active := False;
  JvTimer1.Enabled := False;
  
  if reg <> nil then
    reg.Terminate;
{ner2.Free;
ner3.Free;  }
  if w <> nil then
  begin
    w.Terminate;
    //  w.WaitFor;
  end;


  {$IF DEFINED(debughttp)}
  debugtxt.Free;
  {$IFEND}

  rx.Free;
  queue.Free;
end;

procedure TFMain.AstopExecute(Sender: TObject);
begin
  if w <> nil then
    w.Terminate;
end;

procedure TFMain.ApouseExecute(Sender: TObject);
begin
  if w <> nil then
  begin
    if w.Suspended then
      w.Resume
    else
      w.Suspend;
    Apouse.Enabled := not w.Suspended;
    Astart.Enabled := w.Suspended;
  end;
end;

procedure TFMain.TabSheet4Show(Sender: TObject);
begin
  if web.LocationURL = '' then
    Web.Navigate(kopilka);

end;


procedure TFMain.webNewWindow2(Sender: TObject; var ppDisp: IDispatch;
  var Cancel: wordbool);
begin
  Cancel := True;
end;

procedure TFMain.webBeforeNavigate2(Sender: TObject; const pDisp: IDispatch;
  var URL, Flags, TargetFrameName, PostData, Headers: olevariant; var Cancel: wordbool);
begin
  if url = 'http://smskopilka.ru/index.php' then
    Cancel := True;
end;

procedure openlink(url: string);
begin
  ShellExecute(FMain.Handle, nil, PChar(url), nil, nil, SW_SHOW);

end;

procedure TFMain.JvLinkLabel1LinkClick(Sender: TObject; LinkNumber: integer;
  LinkText, LinkParam: string);
begin
  case LinkNumber of
    0: openlink('http://www.gnu.org/licenses/gpl.html');
    1: openlink('http://code.google.com/p/dcdownloader/');
    2: openlink('mailto:vitaliy@mayorov.info');
    3: openlink('http://code.google.com/p/dcdownloader/wiki/FAQ');
    //2:openlink('http://dszlo.2bb.ru/viewtopic.php?id=134');
    4: JvPageControl1.ActivePageIndex := 6;

  end;
end;

procedure TFMain.JvDragDrop1Drop(Sender: TObject; Pos: TPoint; Value: TStrings);
begin
  ShowMessage(Value.Text);
end;

procedure TFMain.JvClipboardMonitor1Change(Sender: TObject);
begin
  if cbblok then
    exit;
  cbblok := True;
  try
    clipbrdmon;
  finally
    cbblok := False;
  end;
end;

procedure TFMain.JvCheckBox1Click(Sender: TObject);
begin
  JvClipboardMonitor1.Enabled := JvCheckBox1.Checked;
end;

procedure GoToForeground;
var
  Info:      TAnimationInfo;
  Animation: boolean;
begin
  // Проверяем, включена ли анимация для окон
  Info.cbSize := SizeOf(TAnimationInfo);
  Animation   := SystemParametersInfo(SPI_GETANIMATION, SizeOf(Info), @Info, 0) and
    (Info.iMinAnimate <> 0);
  // Если включена, отключаем, чтобы не было ненужного мерцания
  if Animation then
  begin
    Info.iMinAnimate := 0;
    SystemParametersInfo(SPI_SETANIMATION, SizeOf(Info), @Info, 0);
  end;
  // Если приложение не минимизировано, минимизируем
  if not IsIconic(Application.Handle) then
    Application.Minimize;
  // Восстанавливаем приложение. При этом оно автоматически выводится
  // на передний план
  Application.Restore;
  // Если анимация окон была включена, снова включаем её
  if Animation then
  begin
    Info.iMinAnimate := 1;
    SystemParametersInfo(SPI_SETANIMATION, SizeOf(Info), @Info, 0);
  end;
end;

procedure TFMain.clipbrdmon;
var
  i:     integer;
  cf, c: cardinal;
  buff:  array[0..1024] of char;
  f:     string;
  // fp:textfile;
  // mem:TMemoryStream;
  mem:   TStringStream;
  str:   TStringList;
  //    h:THandle;
  cb:    TJvClipboard;
  //    p:pchar;
begin
  try
    cb := JvClipboard;

{extracturl(cb.AsText,LBlist.Items);
exit;}

{AssignFile(fp,'clbrd.txt');
Rewrite(fp);
try }

    //ищим код буфера обмена HTML Format
    for i := 0 to cb.FormatCount - 1 do
    begin
      cf := cb.Formats[i];
      c  := GetClipboardFormatName(cf, buff, sizeof(buff));
      if copy(buff, 0, c) = 'HTML Format' then
      begin
        htmlformat := cf;
        break;
      end;

 { writeln(fp,'Buffer format id= ',cf,' name= ',copy(buff,0,c));
  writeln(fp);
  writeln(fp);
  cb.GetBuffer(cf,@buff,sizeof(buff));
  writeln(fp,buff);
  writeln(fp);   }

    end;
{finally
CloseFile(fp);
end;  }

    if cb.HasFormat(htmlformat) then
    begin
      mem := TStringStream.Create('');
      // mem:=TMemoryStream.Create;
      str := TStringList.Create;
      try
        SaveClipboardToStream(htmlformat, mem);
        mem.Position := SizeOf(word) + SizeOf(longint);

        str.LoadFromStream(mem);
        f := str.Text;

        if pos('data.cod.ru/', f) <> 0 then
          extracturl(f, Form4.Memo1.Lines);
      finally
        str.Free;
        mem.Free;
      end;
      if Form4.Memo1.Lines.Count > 0 then
        if not Form4.Visible then
        begin
          Form4.Show;
          GoToForeground;
        end;

      //exit;
  {f:=mem.DataString;
  JvHTMLParser1.AnalyseString(f);
  mem.Free;
  if Form4.Memo1.Lines.Count>0 then
  begin
   str:=TStringList.Create;
   str.Free;
   if not Form4.Visible then
    begin
      Form4.show;
      GoToForeground;
    end;
   end; }
    end
    else if pos('data.cod.ru/', cb.AsText) <> 0 then
    begin
      extracturl(cb.AsText, Form4.Memo1.Lines);
      if Form4.Memo1.Lines.Count > 0 then
        if not Form4.Visible then
        begin
          Form4.Show;
          GoToForeground;
        end;

  {str:=TStringList.Create;
  str.Text:=LowerCase(trim(cb.AsText));
  urlpars(str);
  if str.Count>0 then
   begin

    for i:=0 to str.Count-1 do if Form4.Memo1.Lines.IndexOf(str[i])=-1 then Form4.Memo1.Lines.Add(str[i]);

    if not Form4.Showing then
     begin
      Form4.show;
      GoToForeground;
     // SetActiveWindow(form4.Handle);
     // Form4.BringToFront;
     // ShowWindow(Form4.Handle,SW_NORMAL);
     // SetForegroundWindow(form4.Handle);

     // Form4.JvFormAnimation1.DisappearRectangle;

     end;  }
      //end;
      // str.Free;
    end;

  except

  end;

end;

procedure TFMain.FormShow(Sender: TObject);
begin
  if start then
  begin
    Astart.Execute;
    start := False;
  end;

  JvClipboardMonitor1.Enabled := JvCheckBox1.Checked;
  Jvlogin.Enabled := JvRadioButton2.Checked;
  Jvpwd.Enabled   := JvRadioButton2.Checked;
end;


procedure TFMain.AregExecute(Sender: TObject);
begin
  if reg = nil then
  begin
    Areg.Enabled := False;
    reg    := reger.Create(True);
    reg.me := @reg;
    reg.meact := Areg;
    reg.Resume;
    //reg:=nil;
    //Areg.Enabled:=true;
  end;
end;

procedure TFMain.AtestExecute(Sender: TObject);
begin
  if acctest = nil then
  begin
    acctest     := Tacctest.Create(False);
    acctest.me  := @acctest;
    acctest.meact := Atest;
    acctest.all := True;
    acctest.Resume;
  end;
end;

procedure TFMain.JvRadioButton1Click(Sender: TObject);
begin
  Jvlogin.Enabled := JvRadioButton2.Checked;
  Jvpwd.Enabled   := JvRadioButton2.Checked;
end;

procedure TFMain.JvRadioButton2Click(Sender: TObject);
begin
  Jvlogin.Enabled := JvRadioButton2.Checked;
  Jvpwd.Enabled   := JvRadioButton2.Checked;
end;

procedure TFMain.extracturl(str: string; rez: TStrings);
begin

  try
    rx.Exec(str);
    repeat
      if (rx.Match[0] <> '') and (rez.IndexOf('http://' + rx.Match[0]) = -1) then
        rez.add('http://' + rx.Match[0]);
    until not rx.ExecNext;
  except

  end;

end;

procedure TFMain.N5Click(Sender: TObject);
begin
  Close;
end;

procedure TFMain.N4Click(Sender: TObject);
begin
  if JvTrayIcon1.ApplicationVisible then
    JvTrayIcon1.HideApplication
  else
    JvTrayIcon1.ShowApplication;
end;

procedure TFMain.AupExecute(Sender: TObject);
//var i: Integer;
begin
  //for i:=0 to LBlist.Count-1 do if LBlist.Selected[i] then LBlist.Items.Move(i,i+1);
  //меню вверх
  LBlist.Items.BeginUpdate;
  LBlist.MoveSelectedUp;
  LBlist.Items.EndUpdate;
end;


procedure TFMain.AdownExecute(Sender: TObject);
//var i: Integer;
begin
  //for i:=0 to LBlist.Count-1 do if LBlist.Selected[i] then LBlist.Items.Move(i,i-1);
  LBlist.Items.BeginUpdate;
  LBlist.MoveSelectedDown;
  LBlist.Items.EndUpdate;
end;

function TFMain.addnode(node: TTreeNode; Text: string; isdir: boolean): TTreeNode;
begin
  Result := TVlist.Items.AddChild(node, Text);
  if isdir then
    Result.ImageIndex := 1;
end;

procedure TFMain.AtopExecute(Sender: TObject);
var i:integer;
    buf:TStringList;
begin
  buf:=TStringList.Create;
  try
    for i:=0 to LBlist.Count-1 do
    begin
      if LBlist.Selected[i] then buf.Add(LBlist.Items.Strings[i]);
    end;

    LBlist.DeleteSelected;

    LBlist.Items.BeginUpdate;
    for i:=buf.Count-1 downto 0 do
    begin
      LBlist.Items.Insert(0,buf.Strings[i]);
    end;
    LBlist.Items.EndUpdate;
  finally
    buf.Free;
  end;
end;

procedure TFMain.AbuttomExecute(Sender: TObject);
var i:integer;
    buf:TStringList;
begin
  buf:=TStringList.Create;
  try
    for i:=0 to LBlist.Count-1 do
    begin
      if LBlist.Selected[i] then buf.Add(LBlist.Items.Strings[i]);
    end;

    LBlist.DeleteSelected;

    LBlist.Items.BeginUpdate;
    for i:=0 to buf.Count-1 do
    begin
      LBlist.Items.Append(buf.Strings[i]);
    end;
    LBlist.Items.EndUpdate;
  finally
    buf.Free;
  end;
end;

end.
