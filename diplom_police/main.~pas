unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TF_main = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    par: TEdit;
    Button1: TButton;
    log: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_main: TF_main;

implementation

uses big;

{$R *.dfm}

procedure TF_main.Button1Click(Sender: TObject);
var a,s:string;
begin
a:='1';
s:='1';
if (log.Text=a) and (par.Text=s) then
F_big.Show
//Application.CreateForm(TF_big, F_big);
else showmessage ('Вы ввели неправильный пароль !');
end;
end.
