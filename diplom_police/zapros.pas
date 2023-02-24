unit zapros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TF_zapros = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_zapros: TF_zapros;

implementation

uses big, DM, FQ_sotrud, Fq_prest, F_poterp, Fq_obshee;

{$R *.dfm}

procedure TF_zapros.Button1Click(Sender: TObject);
begin
F_otchet_sotr.ShowModal;
end;

procedure TF_zapros.Button2Click(Sender: TObject);
begin
 FQ_prestup.ShowModal;
end;

procedure TF_zapros.Button3Click(Sender: TObject);
begin
  FQ_poterp.ShowModal;
end;

procedure TF_zapros.Button4Click(Sender: TObject);
begin
  FQ_obsh.ShowModal;
end;

end.
