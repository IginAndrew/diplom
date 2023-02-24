unit Fq_prest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls;

type
  TFQ_prestup = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQ_prestup: TFQ_prestup;

implementation

uses DM, FQ_sotrud;

{$R *.dfm}

end.
