unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Menus, Buttons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    BitBtn1: TBitBtn;
    N5: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit2, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form7.Show;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
   Form6.Show;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Form1.Free;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
CanClose:=MessageDlg ('Закрыть приложение?', mtConfirmation,
          [mbYes, mbNo],0)= mrYes;
  if
CanClose = True then begin
DataModule2.KolTab.Close;
DataModule2.DetiTab.Close;
DataModule2.RodTab.Close;
DataModule2.GRTab.Close;
Form3.Free;
Form4.Free;
Form5.Free;
Form6.Free;
Form7.Free;
end;
    end;
procedure TForm1.N3Click(Sender: TObject);
begin
 Form8.Show;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
   form9.QuickRep1.PreviewModal;
   
end;

end.
