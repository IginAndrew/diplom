object F_otchet_sotr: TF_otchet_sotr
  Left = 257
  Top = 321
  Width = 922
  Height = 241
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072#1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 906
    Height = 202
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 904
      Height = 200
      Align = alClient
      DataSource = fDM.DSQ_sotr
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
