unit dwqueue;


interface   //этот класс родитель для классов работающих с очередью закачки


uses SysUtils;

type
  Tdwqueue = class
  private

  protected
    Flogin, Fpwd: string;
    Fanonym:      boolean;

    procedure set_login(const Value: string); virtual;
    procedure set_pwd(const Value: string); virtual;
    function get_login: string; virtual;
    function get_pwd: string; virtual;
    procedure Setanonym(const Value: boolean); virtual;
    function getanonym: boolean; virtual;
  public
    perent: TObject;
    fname, fdisc, furl, fsavename, fsize: string; //имя и описание ссылки
    url:    string; //текущая ссылка
    logstr: string;
    procedure del_link(Sender: TObject); virtual; //удалить ссылку (когда зкачали)
    function get_link: string; virtual; //получит ссылку
    procedure addlog(Sender: TObject); virtual;
    procedure hintmsg(Sender: TObject); virtual;
    procedure Open(Sender: TObject); virtual;
    procedure Close(Sender: TObject); virtual;
    procedure step1(Sender: TObject); virtual;
    procedure step2(Sender: TObject); virtual;
    procedure step3(Sender: TObject); virtual;
    procedure step4(Sender: TObject); virtual;
    procedure step5(Sender: TObject); virtual;
    procedure viewinfo(Sender: TObject); virtual;
    function got_direct_link(url1: string): boolean; virtual;
    function download(url: string): boolean; virtual;
    function GetSpead: cardinal; virtual; //TODO сделать нормальный подсчет скорости
    function hasNext: boolean; virtual; //есть ли следующая ссылка

    property anonym: boolean Read getanonym Write Setanonym;
    property login: string Read get_login Write set_login;
    property pwd: string Read get_pwd Write set_pwd;
  end;

  EdcRestart = class(Exception)   //искшлючение означает что нужен раестарт закачки
  end;

implementation

{ Tdwqueue }

procedure Tdwqueue.addlog;
begin

end;

procedure Tdwqueue.Close;
begin

end;

procedure Tdwqueue.del_link;
begin

end;

function Tdwqueue.download(url: string): boolean;
begin

end;

function Tdwqueue.getanonym: boolean;
begin

end;

function Tdwqueue.GetSpead: cardinal;
begin

end;

function Tdwqueue.get_link: string;
begin

end;

function Tdwqueue.get_login: string;
begin

end;

function Tdwqueue.get_pwd: string;
begin

end;

function Tdwqueue.got_direct_link(url1: string): boolean;
begin

end;

function Tdwqueue.hasNext: boolean;
begin

end;

procedure Tdwqueue.hintmsg;
begin

end;

procedure Tdwqueue.Open;
begin

end;

procedure Tdwqueue.Setanonym(const Value: boolean);
begin

end;

procedure Tdwqueue.set_login(const Value: string);
begin

end;

procedure Tdwqueue.set_pwd(const Value: string);
begin

end;

procedure Tdwqueue.step1;
begin

end;

procedure Tdwqueue.step2;
begin

end;

procedure Tdwqueue.step3;
begin

end;

procedure Tdwqueue.step4;
begin

end;

procedure Tdwqueue.step5;
begin

end;

procedure Tdwqueue.viewinfo(Sender: TObject);
begin

end;



end.
