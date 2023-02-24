unit kolvo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfkolvo = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fkolvo: Tfkolvo;

implementation

{$R *.dfm}

procedure Tfkolvo.Button1Click(Sender: TObject);
begin
Close;
end;

procedure Tfkolvo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=CaFree
end;

end.
