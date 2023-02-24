object F_prestupnik: TF_prestupnik
  Left = 270
  Top = 178
  Width = 870
  Height = 621
  Caption = #1055#1088#1077#1089#1090#1091#1087#1085#1080#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 865
    Height = 193
    Align = alTop
    Caption = #1051#1080#1095#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    TabOrder = 0
    OnClick = GroupBox1Click
    object Label1: TLabel
      Left = 80
      Top = 32
      Width = 23
      Height = 13
      Caption = #1060#1080#1086
    end
    object Label2: TLabel
      Left = 80
      Top = 64
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object Label3: TLabel
      Left = 81
      Top = 104
      Width = 45
      Height = 13
      Caption = #1058#1077#1083#1077#1092#1086#1085
    end
    object Label4: TLabel
      Left = 496
      Top = 24
      Width = 79
      Height = 13
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    end
    object Label5: TLabel
      Left = 496
      Top = 64
      Width = 20
      Height = 13
      Caption = #1055#1086#1083
    end
    object Label6: TLabel
      Left = 496
      Top = 104
      Width = 38
      Height = 13
      Caption = #8470' '#1076#1077#1083#1086
    end
    object Label7: TLabel
      Left = 200
      Top = 144
      Width = 63
      Height = 13
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
    end
    object edit1: TDBEdit
      Left = 152
      Top = 24
      Width = 121
      Height = 21
      DataField = #1060#1048#1054
      DataSource = fDM.DS_prestup
      TabOrder = 0
    end
    object edit2: TDBEdit
      Left = 152
      Top = 56
      Width = 185
      Height = 21
      DataField = #1040#1076#1088#1077#1089
      DataSource = fDM.DS_prestup
      TabOrder = 1
    end
    object edit3: TDBEdit
      Left = 152
      Top = 96
      Width = 121
      Height = 21
      DataField = #1058#1077#1083#1077#1092#1086#1085
      DataSource = fDM.DS_prestup
      TabOrder = 2
    end
    object edit5: TDBEdit
      Left = 600
      Top = 16
      Width = 121
      Height = 21
      DataField = #1044#1072#1090#1072#1056#1086#1078#1076#1077#1085#1080#1103
      DataSource = fDM.DS_prestup
      TabOrder = 3
    end
    object edit6: TDBEdit
      Left = 600
      Top = 96
      Width = 121
      Height = 21
      DataField = #1053#1086#1084#1077#1088#1044#1077#1083#1072
      DataSource = fDM.DS_prestup
      TabOrder = 4
    end
    object edit4: TDBEdit
      Left = 280
      Top = 144
      Width = 265
      Height = 21
      DataField = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      DataSource = fDM.DS_prestup
      TabOrder = 5
    end
    object DBComboBox1: TDBComboBox
      Left = 600
      Top = 56
      Width = 129
      Height = 21
      DataField = #1055#1086#1083
      DataSource = fDM.DS_prestup
      ItemHeight = 13
      Items.Strings = (
        #1084
        #1078)
      TabOrder = 6
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 344
    Width = 857
    Height = 169
    Caption = 'Panel1'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 855
      Height = 167
      Align = alClient
      DataSource = fDM.DS_prestup
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 193
    Width = 865
    Height = 80
    Align = alTop
    Caption = #1052#1077#1089#1090#1086', '#1074#1088#1077#1084#1103' '#1087#1088#1077#1089#1090#1091#1087#1083#1077#1085#1080#1103
    TabOrder = 2
    OnClick = GroupBox2Click
    object Label8: TLabel
      Left = 96
      Top = 40
      Width = 106
      Height = 13
      Caption = #1042#1088#1077#1084#1103' '#1087#1088#1077#1089#1090#1091#1087#1083#1077#1085#1080#1103
    end
    object Label9: TLabel
      Left = 464
      Top = 40
      Width = 105
      Height = 13
      Caption = #1052#1077#1089#1090#1086' '#1087#1088#1077#1089#1090#1091#1087#1083#1077#1085#1080#1103
    end
    object edit7: TDBEdit
      Left = 224
      Top = 40
      Width = 121
      Height = 21
      DataField = #1042#1088#1077#1084#1103#1055#1088#1077#1089#1090#1091#1087#1083#1077#1085#1080#1103
      DataSource = fDM.DS_time
      TabOrder = 0
    end
    object edit8: TDBEdit
      Left = 584
      Top = 32
      Width = 121
      Height = 21
      DataField = #1052#1077#1089#1090#1086#1055#1088#1077#1089#1090#1091#1087#1083#1077#1085#1080#1103
      DataSource = fDM.DS_time
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 273
    Width = 865
    Height = 73
    Align = alTop
    Caption = #1042#1080#1076' '#1087#1088#1077#1089#1090#1091#1087#1083#1077#1085#1080#1103
    TabOrder = 3
    OnClick = GroupBox3Click
    object Label10: TLabel
      Left = 72
      Top = 24
      Width = 56
      Height = 13
      Caption = #1053#1072#1082#1072#1079#1072#1085#1080#1077
    end
    object Label11: TLabel
      Left = 72
      Top = 48
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object Label12: TLabel
      Left = 312
      Top = 16
      Width = 25
      Height = 13
      Caption = #1057#1088#1086#1082
    end
    object Label13: TLabel
      Left = 312
      Top = 48
      Width = 35
      Height = 13
      Caption = #1057#1090#1072#1090#1100#1103
    end
    object Label14: TLabel
      Left = 536
      Top = 32
      Width = 63
      Height = 13
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
    end
    object edit9: TDBEdit
      Left = 176
      Top = 16
      Width = 121
      Height = 21
      DataField = #1053#1072#1082#1072#1079#1072#1085#1080#1077
      DataSource = fDM.DS_vid
      TabOrder = 0
    end
    object edit10: TDBEdit
      Left = 176
      Top = 40
      Width = 121
      Height = 21
      DataField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DataSource = fDM.DS_vid
      TabOrder = 1
    end
    object edit11: TDBEdit
      Left = 368
      Top = 16
      Width = 121
      Height = 21
      DataField = #1057#1088#1086#1082
      DataSource = fDM.DS_vid
      TabOrder = 2
    end
    object edit12: TDBEdit
      Left = 368
      Top = 40
      Width = 121
      Height = 21
      DataField = #1057#1090#1072#1090#1100#1103
      DataSource = fDM.DS_vid
      TabOrder = 3
    end
    object edit13: TDBEdit
      Left = 608
      Top = 24
      Width = 121
      Height = 21
      DataField = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      DataSource = fDM.DS_vid
      TabOrder = 4
    end
  end
  object Button1: TButton
    Left = 48
    Top = 528
    Width = 113
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1074#1099#1081#1090#1080
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 528
    Width = 81
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1077#1097#1077
    TabOrder = 5
    OnClick = Button2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 576
    Top = 528
    Width = 224
    Height = 25
    DataSource = fDM.DS_prestup
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 6
  end
end
