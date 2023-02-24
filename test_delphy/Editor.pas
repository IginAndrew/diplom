unit Editor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfEditor = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    DBComboBox2: TDBComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label17: TLabel;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    procedure GroupBox1Exit(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure GroupBox4Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEditor: TfEditor;

implementation

{$R *.dfm}

uses DM, main;

procedure TfEditor.Button1Click(Sender: TObject);
begin
 if fDM.ADOTab_telephon.Modified then
     fDM.ADOTab_telephon.Post;
  fDM.ADOTab_telephon.Append;
  DBEdit14.SetFocus;
end;

procedure TfEditor.Button2Click(Sender: TObject);
begin
 if fDM.ADOTab_data.Modified then
    fDM.ADOTab_data.Post;
  if fDM.ADOTab_dolojnost.Modified then
    fDM.ADOTab_dolojnost.Post;
  if fDM.ADOTab_addres.Modified then
    fDM.ADOTab_addres.Post;
  if fDM.ADOTab_telephon.Modified then
    fDM.ADOTab_telephon.Post;
  Close;
end;

procedure TfEditor.Button3Click(Sender: TObject);
begin
  fDM.ADOTab_data.Append;
  fDM.ADOTab_dolojnost.Append;
  fDM.ADOTab_addres.Append;
  fDM.ADOTab_telephon.Append;
  DBEdit1.SetFocus;
end;

procedure TfEditor.GroupBox1Exit(Sender: TObject);
begin
 if fDM.ADOTab_data.Modified then
    fDM.ADOTab_data.Post;
end;
procedure TfEditor.GroupBox2Exit(Sender: TObject);
begin
 if fDM.ADOTab_data.Modified then
    fDM.ADOTab_data.Post;
end;

procedure TfEditor.GroupBox3Exit(Sender: TObject);
begin
   if fDM.ADOTab_data.Modified then
    fDM.ADOTab_data.Post;
end;

procedure TfEditor.GroupBox4Exit(Sender: TObject);
begin
    if fDM.ADOTab_data.Modified then
    fDM.ADOTab_data.Post;
end;

end.
