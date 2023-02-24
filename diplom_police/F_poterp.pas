unit F_poterp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls;

type
  TFQ_poterp = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQ_poterp: TFQ_poterp;

implementation

uses DM, zapros;

{$R *.dfm}

end.
