unit dcqueue;

interface

uses Windows, Classes, SysUtils, dwqueue, getfile;

type
  Tdcqueue = class(Tdwqueue)
  private
    procedure Setanonym(const Value: boolean); override;
    function getanonym: boolean; override;
    procedure set_login(const Value: string); override;
    procedure set_pwd(const Value: string); override;
    function get_login: string; override;
    function get_pwd: string; override;
  public
    newname: string;
    rarfile, clbrd: TStringList;
    hl:      DWORD;
    gf:      TGetFile;
    lastPos: cardinal; //��������� ������� �����. ������� ��� ���������� ��������. ���������� ����� ������ ����
    function get_link: string; override; //������� ������
    procedure del_link(Sender: TObject); override; //������� ������ (����� �������)
    procedure addlog(Sender: TObject); override;
    procedure hintmsg(Sender: TObject); override;
    procedure Open(Sender: TObject); override;
    procedure Close(Sender: TObject); override;                         
    procedure step1(Sender: TObject); override;
    procedure step2(Sender: TObject); override;
    procedure step3(Sender: TObject); override;
    procedure step4(Sender: TObject); override;
    procedure step5(Sender: TObject); override;
    procedure viewinfo(Sender: TObject); override;
    function got_direct_link(url1: string): boolean; override;
    function download(url: string): boolean; override;
    function hasNext: boolean; override; //���� �� ��������� ������


    function get_link1: string; //TODO ������
  end;

type
  plg_downloader_name = function: PChar;
    stdcall; //���������� ������ �� ������ � ������ �������
  plg_download = function(url, dir, referer, cookie: PChar): boolean export;
    stdcall; //���������� ������� url - ������ dir - ����� ���� ���������� �����


implementation

uses jvclipbrd, JvDSADialogs, Dialogs, Unit1, Controls, shutdown, strings, jvThread,
  freespace, JclUnicode, Unit3, ComCtrls;

var
  download_dll: plg_download;

const
  restask = '���� � ������ %s ��� ���������� �� �����. ' + #13#10 +
    '�� ������ ���������� ������� �����, ���� ������������� ���. �� ��������� 60 ������ ����� ��������� �������� �� ��������� (������� �����)';
  answ: array[0..2] of string = ('��������', '�������������', '����������');
  yesno: array[0..1] of string = ('��', '���');



function getfname(f: string): string;
var
  s: TStringList;
begin
  s := TStringList.Create;
  explodes('.', f, s);
  Result := s[0];
  s.Free;
end;

function getfext(f: string): string;
var
  s: TStringList;
  i: integer;
begin
  s := TStringList.Create;
  explodes('.', f, s);

  Result := '';
  if s.Count > 1 then
    for i := 1 to s.Count - 1 do
      Result := Result + '.' + s[i];
  s.Free;
end;

function uname(dir, f: string): string;  //��������� ����� ���������� ���
var
  n, e, s: string;
  i: integer;
