unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TfDM = class(TDataModule)
    ADOCon: TADOConnection;
    ADOTab_addres: TADOTable;
    DS_addres: TDataSource;
    DS_doljnost: TDataSource;
    DS_data: TDataSource;
    ADOTab_dolojnost: TADOTable;
    ADOTab_data: TADOTable;
    DS_telephon: TDataSource;
    ADOTab_telephon: TADOTable;
    ADOTab_addres���������: TIntegerField;
    ADOTab_addres������: TWideStringField;
    ADOTab_addres�����: TWideStringField;
    ADOTab_addres���_�����: TWideStringField;
    ADOTab_dolojnost���������: TIntegerField;
    ADOTab_dolojnost�����: TWideStringField;
    ADOTab_dolojnost���������: TWideStringField;
    ADOTab_data����: TAutoIncField;
    ADOTab_data�������: TWideStringField;
    ADOTab_data���: TWideStringField;
    ADOTab_data��������: TWideStringField;
    ADOTab_data���: TWideStringField;
    ADOTab_data���_�����: TBooleanField;
    ADOTab_data�����: TWordField;
    ADOTab_data����_����: TDateTimeField;
    ADOTab_data����_����: TDateTimeField;
    ADOTab_data����: TWordField;
    ADOTab_data�����������: TWideStringField;
    ADOTab_data���������������: TBooleanField;
    ADOTab_telephon���������: TIntegerField;
    ADOTab_telephon�������: TWideStringField;
    ADOTab_telephon����������: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  procedure MyLocate (s : String);
  end;

var
  fDM: TfDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
procedure TfDM.MyLocate (s : String);
begin
  ADOTab_data.Locate('�������', s, [loPartialKey]);
end;

end.
