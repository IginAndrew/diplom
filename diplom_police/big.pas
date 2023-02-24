unit big;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls;

type
  TF_big = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    TabSheet5: TTabSheet;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Edit2: TEdit;
    Label2: TLabel;
    Button4: TButton;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    GroupBox7: TGroupBox;
    GroupBox9: TGroupBox;
    Button5: TButton;
    Button6: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    Image1: TImage;
    Label5: TLabel;
    DBGrid5: TDBGrid;
    GroupBox10: TGroupBox;
    DBGrid7: TDBGrid;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    GroupBox11: TGroupBox;
    DBGrid8: TDBGrid;
    Panel5: TPanel;
    DBNavigator2: TDBNavigator;
    Button7: TButton;
    Button8: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_big: TF_big;

implementation

uses main, DM, sotrudnik, prestupnik, poterpev, FQ_sotrud, zapros;

{$R *.dfm}

procedure TF_big.Button3Click(Sender: TObject);
begin
F_sotrudnik.ShowModal;
end;

procedure TF_big.Button1Click(Sender: TObject);
begin
 fDM.ADOTab_sotr.Append;
   fDM.ADOTab_dolg.Append;
   F_sotrudnik.ShowModal;
end;

procedure TF_big.Edit2Change(Sender: TObject);
begin
 fDM.MyLocate(Edit2.Text);
end;

procedure TF_big.Button7Click(Sender: TObject);
begin
 F_prestupnik.ShowModal;
end;

procedure TF_big.Button4Click(Sender: TObject);
begin
fDM.ADOTab_prestup.Append;
   fDM.ADOTab_time.Append;
   fDM.ADOTab_vid.Append;
   F_prestupnik.ShowModal;
end;

procedure TF_big.Button5Click(Sender: TObject);
begin
 F_poterpev.ShowModal;
end;

procedure TF_big.Button6Click(Sender: TObject);
begin
  fDM.ADOTab_postr.Append;
   F_poterpev.ShowModal;
end;

procedure TF_big.Button8Click(Sender: TObject);
begin
 F_zapros.ShowModal;
end;

end.
