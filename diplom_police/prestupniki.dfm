object fprestupniki: Tfprestupniki
  Left = 341
  Top = 333
  Width = 1201
  Height = 373
  Align = alClient
  BorderIcons = []
  Caption = #1055#1088#1077#1089#1090#1091#1087#1085#1080#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 8
    Width = 36
    Height = 24
    Caption = #1092#1080#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 25
    Top = 49
    Width = 54
    Height = 24
    Caption = #1072#1076#1088#1077#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 25
    Top = 168
    Width = 32
    Height = 24
    Caption = #1087#1086#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 25
    Top = 128
    Width = 105
    Height = 24
    Caption = #1085#1086#1084#1077#1088' '#1076#1077#1083#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 25
    Top = 90
    Width = 138
    Height = 24
    Caption = #1076#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 24
    Top = 272
    Width = 89
    Height = 33
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 336
    Top = 16
    Width = 497
    Height = 241
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1060#1048#1054
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1040#1076#1088#1077#1089
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072#1056#1086#1078#1076#1077#1085#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1086#1084#1077#1088#1044#1077#1083#1072
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 192
    Top = 16
    Width = 121
    Height = 21
    DataField = #1060#1048#1054
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 192
    Top = 56
    Width = 121
    Height = 21
    DataField = #1040#1076#1088#1077#1089
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 192
    Top = 96
    Width = 121
    Height = 21
    DataField = #1044#1072#1090#1072#1056#1086#1078#1076#1077#1085#1080#1103
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 192
    Top = 128
    Width = 121
    Height = 21
    DataField = #1053#1086#1084#1077#1088#1044#1077#1083#1072
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 192
    Top = 168
    Width = 121
    Height = 21
    DataField = #1055#1086#1083
    DataSource = DataSource1
    TabOrder = 6
  end
  object Panel1: TPanel
    Left = 336
    Top = 264
    Width = 497
    Height = 49
    TabOrder = 7
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 495
      Height = 47
      DataSource = DataSource1
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 848
    Top = 16
    Width = 313
    Height = 297
    Caption = #1092#1086#1090#1086
    TabOrder = 8
  end
  object tbl_prestupnik: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1055#1088#1077#1089#1090#1091#1087#1085#1080#1082
    Left = 136
    Top = 272
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='#1087#1086#1083#1080#1094#1080#1103'.accdb;Pers' +
      'ist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 168
    Top = 272
  end
  object DataSource1: TDataSource
    DataSet = tbl_prestupnik
    Left = 224
    Top = 280
  end
end
