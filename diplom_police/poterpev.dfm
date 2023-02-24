object F_poterpev: TF_poterpev
  Left = 275
  Top = 142
  Width = 870
  Height = 600
  Caption = #1055#1086#1090#1077#1088#1087#1077#1074#1096#1080#1077
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
    Width = 854
    Height = 169
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
      Left = 224
      Top = 136
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object Label3: TLabel
      Left = 456
      Top = 32
      Width = 79
      Height = 13
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    end
    object Label4: TLabel
      Left = 464
      Top = 88
      Width = 45
      Height = 13
      Caption = #1058#1077#1083#1077#1092#1086#1085
    end
    object Label5: TLabel
      Left = 88
      Top = 96
      Width = 18
      Height = 13
      Caption = #1087#1086#1083
    end
    object edit1: TDBEdit
      Left = 128
      Top = 24
      Width = 121
      Height = 21
      DataField = #1060#1048#1054
      DataSource = fDM.DS_posrt
      TabOrder = 0
    end
    object edit3: TDBEdit
      Left = 568
      Top = 24
      Width = 121
      Height = 21
      DataField = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      DataSource = fDM.DS_posrt
      TabOrder = 1
    end
    object edit4: TDBEdit
      Left = 568
      Top = 80
      Width = 121
      Height = 21
      DataField = #1058#1077#1083#1077#1092#1086#1085
      DataSource = fDM.DS_posrt
      TabOrder = 2
    end
    object edit2: TDBEdit
      Left = 288
      Top = 128
      Width = 201
      Height = 21
      DataField = #1040#1076#1088#1077#1089
      DataSource = fDM.DS_posrt
      TabOrder = 3
    end
    object DBComboBox1: TDBComboBox
      Left = 128
      Top = 88
      Width = 121
      Height = 21
      DataField = #1055#1086#1083
      DataSource = fDM.DS_posrt
      ItemHeight = 13
      Items.Strings = (
        #1084
        #1078)
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 169
    Width = 854
    Height = 328
    Align = alTop
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 852
      Height = 326
      Align = alClient
      DataSource = fDM.DS_posrt
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Button1: TButton
    Left = 32
    Top = 513
    Width = 105
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1074#1099#1081#1090#1080
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 513
    Width = 81
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1077#1097#1077
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 600
    Top = 513
    Width = 224
    Height = 25
    DataSource = fDM.DS_posrt
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 4
  end
end