begin
  n := getfname(f);
  e := getfext(f);
  i := 0;
  repeat
    Inc(i);
    s := n + '[' + IntToStr(i) + ']' + e;
  until not FileExists(dir + '\' + s);
  Result := s;
end;


{ Tdcqueue }

procedure Tdcqueue.addlog;
begin
  inherited;
{FMain.JvTrayIcon1.BalloonHint('DCGet',logstr);
sleep(7000); }
  with FMain do
  begin
    JvLogFile.Add(logstr);
    Mlog.Lines.Add(logstr);
  end;
  //FMain.Mlog.Lines.Add(logstr);
end;

procedure Tdcqueue.Close;
const
  yesno: array[0..1] of string = ('��', '���');
begin
  inherited;
  if FMain.JvCheckBox3.Checked then
  begin
    JvClipboard.AsText := clbrd.Text;
    clbrd.Clear;
    FMain.JvTrayIcon1.BalloonHint('DC Downloader', '������ ����������� � ����� ������');
  end
  else if FMain.LBlist.Count = 0 then
    FMain.JvTrayIcon1.BalloonHint('DC Center', '������� ������ ���������');

  clbrd.Free;


  FMain.Astart.Enabled := True;
  FMain.Apouse.Enabled := False;
  FMain.Astop.Enabled  := False;
  FMain.JvStatusBar1.Panels[0].Text := '';
  FMain.JvStatusBar1.Panels[1].Text := '';
  //Fmain.JvBalloonHint1.ActivateHint(Fmain,'������� ������ ���������');

  //�������� �� ����������
  case FMain.JvRadioGroup1.ItemIndex of
    1: Fmain.Close;
    2: if MessageDlgEx('���������� ������', '��������� ������� ����������?',
        mtInformation, yesno, [mrYes, mrNo], 0, dckScreen, 20, 0) = mrYes then
        ShutDown_pk;
  end;

  FMain.w := nil;
end;

procedure Tdcqueue.del_link;
var
  idx: integer;
begin
  inherited;
  idx := FMain.LBlist.Items.IndexOf(self.url);
  if idx <> -1 then
    FMain.LBlist.Items.Delete(idx);
  url := '';

  FMain.JvGradientProgressBar1.Position := 100;
  FMain.JvAppIniFileStorage1.Flush;
  Fmain.JvInstallLabel1.SetImage(0, -1);
  Fmain.JvInstallLabel1.SetImage(1, -1);
  Fmain.JvInstallLabel1.SetImage(2, -1);
  Fmain.JvInstallLabel1.SetImage(3, -1);
end;

function Tdcqueue.download(url: string): boolean;
var
  s:      TStringList;
  f, img: string;
  //    wi: WideString;
  rest:   boolean; //��������������� �� ����
  frees, need: double;
  dlgrez: TModalResult;
  t:  integer;
begin
  Result := True;
  with FMain do
  begin
    if JvCheckBox3.Checked then
    begin
      Synchronize(viewinfo);
      Synchronize(step4);
      clbrd.Add(url);
      Synchronize(step5);
      Synchronize(del_link);
      exit;
    end;



    //������� ������� ����������
    if FMain.CBplglist.ItemIndex <> 0 then
    begin
      try
        Result := False;
        Synchronize(viewinfo);
        Synchronize(step4);
        hl := LoadLibrary(PChar(FMain.mydir + '\plugins\' +
          plglist.Names[FMain.CBplglist.ItemIndex - 1]));
        @download_dll := GetProcAddress(hl, 'download');
        if not download_dll(PChar(url), PChar(FMain.jvdir.Text), PChar(
          self.url), PChar(work(perent).http.Request.RawHeaders.Values['Cookie'])) then
        begin
          logstr := '������ � ������� ' + plglist.Names[FMain.CBplglist.ItemIndex - 1];
          Synchronize(addlog);
          Synchronize(hintmsg);
          Result := False;
          exit;
        end;
        Result := True;
        Synchronize(step5);
        if Result then
          Synchronize(del_link);
      finally
        FreeLibrary(hl);
      end;
      exit;
    end;

    Result := True;

    //���� ��� ���� ����������
    try
      if fsize <> '' then
      begin
        frees := getfreespace(copy(FMain.jvdir.Text, 1, 2));
        need  := StrToInt(fsize) * 1024;
        fsize := fsize + ' ��';
        if frees < need then
        begin
          logstr := format('������������ ����� �� �����. ��������: %i ���������: %i',
           [frees, need]);
          Synchronize(addlog);
          //stop:=true;
          logstr := '������������ ����� �� �����.';
          Synchronize(hintmsg);
          Result := False;
          exit;
        end;
      end;
    except
     //����� �������� ����� fsize - ������. ����� ���� ���� 
     on EConvertError do 
    end;

    if url = '' then
      exit;
    try
      gf := TGetFile.Create;

      //�������� ��� �����
      s  := TStringList.Create;
      explodes('/', url, s);
      f := s.Strings[s.Count - 1];
      s.Free;

      //�������� ��� ��� ����� ����� "?"
      t := pos('?',f);
      if t<>0 then f := copy(f,1,t - 1);

      f := TranslateString(f, cp_utf8, 28591);

      if f = '' then f := fname;
      if f = '' then raise Egetfile.Create('�� ������� �������� ��� �����');


      if rarfile = nil then
        if FileExists(FMain.jvdir.Text + '\' + f) then   //������� �� �������� ��� ������������������
        begin  //���� ���� ����������
          logstr := '���� � ������ ' + f + ' ��� ���������� �� �����.';
          Synchronize(addlog);
          rest := True;
          case JvRGrest.ItemIndex of
            1: rest := False;
            2:
            begin
              dlgrez := MessageDlgEx('��������', Format(restask, [f]), mtConfirmation,
                answ, [mrYes, mrNo, mrCancel], 0, dckScreen, 60, 0);
              if dlgrez = mrNo then
                rest := False;
              if dlgrez = mrCancel then
              begin
                logstr := '��������';
                Synchronize(addlog);
                Synchronize(del_link);
                exit;
              end;
            end;

          end;
          if rest then
          begin //����������
            gf.restart := True;
            logstr     := '�������';
            Synchronize(addlog);
          end
          else
          begin  //���������������
            f      := uname(FMain.jvdir.Text, f);
            logstr := '������������ � ' + f;
            Synchronize(addlog);
          end;
        end;

      gf.file_path := FMain.jvdir.Text + '\' + f;
      //if FileExists(gf.file_path) then gf.file_path:=FMain.jvdir.Text+'\'+''+f;
      fsavename    := f;
      if rarfile <> nil then  //��������� ���� � ������
      begin
        if rarfile.Count = 0 then
        begin
          newname := getfname(f);
          f := uname(FMain.jvdir.Text, newname + '.part1.rar');
          newname := getfname(f);
        end;
        img := newname + '.part' + IntToStr(rarfile.Count + 1) + '.rar';
        fsavename := img;
        //logstr:='����: '+f+' ������������ � '+img;
        // Synchronize(addlog);
        img := FMain.jvdir.Text + '\' + img;
        gf.file_path := img;
        rarfile.Add(gf.file_path);
        // RenameFile(rarfile[i],img+'.part'+inttostr(rarfile.Count)+'.rar')
      end;

      gf.url := url;

      if JvRadioButton2.Checked then //�������� ��������
      begin
        gf.set_cookie := True;
        gf.cookie     := work(perent).http.Request.RawHeaders.Values['Cookie'];
      end;

      //Synchronize(downloadinfo);
      Synchronize(viewinfo);
      Synchronize(step4);
      JvTimer1.Enabled := True;

      try
        gf.Download;
      except
        on e: Egetfile do
        begin
          logstr := e.Message;
          Synchronize(addlog);
          Synchronize(hintmsg);
          Result := False;
        end;
        on e: EgetfileMsg do
        begin
          logstr := e.Message;
          Synchronize(addlog);
          Synchronize(hintmsg);
          //result:=false;
        end;
        on e: EgetfileRestart do
        begin
          logstr := e.Message;
          Synchronize(addlog);
          Synchronize(hintmsg);

          logstr := '������� ������� ����� 5 �.';
          Synchronize(addlog);
          //Synchronize(hintmsg);
          sleep(5000);

          raise EdcRestart.Create('������ ������');
        end;
        on e: Exception do
        begin
          logstr := e.Message;
          Synchronize(addlog);
          Synchronize(hintmsg);
        end;
 {else
  begin
   logstr:=gf.error_str;
   Synchronize(addlog);
   Synchronize(hintmsg);
  end; }
      end;



{if not gf.Download then
 begin
  logstr:=gf.error_str;
  Synchronize(addlog);
  Synchronize(hintmsg);
  if gf.error_str<>'���� ��� �������' then result:=false;
 end; }
      JvTimer1.Enabled := False;
      Synchronize(step5);
      if Result then
        Synchronize(del_link);

    finally
      gf.Free;
      gf := nil;
    end;
  end;
end;

function Tdcqueue.getanonym: boolean;
begin
  Result := Fmain.JvRadioButton2.Checked;
end;


function Tdcqueue.get_link1: string;
var
  nod, nod_ch: TTreeNode;
begin
  nod := FMain.TVlist.Items.GetFirstNode;
  while nod <> nil do
  begin
    if nod.ImageIndex <> 1 then
    begin
      Result := nod.Text;
      break;
    end;
    nod := nod.GetNext;
  end;
end;

function Tdcqueue.get_link: string;
var
  i: integer;
begin
  FMain.Linfo.Caption := '';
  if not FMain.JvRadioButton2.Checked then
    FMain.IdCookieManager1.CookieCollection.Clear;
  work(perent).http.Request.Referer := '';

{nod:=FMain.TVlist.Items.GetFirstNode;
while true do
 begin
  nod:=nod.GetNext;
  for i:=0 to nod.Count-1 do
   begin
    nod_ch:=nod.Item[i];
    if nod_ch.ImageIndex=1 then break;  //���� ��� �������� ����������
    result:=nod_ch.Text;
    exit;
   end;
 end;  }

  while FMain.LBlist.Count <> 0 do
  begin

    url := trim(FMain.LBlist.Items.Strings[0]);
    if url = 'begin' then
    begin  //������ ������������ ������
      if rarfile <> nil then
        rarfile.Free;
      rarfile := TStringList.Create;
      Synchronize(del_link);
      Continue;
    end;

    if url = 'end' then //����� ������
    begin

      //�������������
      if rarfile <> nil then
        rarfile.Free;
      rarfile := nil;
      Synchronize(del_link);
      Continue;
    end;
    break;
  end;

  Result := url;
end;

function Tdcqueue.get_login: string;
begin
  Result := Fmain.Jvlogin.Text;
end;

function Tdcqueue.get_pwd: string;
begin
  Result := FMain.Jvpwd.Text;
end;

function Tdcqueue.got_direct_link(url1: string): boolean;
begin
  //��� �� ���� ������ ��������� �������
  Result := True;
  with FMain do
  begin
    if JvCheckBox3.Checked then
    begin
      Synchronize(viewinfo);
      Synchronize(step4);
      clbrd.Add(url);
      Synchronize(step5);
      Synchronize(del_link);
      Result := False;
    end;
  end;
end;

function Tdcqueue.hasNext: boolean;
begin
  Result := FMain.LBlist.Count <> 0;
end;

procedure Tdcqueue.hintmsg;
begin
  inherited;
  FMain.JvTrayIcon1.BalloonHint('��������', logstr);
end;

procedure Tdcqueue.Open;
begin
  inherited;
  FMain.Astart.Enabled := False;
  FMain.Apouse.Enabled := True;
  FMain.Astop.Enabled  := True;

  clbrd := TStringList.Create;
end;

procedure Tdcqueue.Setanonym(const Value: boolean);
begin
  inherited;
  Fmain.JvRadioButton2.Checked := Value;
end;

procedure Tdcqueue.set_login(const Value: string);
begin
  inherited;
  FMain.Jvlogin.Text := Value;
end;

procedure Tdcqueue.set_pwd(const Value: string);
begin
  inherited;
  FMain.Jvpwd.Text := Value;
end;

procedure Tdcqueue.step1;
begin
  inherited;
  Fmain.JvInstallLabel1.SetImage(1, -1);
  Fmain.JvInstallLabel1.SetImage(2, -1);
  Fmain.JvInstallLabel1.SetImage(3, -1);
  Fmain.JvInstallLabel1.SetImage(0, 1);
end;

procedure Tdcqueue.step2;
begin
  inherited;
  Fmain.JvInstallLabel1.SetImage(0, 0);
  Fmain.JvInstallLabel1.SetImage(1, 1);
  Fmain.JvInstallLabel1.SetImage(2, -1);
  Fmain.JvInstallLabel1.SetImage(3, -1);
end;

procedure Tdcqueue.step3;
begin
  inherited;
  Fmain.JvInstallLabel1.SetImage(0, 0);
  Fmain.JvInstallLabel1.SetImage(1, 0);
  Fmain.JvInstallLabel1.SetImage(2, 1);
  Fmain.JvInstallLabel1.SetImage(3, -1);
end;

procedure Tdcqueue.step4;
begin
  inherited;
  Fmain.JvInstallLabel1.SetImage(2, 0);
  Fmain.JvInstallLabel1.SetImage(3, 1);
end;

procedure Tdcqueue.step5;
begin
  inherited;
  Fmain.JvInstallLabel1.SetImage(3, 0);
end;

procedure Tdcqueue.viewinfo(Sender: TObject);
begin
  inherited;
  Fmain.Linfo.Caption := Format(clinfo, [furl, fname, fdisc, fsavename, fsize]);

end;


end.
