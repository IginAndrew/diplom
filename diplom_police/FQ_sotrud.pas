unit FQ_sotrud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls;

type
  TF_otchet_sotr = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_otchet_sotr: TF_otchet_sotr;

implementation

uses DM, big;

{$R *.dfm}

end.
