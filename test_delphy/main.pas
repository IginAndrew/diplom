unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, DM;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Editor;


procedure TForm1.Button2Click(Sender: TObject);
begin
feditor.showmodal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  fDM.ADOTab_data.Append;
  fDM.ADOTab_dolojnost.Append;
  fDM.ADOTab_addres.Append;
  fDM.ADOTab_telephon.Append;
  fEditor.ShowModal;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
 fDm.MyLocate(Edit1.Text);
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
 feditor.showmodal;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
 if RadioButton1.Checked then
DBGrid2.DataSource := fDM.DS_addres;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
 DBGrid2.DataSource := fDM.DS_telephon;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
 DBGrid2.DataSource := fDM.DS_doljnost;
end;

end.
