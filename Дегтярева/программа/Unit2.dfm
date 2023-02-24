object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 454
  Top = 144
  Height = 346
  Width = 381
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='#1044#1077#1090#1089#1082#1080#1081' '#1089#1072#1076'.mdb;Per' +
      'sist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 48
  end
  object KolTab: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1057#1086#1090#1088#1091#1076#1085#1080#1082
    Left = 328
    Top = 8
    object KolTabDSDesigner: TAutoIncField
      FieldName = #1050#1086#1076' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      ReadOnly = True
    end
    object KolTabDSDesigner2: TWideStringField
      FieldName = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Size = 255
    end
    object KolTabDSDesigner3: TWideStringField
      FieldName = #1076#1086#1083#1078#1085#1086#1089#1090#1100
      Size = 255
    end
    object KolTabDSDesigner4: TIntegerField
      FieldName = #1090#1077#1083#1077#1092#1086#1085
    end
  end
  object DSKol: TDataSource
    DataSet = KolTab
    Left = 328
    Top = 56
  end
  object DSDeti: TDataSource
    DataSet = DetiTab
    Left = 288
    Top = 56
  end
  object DetiTab: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1076#1077#1090#1103#1093
    Left = 280
    Top = 8
    object DetiTabDSDesigner: TAutoIncField
      FieldName = #1050#1086#1076' '#1088#1077#1073#1077#1085#1082#1072
      ReadOnly = True
    end
    object DetiTabDSDesigner2: TWideStringField
      FieldName = #1060#1048#1054' '#1088#1077#1073#1077#1085#1082#1072
      Size = 255
    end
    object DetiTabDSDesigner3: TDateTimeField
      FieldName = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    end
    object DetiTabDSDesigner4: TWideStringField
      FieldName = #1055#1086#1083
      Size = 255
    end
    object DetiTabDSDesigner5: TWideStringField
      FieldName = #1057#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086' '#1086' '#1088#1086#1078#1076#1077#1085#1080#1080
      Size = 255
    end
    object DetiTabDSDesigner6: TWideStringField
      FieldName = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
      Size = 255
    end
    object DetiTabDSDesigner7: TWideStringField
      FieldName = #1057#1053#1048#1051#1057
      Size = 255
    end
    object DetiTabDSDesigner8: TWideStringField
      FieldName = #1044#1086#1084#1072#1096#1085#1080#1081' '#1072#1076#1088#1077#1089
      Size = 255
    end
    object DetiTabDSDesigner9: TDateTimeField
      FieldName = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
    end
    object DetiTabDSDesigner10: TDateTimeField
      FieldName = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
    end
  end
  object RodTab: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1088#1086#1076#1080#1090#1077#1083#1103#1093
    Left = 232
    Top = 8
  end
  object DSRod: TDataSource
    DataSet = RodTab
    Left = 232
    Top = 64
  end
  object DSGR: TDataSource
    DataSet = GRTab
    Left = 176
    Top = 72
  end
  object GRTab: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1075#1088#1091#1087#1087#1072#1093' '#1087#1086' '#1075#1086#1076#1072#1084
    Left = 176
    Top = 16
    object GRTabDSDesigner: TAutoIncField
      FieldName = #1050#1086#1076' '#1075#1088#1091#1087#1087#1099
      ReadOnly = True
    end
    object GRTabDSDesigner2: TDateTimeField
      FieldName = #1053#1072#1095#1072#1083#1086' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1075#1086#1076#1072
    end
    object GRTabDSDesigner3: TIntegerField
      FieldName = #1085#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1072
    end
    object GRTabDSDesigner4: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1099
      Size = 255
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DSQuery
    Parameters = <>
    Left = 224
    Top = 152
  end
  object DSQuery: TDataSource
    DataSet = ADOTable1
    Left = 152
    Top = 152
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1076#1077#1090#1103#1093
    Left = 192
    Top = 224
  end
end
