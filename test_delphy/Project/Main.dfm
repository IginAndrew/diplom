object fName: TfName
  Left = 292
  Top = 216
  Width = 1305
  Height = 675
  Caption = #1054#1090#1076#1077#1083' '#1082#1072#1076#1088#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 508
    Width = 1289
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 81
    Align = alTop
    TabOrder = 0
    object Bevel1: TBevel
      Left = 296
      Top = 0
      Width = 2
      Height = 81
    end
    object Label1: TLabel
      Left = 328
      Top = 16
      Width = 96
      Height = 13
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
    end
    object Bevel2: TBevel
      Left = 776
      Top = 0
      Width = 2
      Height = 81
    end
    object RadioButton1: TRadioButton
      Left = 16
      Top = 32
      Width = 81
      Height = 17
      Caption = #1040#1076#1088#1077#1089
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 112
      Top = 32
      Width = 97
      Height = 17
      Caption = #1058#1077#1083#1077#1092#1086#1085#1099
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 200
      Top = 32
      Width = 105
      Height = 17
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      TabOrder = 2
      OnClick = RadioButton3Click
    end
    object Edit1: TEdit
      Left = 320
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 3
      OnChange = Edit1Change
    end
    object Button1: TButton
      Left = 456
      Top = 48
      Width = 75
      Height = 25
      Caption = #1053#1072#1081#1090#1080
      TabOrder = 4
    end
    object Button2: TButton
      Left = 816
      Top = 32
      Width = 105
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 952
      Top = 32
      Width = 105
      Height = 25
      Caption = #1053#1086#1074#1099#1081' '#1089#1086#1090#1088#1091#1076#1085#1080#1082
      TabOrder = 6
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 1289
    Height = 427
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1287
      Height = 425
      Align = alClient
      DataSource = fDM.DSLichData
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 511
    Width = 1289
    Height = 125
    Align = alBottom
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 1287
      Height = 123
      Align = alClient
      DataSource = fDM.DSAdres
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
end
