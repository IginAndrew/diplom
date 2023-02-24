program cop;

uses
  Vcl.Forms,
  main in 'main.pas' {Form_main},
  DM in 'DM.pas' {DataModule1: TDataModule},
  glavn in 'glavn.pas' {Form_pol};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_main, Form_main);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm_pol, Form_pol);
  Application.Run;
end.
