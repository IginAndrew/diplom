unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    KolTab: TADOTable;
    DSKol: TDataSource;
    KolTabDSDesigner: TAutoIncField;
    KolTabDSDesigner2: TWideStringField;
    KolTabDSDesigner3: TWideStringField;
    KolTabDSDesigner4: TIntegerField;
    DSDeti: TDataSource;
    DetiTab: TADOTable;
    DetiTabDSDesigner: TAutoIncField;
    DetiTabDSDesigner2: TWideStringField;
    DetiTabDSDesigner3: TDateTimeField;
    DetiTabDSDesigner4: TWideStringField;
    DetiTabDSDesigner5: TWideStringField;
    DetiTabDSDesigner6: TWideStringField;
    DetiTabDSDesigner7: TWideStringField;
    DetiTabDSDesigner8: TWideStringField;
    DetiTabDSDesigner9: TDateTimeField;
    DetiTabDSDesigner10: TDateTimeField;
    RodTab: TADOTable;
    DSRod: TDataSource;
    DSGR: TDataSource;
    GRTab: TADOTable;
    GRTabDSDesigner: TAutoIncField;
    GRTabDSDesigner2: TDateTimeField;
    GRTabDSDesigner3: TIntegerField;
    GRTabDSDesigner4: TWideStringField;
    ADOQuery1: TADOQuery;
    DSQuery: TDataSource;
    ADOTable1: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

uses Unit1, Unit3, Unit4, Unit8, Unit5, Unit6, Unit7, Unit9;

{$R *.dfm}

end.
