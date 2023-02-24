program ok;

uses
  Forms,
  Main in 'Main.pas' {fName},
  DM in 'DM.pas' {fDM: TDataModule},
  Editor in 'Editor.pas' {fEditor};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfName, fName);
  Application.CreateForm(TfDM, fDM);
  Application.CreateForm(TfEditor, fEditor);
  Application.Run;
end.
