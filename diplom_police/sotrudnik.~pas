unit sotrudnik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids, Mask;

type
  TF_sotrudnik = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    Label12: TLabel;
    edit11: TDBEdit;
    DBImage1: TDBImage;
    edit1: TDBEdit;
    edit2: TDBEdit;
    edit3: TDBEdit;
    edit4: TDBEdit;
    edit5: TDBEdit;
    edit6: TDBEdit;
    edit7: TDBEdit;
    edit8: TDBEdit;
    edit9: TDBEdit;
    edit10: TDBEdit;
    procedure GroupBox1Exit(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_sotrudnik: TF_sotrudnik;

implementation

uses big, DM;

{$R *.dfm}

procedure TF_sotrudnik.GroupBox1Exit(Sender: TObject);
begin
  if fDM.ADOTab_sotr.Modified then
    fDM.ADOTab_sotr.Post;

end;

procedure TF_sotrudnik.GroupBox2Exit(Sender: TObject);
begin
    if fDM.ADOTab_dolg.Modified then
    fDM.ADOTab_dolg.Post;

end;

procedure TF_sotrudnik.Button1Click(Sender: TObject);
begin
  if fDM.ADOTab_sotr.Modified then
    fDM.ADOTab_sotr.Post;
  if fDM.ADOTab_dolg.Modified then
    fDM.ADOTab_dolg.Post;
  Close;

end;

procedure TF_sotrudnik.Button2Click(Sender: TObject);
begin
   fDM.ADOTab_sotr.Append;
   fDM.ADOTab_dolg.Append;
   edit1.SetFocus;
end;

end.
