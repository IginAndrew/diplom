unit poterpev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TF_poterpev = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    edit2: TDBEdit;
    edit3: TDBEdit;
    edit4: TDBEdit;
    procedure GroupBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_poterpev: TF_poterpev;

implementation

uses big, DM;

{$R *.dfm}

procedure TF_poterpev.GroupBox1Click(Sender: TObject);
begin
    if fDM.ADOTab_postr.Modified then
    fDM.ADOTab_postr.Post;
end;

procedure TF_poterpev.Button1Click(Sender: TObject);
begin
 if fDM.ADOTab_postr.Modified then
    fDM.ADOTab_postr.Post;
  Close;
end;

procedure TF_poterpev.Button2Click(Sender: TObject);
begin
  fDM.ADOTab_postr.Append; 
  edit1.SetFocus;
end;

end.
