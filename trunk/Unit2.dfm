object Form2: TForm2
  Left = 192
  Top = 106
  BorderStyle = bsDialog
  Caption = #1056#1091#1095#1085#1086#1081' '#1074#1074#1086#1076
  ClientHeight = 166
  ClientWidth = 182
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object JvImage1: TJvImage
    Left = 40
    Top = 8
    Width = 95
    Height = 60
  end
  object Button1: TButton
    Left = 59
    Top = 130
    Width = 57
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = Button1Click
  end
  object MaskEdit1: TMaskEdit
    Left = 27
    Top = 92
    Width = 120
    Height = 21
    EditMask = '!99999;1;_'
    MaxLength = 5
    TabOrder = 1
    Text = '     '
  end
end
