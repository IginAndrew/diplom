unit prestupniki;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, DBCtrls, ExtCtrls, Mask;

type
  Tfprestupniki = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    tbl_prestupnik: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprestupniki: Tfprestupniki;

implementation

{$R *.dfm}




procedure Tfprestupniki.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree
end;

procedure Tfprestupniki.Button1Click(Sender: TObject);
begin
Close;
end;

end.
