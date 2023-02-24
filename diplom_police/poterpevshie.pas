unit poterpevshie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfpoterpevshie = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpoterpevshie: Tfpoterpevshie;

implementation

{$R *.dfm}

procedure Tfpoterpevshie.Button1Click(Sender: TObject);
begin
Close;
end;

procedure Tfpoterpevshie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=CaFree
end;

end.
