program Project1;


uses
  Forms,
  Unit1 in 'Unit1.pas' {FMain},
  code_filter in 'code_filter.pas',
  neuralOCR in 'neuralOCR.pas',
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas',
  getfile in 'getfile.pas',
  Unit4 in 'Unit4.pas' {Form4},
  shutdown in 'shutdown.pas',
  regger in 'regger.pas',
  acc_tester in 'acc_tester.pas',
  Unit6 in 'Unit6.pas' {Fupload},
  freespace in 'freespace.pas',
  dwqueue in 'dwqueue.pas',
  dcqueue in 'dcqueue.pas',
  strings in 'strings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TFupload, Fupload);
  Application.Run;
end.
