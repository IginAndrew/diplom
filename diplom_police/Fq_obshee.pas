unit Fq_obshee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids;

type
  TFQ_obsh = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQ_obsh: TFQ_obsh;

implementation

uses DM, zapros;

{$R *.dfm}

end.
