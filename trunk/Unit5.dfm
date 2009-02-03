object Fdebug: TFdebug
  Left = 192
  Top = 107
  Width = 533
  Height = 374
  Caption = 'Fdebug'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 16
    Width = 105
    Height = 25
    Caption = 'ShowCallStack'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 64
    Width = 329
    Height = 273
    TabOrder = 1
  end
end
