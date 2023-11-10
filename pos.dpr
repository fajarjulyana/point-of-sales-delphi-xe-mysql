program pos;

uses
  Vcl.Forms,
  MainForm in 'src\MainForm.pas' {FormUtama},
  DataModule in 'src\DataModule.pas' {DataModuleActive: TDataModule},
  InputBarang in 'src\InputBarang.pas' {InputBrg};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormUtama, FormUtama);
  Application.CreateForm(TDataModuleActive, DataModuleActive);
  Application.CreateForm(TInputBrg, InputBrg);
  Application.Run;
end.
