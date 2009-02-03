object Fupload: TFupload
  Left = 399
  Top = 400
  Width = 532
  Height = 336
  Caption = 'Fupload'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object JvStatusBar1: TJvStatusBar
    Left = 0
    Top = 292
    Width = 524
    Height = 17
    Panels = <>
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 291
    Height = 219
    MultiLine = False
    FlatBorder = True
    Align = alClient
    TabOrder = 1
    object JvListView1: TJvListView
      Left = 1
      Top = 1
      Width = 289
      Height = 217
      Align = alClient
      Columns = <
        item
          Caption = #1060#1072#1081#1083
        end
        item
          Caption = #1056#1072#1079#1084#1077#1088
        end>
      FlatScrollBars = True
      GridLines = True
      PopupMenu = JvPopupMenu1
      TabOrder = 0
      ViewStyle = vsReport
      ColumnsOrder = '0=50,1=50'
    end
  end
  object JvPanel3: TJvPanel
    Left = 0
    Top = 219
    Width = 524
    Height = 73
    MultiLine = False
    FlatBorder = True
    Align = alBottom
    TabOrder = 2
    object JvTransparentButton1: TJvTransparentButton
      Left = 16
      Top = 16
      Width = 105
      Height = 33
      AllowAllUp = True
      Caption = 'JvTransparentButton1'
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  object JvPanel2: TJvPanel
    Left = 291
    Top = 0
    Width = 233
    Height = 219
    MultiLine = False
    FlatBorder = True
    Align = alRight
    TabOrder = 3
    object JvComboBox1: TJvComboBox
      Left = 24
      Top = 16
      Width = 161
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'JvComboBox1'
    end
    object JvMemo1: TJvMemo
      Left = 24
      Top = 104
      Width = 177
      Height = 89
      AutoSize = False
      MaxLines = 0
      HideCaret = False
      Lines.Strings = (
        'JvMemo1')
      TabOrder = 1
    end
    object JvCheckBox1: TJvCheckBox
      Left = 32
      Top = 48
      Width = 87
      Height = 17
      Caption = 'JvCheckBox1'
      TabOrder = 2
      LinkedControls = <>
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object JvCheckBox2: TJvCheckBox
      Left = 32
      Top = 72
      Width = 87
      Height = 17
      Caption = 'JvCheckBox2'
      TabOrder = 3
      LinkedControls = <>
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  object JvOpenDialog1: TJvOpenDialog
    Height = 0
    Width = 0
    Left = 32
    Top = 40
  end
  object JvPopupMenu1: TJvPopupMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 168
    Top = 128
  end
  object ActionList1: TActionList
    Left = 184
    Top = 235
  end
end
