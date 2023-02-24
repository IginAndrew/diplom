object fsotrudniki: Tfsotrudniki
  Left = 339
  Top = 268
  Width = 1168
  Height = 499
  Align = alCustom
  BorderIcons = []
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
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
    Left = 16
    Top = 64
    Width = 31
    Height = 16
    Caption = #1060#1048#1054
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 296
    Width = 56
    Height = 16
    Caption = #1055#1072#1089#1087#1086#1088#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 256
    Width = 60
    Height = 16
    Caption = #1058#1077#1083#1077#1092#1086#1085
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 136
    Width = 55
    Height = 16
    Caption = #1042#1086#1079#1088#1072#1089#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 96
    Width = 49
    Height = 16
    Caption = #1047#1074#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 176
    Width = 26
    Height = 16
    Caption = #1055#1086#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 216
    Width = 40
    Height = 16
    Caption = #1040#1076#1088#1077#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 16
    Top = 344
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
  object DBEdit1: TDBEdit
    Left = 88
    Top = 96
    Width = 121
    Height = 21
    DataField = #1047#1074#1072#1085#1080#1077
    DataSource = ds_sotrudnik
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 136
    Width = 121
    Height = 21
    DataField = #1042#1086#1079#1088#1072#1089#1090
    DataSource = ds_sotrudnik
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 88
    Top = 176
    Width = 121
    Height = 21
    DataField = #1055#1086#1083
    DataSource = ds_sotrudnik
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 88
    Top = 216
    Width = 121
    Height = 21
    DataField = #1040#1076#1088#1077#1089
    DataSource = ds_sotrudnik
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 88
    Top = 256
    Width = 121
    Height = 21
    DataField = #1058#1077#1083#1077#1092#1086#1085
    DataSource = ds_sotrudnik
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 88
    Top = 296
    Width = 121
    Height = 21
    DataField = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077#1044#1072#1085#1085#1099#1077
    DataSource = ds_sotrudnik
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 88
    Top = 64
    Width = 121
    Height = 21
    DataField = #1060#1048#1054
    DataSource = ds_sotrudnik
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 240
    Top = 328
    Width = 873
    Height = 49
    TabOrder = 8
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 871
      Height = 48
      DataSource = ds_sotrudnik
      Align = alTop
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 216
    Top = 64
    Width = 521
    Height = 257
    TabOrder = 9
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 519
      Height = 255
      Align = alClient
      DataSource = ds_sotrudnik
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = #1060#1048#1054
          Width = 173
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1047#1074#1072#1085#1080#1077
          Width = 204
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1058#1077#1083#1077#1092#1086#1085
          Width = 245
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 752
    Top = 64
    Width = 353
    Height = 257
    Caption = #1092#1086#1090#1086
    TabOrder = 10
  end
  object ado_sortudnik: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='#1087#1086#1083#1080#1094#1080#1103'.accdb;Pers' +
      'ist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 120
    Top = 336
  end
  object tbl_sotrudnik: TADOTable
    Active = True
    Connection = ado_sortudnik
    CursorType = ctStatic
    TableName = #1057#1086#1090#1088#1091#1076#1085#1080#1082
    Left = 160
    Top = 336
  end
  object ds_sotrudnik: TDataSource
    DataSet = tbl_sotrudnik
    Left = 200
    Top = 336
  end
end
