unit prestupnik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, Mask;

type
  TF_prestupnik = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
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
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
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
    edit11: TDBEdit;
    edit12: TDBEdit;
    edit13: TDBEdit;
    DBComboBox1: TDBComboBox;
    procedure GroupBox1Click(Sender: TObject);
    procedure GroupBox2Click(Sender: TObject);
    procedure GroupBox3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_prestupnik: TF_prestupnik;

implementation

uses big, DM;

{$R *.dfm}

procedure TF_prestupnik.GroupBox1Click(Sender: TObject);
begin
 if fDM.ADOTab_prestup.Modified then
    fDM.ADOTab_prestup.Post;
end;

procedure TF_prestupnik.GroupBox2Click(Sender: TObject);
begin
 if fDM.ADOTab_time.Modified then
    fDM.ADOTab_time.Post;
end;

procedure TF_prestupnik.GroupBox3Click(Sender: TObject);
begin
 if fDM.ADOTab_vid.Modified then
    fDM.ADOTab_vid.Post;
end;

procedure TF_prestupnik.Button1Click(Sender: TObject);
begin
 if fDM.ADOTab_prestup.Modified then
    fDM.ADOTab_prestup.Post;
  if fDM.ADOTab_time.Modified then
    fDM.ADOTab_time.Post;
  if fDM.ADOTab_vid.Modified then
    fDM.ADOTab_vid.Post;
  Close;
end;

procedure TF_prestupnik.Button2Click(Sender: TObject);
begin
  fDM.ADOTab_prestup.Append;
   fDM.ADOTab_time.Append;
   fDM.ADOTab_vid.Append;
   edit1.SetFocus;
end;

end.
