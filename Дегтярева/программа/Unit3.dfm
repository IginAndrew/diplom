object Form3: TForm3
  Left = 241
  Top = 181
  Width = 839
  Height = 382
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
    Width = 793
    Height = 273
    Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 0
      Top = 16
      Width = 793
      Height = 257
      DataSource = DataModule2.DSKol
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = #1050#1086#1076' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
          Width = 299
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1076#1086#1083#1078#1085#1086#1089#1090#1100
          Width = 193
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1090#1077#1083#1077#1092#1086#1085
          Width = 184
          Visible = True
        end>
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 224
    Top = 288
    Width = 340
    Height = 41
    DataSource = DataModule2.DSKol
    TabOrder = 1
  end
end
