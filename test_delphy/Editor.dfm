object fEditor: TfEditor
  Left = 0
  Top = 0
  Caption = 'fEditor'
  ClientHeight = 793
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 392
    Top = 739
    Width = 154
    Height = 13
    Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1087#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072#1084
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 800
    Height = 249
    Align = alTop
    Caption = #1051#1080#1095#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    TabOrder = 0
    OnExit = GroupBox1Exit
    object Label1: TLabel
      Left = 32
      Top = 48
      Width = 19
      Height = 13
      Caption = #1048#1084#1103
    end
    object Label2: TLabel
      Left = 32
      Top = 21
      Width = 44
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label3: TLabel
      Left = 32
      Top = 77
      Width = 49
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    end
    object Label4: TLabel
      Left = 32
      Top = 104
      Width = 19
      Height = 13
      Caption = #1055#1086#1083
    end
    object Label5: TLabel
      Left = 32
      Top = 136
      Width = 60
      Height = 13
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076'.'
    end
    object Label6: TLabel
      Left = 32
      Top = 168
      Width = 68
      Height = 13
      Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087'.'
    end
    object Label7: TLabel
      Left = 450
      Top = 104
      Width = 69
      Height = 13
      Caption = #1050#1086#1083'-'#1074#1086' '#1076#1077#1090#1077#1081
    end
    object Label8: TLabel
      Left = 450
      Top = 131
      Width = 52
      Height = 13
      Caption = #1057#1090#1072#1078', '#1083#1077#1090
    end
    object Label9: TLabel
      Left = 450
      Top = 168
      Width = 67
      Height = 13
      Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
    end
    object DBEdit1: TDBEdit
      Left = 120
      Top = 18
      Width = 145
      Height = 21
      DataField = #1060#1072#1084#1080#1083#1080#1103
      DataSource = fDM.DS_data
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 120
      Top = 45
      Width = 145
      Height = 21
      DataField = #1048#1084#1103
      DataSource = fDM.DS_data
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 544
      Top = 101
      Width = 169
      Height = 21
      DataField = #1044#1077#1090#1077#1081
      DataSource = fDM.DS_data
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 544
      Top = 133
      Width = 169
      Height = 21
      DataField = #1057#1090#1072#1078
      DataSource = fDM.DS_data
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 544
      Top = 165
      Width = 169
      Height = 21
      DataField = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      DataSource = fDM.DS_data
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 120
      Top = 74
      Width = 145
      Height = 21
      DataField = #1054#1090#1095#1077#1089#1090#1074#1086
      DataSource = fDM.DS_data
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 120
      Top = 128
      Width = 145
      Height = 21
      DataField = #1044#1072#1090#1072'_'#1056#1086#1078#1076
      DataSource = fDM.DS_data
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 120
      Top = 165
      Width = 145
      Height = 21
      DataField = #1044#1072#1090#1072'_'#1055#1086#1089#1090
      DataSource = fDM.DS_data
      TabOrder = 7
    end
    object DBComboBox1: TDBComboBox
      Left = 120
      Top = 101
      Width = 145
      Height = 21
      DataField = #1055#1086#1083
      DataSource = fDM.DS_data
      Items.Strings = (
        #1084#1091#1078
        #1078#1077#1085)
      TabOrder = 8
    end
    object DBCheckBox1: TDBCheckBox
      Left = 544
      Top = 20
      Width = 97
      Height = 17
      Caption = #1078#1077#1085#1072#1090'\'#1079#1072#1084#1091#1078
      DataField = #1057#1077#1084'_'#1055#1086#1083#1086#1078
      DataSource = fDM.DS_data
      TabOrder = 9
    end
    object DBCheckBox2: TDBCheckBox
      Left = 544
      Top = 63
      Width = 121
      Height = 17
      Caption = #1074#1086#1077#1085#1085#1086#1086#1073#1103#1079#1072#1085#1085#1099#1081
      DataField = #1042#1086#1077#1085#1085#1086#1086#1073#1103#1079#1072#1085#1085#1099#1081
      DataSource = fDM.DS_data
      TabOrder = 10
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 249
    Width = 800
    Height = 80
    Align = alTop
    Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    TabOrder = 1
    OnExit = GroupBox2Exit
    object Label10: TLabel
      Left = 32
      Top = 40
      Width = 33
      Height = 13
      Caption = #1054#1090#1076#1077#1083
    end
    object Label11: TLabel
      Left = 460
      Top = 40
      Width = 57
      Height = 13
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    end
    object DBEdit9: TDBEdit
      Left = 96
      Top = 40
      Width = 121
      Height = 21
      DataField = #1054#1090#1076#1077#1083
      DataSource = fDM.DS_doljnost
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 544
      Top = 40
      Width = 121
      Height = 21
      DataField = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DataSource = fDM.DS_doljnost
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 329
    Width = 800
    Height = 112
    Align = alTop
    Caption = #1044#1086#1084#1072#1096#1085#1080#1081' '#1072#1076#1088#1077#1089
    TabOrder = 2
    OnExit = GroupBox3Exit
    object Label12: TLabel
      Left = 34
      Top = 72
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object Label13: TLabel
      Left = 28
      Top = 24
      Width = 37
      Height = 13
      Caption = #1057#1090#1088#1072#1085#1072
    end
    object Label14: TLabel
      Left = 344
      Top = 24
      Width = 31
      Height = 13
      Caption = #1043#1086#1088#1086#1076
    end
    object DBEdit11: TDBEdit
      Left = 96
      Top = 24
      Width = 121
      Height = 21
      DataField = #1057#1090#1088#1072#1085#1072
      DataSource = fDM.DS_addres
      TabOrder = 0
    end
    object DBEdit12: TDBEdit
      Left = 408
      Top = 24
      Width = 121
      Height = 21
      DataField = #1043#1086#1088#1086#1076
      DataSource = fDM.DS_addres
      TabOrder = 1
    end
    object DBEdit13: TDBEdit
      Left = 96
      Top = 72
      Width = 433
      Height = 21
      DataField = #1044#1086#1084'_'#1040#1076#1088#1077#1089
      DataSource = fDM.DS_addres
      TabOrder = 2
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 441
    Width = 800
    Height = 281
    Align = alTop
    Caption = #1058#1077#1083#1077#1092#1086#1085
    TabOrder = 3
    OnExit = GroupBox4Exit
    object Label15: TLabel
      Left = 28
      Top = 24
      Width = 44
      Height = 13
      Caption = #1058#1077#1083#1077#1092#1086#1085
    end
    object Label16: TLabel
      Left = 328
      Top = 24
      Width = 61
      Height = 13
      Caption = #1055#1088#1080#1084#1080#1095#1072#1085#1080#1077
    end
    object DBEdit14: TDBEdit
      Left = 96
      Top = 24
      Width = 117
      Height = 21
      DataField = #1058#1077#1083#1077#1092#1086#1085
      DataSource = fDM.DS_telephon
      MaxLength = 13
      TabOrder = 0
    end
    object DBComboBox2: TDBComboBox
      Left = 408
      Top = 24
      Width = 145
      Height = 21
      DataField = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      DataSource = fDM.DS_telephon
      Items.Strings = (
        #1084#1086#1073#1080#1083#1100#1085#1099#1081
        #1076#1086#1084#1084#1072#1096#1085#1080#1081
        #1088#1072#1073#1086#1095#1080#1081)
      TabOrder = 1
    end
    object Button1: TButton
      Left = 624
      Top = 25
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 2
      OnClick = Button1Click
    end
    object Panel1: TPanel
      Left = 8
      Top = 56
      Width = 777
      Height = 217
      Caption = 'Panel1'
      TabOrder = 3
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 775
        Height = 215
        Align = alClient
        DataSource = fDM.DS_telephon
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object Button2: TButton
    Left = 48
    Top = 734
    Width = 137
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1074#1099#1081#1090#1080
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 208
    Top = 734
    Width = 153
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1077#1097#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
    TabOrder = 5
    OnClick = Button3Click
  end
  object DBNavigator1: TDBNavigator
    Left = 568
    Top = 733
    Width = 204
    Height = 25
    DataSource = fDM.DS_data
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 6
  end
end
