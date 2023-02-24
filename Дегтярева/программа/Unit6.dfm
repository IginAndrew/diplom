object Form6: TForm6
  Left = 306
  Top = 172
  Width = 776
  Height = 449
  Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087
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
    Left = 8
    Top = 8
    Width = 737
    Height = 385
    Caption = #1043#1088#1091#1087#1087#1099
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 16
      Width = 721
      Height = 305
      DataSource = DataModule2.DSGR
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = #1050#1086#1076' '#1075#1088#1091#1087#1087#1099
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1053#1072#1095#1072#1083#1086' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1075#1086#1076#1072
          Width = 133
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1085#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1072
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1053#1072#1079#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1099
          Width = 338
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 216
      Top = 328
      Width = 320
      Height = 57
      DataSource = DataModule2.DSGR
      TabOrder = 1
    end
  end
end
