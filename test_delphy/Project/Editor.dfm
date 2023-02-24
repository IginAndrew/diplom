object fEditor: TfEditor
  Left = 381
  Top = 187
  Width = 896
  Height = 724
  Caption = 'fEditor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 505
    Top = 630
    Width = 157
    Height = 13
    Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1087#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072#1084
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 865
    Height = 209
    Caption = #1051#1080#1095#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnExit = GroupBox1Exit
    object Label1: TLabel
      Left = 24
      Top = 27
      Width = 49
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label2: TLabel
      Left = 50
      Top = 58
      Width = 22
      Height = 13
      Caption = #1048#1084#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 25
      Top = 89
      Width = 47
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    end
    object Label4: TLabel
      Left = 51
      Top = 116
      Width = 20
      Height = 13
      Caption = #1055#1086#1083
    end
    object Label5: TLabel
      Left = 20
      Top = 147
      Width = 79
      Height = 13
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    end
    object Label6: TLabel
      Left = 6
      Top = 178
      Width = 93
      Height = 13
      Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
    end
    object Label7: TLabel
      Left = 469
      Top = 114
      Width = 66
      Height = 13
      Caption = #1050#1086#1083'-'#1074#1086' '#1076#1077#1090#1077#1081
    end
    object Label8: TLabel
      Left = 447
      Top = 146
      Width = 89
      Height = 13
      Caption = #1057#1090#1072#1078' '#1088#1072#1073#1086#1090#1099', '#1083#1077#1090
    end
    object Label9: TLabel
      Left = 468
      Top = 177
      Width = 68
      Height = 13
      Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 24
      Width = 121
      Height = 21
      DataField = #1060#1072#1084#1080#1083#1080#1103
      DataSource = fDM.DSLichData
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 56
      Width = 121
      Height = 21
      DataField = #1048#1084#1103
      DataSource = fDM.DSLichData
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 80
      Top = 88
      Width = 121
      Height = 21
      DataField = #1054#1090#1095#1077#1089#1090#1074#1086
      DataSource = fDM.DSLichData
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 104
      Top = 144
      Width = 121
      Height = 21
      DataField = #1044#1072#1090#1072'_'#1056#1086#1078#1076
      DataSource = fDM.DSLichData
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 104
      Top = 176
      Width = 121
      Height = 21
      DataField = #1044#1072#1090#1072'_'#1055#1086#1089#1090
      DataSource = fDM.DSLichData
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 544
      Top = 112
      Width = 121
      Height = 21
      DataField = #1044#1077#1090#1077#1081
      DataSource = fDM.DSLichData
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 544
      Top = 144
      Width = 121
      Height = 21
      DataField = #1057#1090#1072#1078
      DataSource = fDM.DSLichData
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 544
      Top = 176
      Width = 121
      Height = 21
      DataField = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      DataSource = fDM.DSLichData
      TabOrder = 7
    end
    object DBCheckBox1: TDBCheckBox
      Left = 544
      Top = 40
      Width = 113
      Height = 17
      Caption = #1046#1077#1085#1072#1090'/'#1047#1072#1084#1091#1078#1077#1084
      DataField = #1057#1077#1084'_'#1055#1086#1083#1086#1078
      DataSource = fDM.DSLichData
      TabOrder = 8
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 544
      Top = 72
      Width = 121
      Height = 17
      Caption = #1042#1086#1077#1085#1085#1086#1086#1073#1103#1079#1072#1085#1085#1099#1081
      DataField = #1042#1086#1077#1085#1085#1086#1086#1073#1103#1079#1072#1085#1085#1099#1081
      DataSource = fDM.DSLichData
      TabOrder = 9
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBComboBox1: TDBComboBox
      Left = 80
      Top = 114
      Width = 145
      Height = 21
      DataField = #1055#1086#1083
      DataSource = fDM.DSLichData
      ItemHeight = 13
      Items.Strings = (
        #1084#1091#1078
        #1078#1077#1085)
      TabOrder = 10
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 224
    Width = 865
    Height = 65
    Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    TabOrder = 1
    OnExit = GroupBox2Exit
    object Label10: TLabel
      Left = 11
      Top = 25
      Width = 31
      Height = 13
      Caption = #1054#1090#1076#1077#1083
    end
    object Label11: TLabel
      Left = 285
      Top = 26
      Width = 58
      Height = 13
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    end
    object DBEdit9: TDBEdit
      Left = 50
      Top = 24
      Width = 151
      Height = 21
      DataField = #1054#1090#1076#1077#1083
      DataSource = fDM.DSDoljnost
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 352
      Top = 24
      Width = 153
      Height = 21
      DataField = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DataSource = fDM.DSDoljnost
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 296
    Width = 865
    Height = 105
    Caption = #1044#1086#1084#1072#1096#1085#1080#1081' '#1072#1076#1088#1077#1089
    TabOrder = 2
    OnExit = GroupBox3Exit
    object Label12: TLabel
      Left = 10
      Top = 26
      Width = 36
      Height = 13
      Caption = #1057#1090#1088#1072#1085#1072
    end
    object Label13: TLabel
      Left = 245
      Top = 26
      Width = 30
      Height = 13
      Caption = #1043#1086#1088#1086#1076
    end
    object Label14: TLabel
      Left = 14
      Top = 58
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object DBEdit11: TDBEdit
      Left = 53
      Top = 23
      Width = 148
      Height = 21
      DataField = #1057#1090#1088#1072#1085#1072
      DataSource = fDM.DSAdres
      TabOrder = 0
    end
    object DBEdit12: TDBEdit
      Left = 280
      Top = 24
      Width = 161
      Height = 21
      DataField = #1043#1086#1088#1086#1076
      DataSource = fDM.DSAdres
      TabOrder = 1
    end
    object DBEdit13: TDBEdit
      Left = 54
      Top = 56
      Width = 387
      Height = 21
      DataField = #1044#1086#1084'_'#1040#1076#1088#1077#1089
      DataSource = fDM.DSAdres
      TabOrder = 2
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 408
    Width = 865
    Height = 201
    Caption = #1058#1077#1083#1077#1092#1086#1085#1099
    TabOrder = 3
    OnExit = GroupBox4Exit
    object Label15: TLabel
      Left = 6
      Top = 27
      Width = 45
      Height = 13
      Caption = #1058#1077#1083#1077#1092#1086#1085
    end
    object Label16: TLabel
      Left = 232
      Top = 27
      Width = 63
      Height = 13
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
    end
    object DBEdit14: TDBEdit
      Left = 56
      Top = 24
      Width = 145
      Height = 21
      DataField = #1058#1077#1083#1077#1092#1086#1085
      DataSource = fDM.DSTelephones
      TabOrder = 0
    end
    object DBComboBox2: TDBComboBox
      Left = 301
      Top = 23
      Width = 145
      Height = 21
      DataField = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      DataSource = fDM.DSTelephones
      ItemHeight = 13
      Items.Strings = (
        #1056#1072#1073#1086#1095#1080#1081
        #1044#1086#1084#1072#1096#1085#1080#1081
        #1052#1086#1073#1080#1083#1100#1085#1099#1081)
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 5
      Top = 52
      Width = 852
      Height = 137
      DataSource = fDM.DSTelephones
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Button1: TButton
      Left = 512
      Top = 22
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object Button2: TButton
    Left = 16
    Top = 624
    Width = 137
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1074#1099#1081#1090#1080
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 176
    Top = 624
    Width = 169
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1077#1097#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
    TabOrder = 5
    OnClick = Button3Click
  end
  object DBNavigator1: TDBNavigator
    Left = 672
    Top = 624
    Width = 144
    Height = 25
    DataSource = fDM.DSLichData
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 6
  end
end
