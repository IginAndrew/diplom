program ok;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  DM in 'DM.pas' {fDM: TDataModule},
  Editor in 'Editor.pas' {fEditor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfDM, fDM);
  Application.CreateForm(TfEditor, fEditor);
  Application.Run;
end.
