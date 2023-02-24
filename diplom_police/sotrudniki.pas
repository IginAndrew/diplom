unit sotrudniki;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,Mask, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  Tfsotrudniki = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    ado_sortudnik: TADOConnection;
    tbl_sotrudnik: TADOTable;
    ds_sotrudnik: TDataSource;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsotrudniki: Tfsotrudniki;

implementation


{$R *.dfm}

procedure Tfsotrudniki.Button1Click(Sender: TObject);
begin
Close;
end;

procedure Tfsotrudniki.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree
end;

end.
