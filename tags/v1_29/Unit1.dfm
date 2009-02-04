object FMain: TFMain
  Left = 271
  Top = 263
  Width = 571
  Height = 422
  Caption = 'Data Cod Downloader'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvStatusBar1: TJvStatusBar
    Left = 0
    Top = 372
    Width = 563
    Height = 23
    Panels = <
      item
        Width = 120
      end
      item
        Width = 150
      end>
  end
  object JvPageControl1: TJvPageControl
    Left = 0
    Top = 0
    Width = 563
    Height = 372
    ActivePage = TabSheet1
    Align = alClient
    OwnerDraw = True
    TabOrder = 1
    TabPainter = JvTabDefaultPainter1
    object TabSheet1: TTabSheet
      Caption = #1047#1072#1082#1072#1095#1082#1072
      object JvGradientProgressBar1: TJvGradientProgressBar
        Left = 0
        Top = 324
        Width = 555
        Height = 20
        Smooth = True
        Align = alBottom
        ParentColor = True
      end
      object JvSplitter1: TJvSplitter
        Left = 257
        Top = 41
        Width = 6
        Height = 283
      end
      object JvPanel1: TJvPanel
        Left = 0
        Top = 41
        Width = 257
        Height = 283
        MultiLine = False
        FlatBorder = True
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object LBlist: TJvListBox
          Left = 0
          Top = 0
          Width = 257
          Height = 88
          Align = alClient
          ItemHeight = 13
          Background.FillMode = bfmTile
          Background.Visible = False
          MultiSelect = True
          PopupMenu = JvPopupMenu1
          TabOrder = 0
        end
        object TVlist: TJvTreeView
          Left = 0
          Top = 88
          Width = 257
          Height = 195
          Align = alBottom
          Images = JvImageList2
          Indent = 19
          MultiSelect = True
          StateImages = JvImageList2
          TabOrder = 1
          Visible = False
          LineColor = 13160660
        end
      end
      object JvToolBar1: TJvToolBar
        Left = 0
        Top = 0
        Width = 555
        Height = 41
        ButtonHeight = 38
        ButtonWidth = 39
        Caption = 'JvToolBar1'
        EdgeInner = esNone
        Flat = True
        Images = JvImageList1
        TabOrder = 1
        Transparent = False
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Action = Aadd
        end
        object ToolButton2: TToolButton
          Left = 39
          Top = 0
          Action = Astart
        end
        object ToolButton4: TToolButton
          Left = 78
          Top = 0
          Action = Apouse
        end
        object ToolButton3: TToolButton
          Left = 117
          Top = 0
          Action = Astop
        end
      end
      object JvPanel2: TJvPanel
        Left = 263
        Top = 41
        Width = 292
        Height = 283
        MultiLine = False
        FlatBorder = True
        Align = alClient
        TabOrder = 2
        object JvInstallLabel1: TJvInstallLabel
          Left = 1
          Top = 1
          Width = 290
          Height = 96
          Align = alTop
          Images = JvImageList2
          Lines.Strings = (
            #1054#1090#1082#1088#1099#1074#1072#1077#1084' '#1089#1090#1088#1072#1085#1080#1094#1091
            #1047#1072#1075#1088#1091#1079#1082#1072' '#1088#1080#1089#1091#1085#1082#1072
            #1047#1072#1087#1088#1086#1089' '#1092#1072#1081#1083#1072' ('#1056#1072#1089#1087#1086#1079#1085#1072#1085#1080#1077' '#1088#1080#1089#1091#1085#1082#1072')'
            #1047#1072#1075#1088#1091#1079#1082#1072' '#1092#1072#1081#1083#1072)
        end
        object Linfo: TJvLinkLabel
          Left = 1
          Top = 97
          Width = 290
          Height = 185
          Align = alClient
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Upload'
      ImageIndex = 5
      TabVisible = False
      object JvPanel5: TJvPanel
        Left = 0
        Top = 264
        Width = 555
        Height = 80
        MultiLine = False
        FlatBorder = True
        Align = alBottom
        TabOrder = 0
      end
      object JvPanel6: TJvPanel
        Left = 0
        Top = 0
        Width = 555
        Height = 264
        MultiLine = False
        FlatBorder = True
        Align = alClient
        TabOrder = 1
        object JvListView1: TJvListView
          Left = 1
          Top = 1
          Width = 553
          Height = 262
          Align = alClient
          Checkboxes = True
          Columns = <
            item
              Caption = #1048#1084#1103
            end
            item
              Caption = #1056#1072#1079#1084#1077#1088
            end
            item
              Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
            end
            item
              Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            end
            item
              Caption = #1055#1072#1088#1086#1083#1100
            end>
          GridLines = True
          TabOrder = 0
          ViewStyle = vsReport
          ColumnsOrder = '0=50,1=50,2=50,3=50,4=50'
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1040#1082#1082#1072#1091#1085#1090#1099
      ImageIndex = 4
      TabVisible = False
      object JvPanel3: TJvPanel
        Left = 0
        Top = 0
        Width = 555
        Height = 65
        MultiLine = False
        FlatBorder = True
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 0
        object JvLabel2: TJvLabel
          Left = 8
          Top = 8
          Width = 72
          Height = 13
          Caption = #1050#1086#1083'-'#1074#1086' '#1072#1082#1082#1086#1074':'
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvTransparentButton1: TJvTransparentButton
          Left = 168
          Top = 8
          Width = 81
          Height = 25
          Action = Areg
          AllowAllUp = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvTransparentButton2: TJvTransparentButton
          Left = 264
          Top = 8
          Width = 97
          Height = 25
          Action = Atest
          AllowAllUp = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvSpinEdit1: TJvSpinEdit
          Left = 80
          Top = 8
          Width = 73
          Height = 21
          TabOrder = 0
        end
      end
      object JvPanel4: TJvPanel
        Left = 0
        Top = 65
        Width = 555
        Height = 279
        MultiLine = False
        FlatBorder = True
        Align = alClient
        TabOrder = 1
        object JvDBGrid1: TJvDBGrid
          Left = 1
          Top = 1
          Width = 553
          Height = 277
          Align = alClient
          BorderStyle = bsNone
          DataSource = DataSource1
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          MultiSelect = True
          TitleButtons = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'EMAIL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PWD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SIZE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LASTACCESS'
              Visible = False
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
      ImageIndex = 1
      object JvLabel1: TJvLabel
        Left = 0
        Top = 8
        Width = 111
        Height = 21
        AutoSize = False
        Caption = #1044#1080#1088#1077#1082#1090#1086#1088#1080#1103' '#1079#1072#1082#1072#1095#1082#1080':'
        Layout = tlCenter
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object jvdir: TJvDirectoryEdit
        Left = 120
        Top = 8
        Width = 417
        Height = 21
        DialogKind = dkWin32
        DialogText = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1080#1088#1077#1082#1090#1086#1088#1080#1102' '#1076#1083#1103' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1092#1072#1081#1083#1086#1074
        TabOrder = 0
      end
      object JvRadioGroup1: TJvRadioGroup
        Left = 0
        Top = 40
        Width = 217
        Height = 81
        Caption = #1044#1077#1081#1089#1090#1074#1080#1077' '#1087#1086' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1102' '#1079#1072#1082#1072#1095#1082#1080
        ItemIndex = 0
        Items.Strings = (
          #1053#1080#1095#1077#1075#1086' '#1085#1077' '#1076#1077#1083#1072#1090#1100
          #1047#1072#1082#1088#1099#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
          #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1082#1086#1084#1087#1100#1102#1090#1077#1088)
        TabOrder = 1
        CaptionVisible = True
      end
      object JvGroupBox1: TJvGroupBox
        Left = 0
        Top = 128
        Width = 217
        Height = 97
        Caption = #1054#1073#1097#1080#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
        TabOrder = 2
        object Label1: TLabel
          Left = 8
          Top = 48
          Width = 45
          Height = 21
          AutoSize = False
          Caption = #1050#1072#1095#1072#1083#1082#1072':'
          Layout = tlCenter
        end
        object JvCheckBox2: TJvCheckBox
          Left = 8
          Top = 72
          Width = 185
          Height = 17
          Caption = #1051#1086#1075#1080#1085' '#1072#1082#1082#1086#1074' '#1087#1086#1089#1083#1077' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
          TabOrder = 0
          Visible = False
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvCheckBox1: TJvCheckBox
          Left = 8
          Top = 16
          Width = 167
          Height = 17
          Caption = #1057#1083#1077#1076#1080#1090#1100' '#1079#1072' '#1073#1091#1092#1077#1088#1086#1084' '#1086#1073#1084#1077#1085#1072
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = JvCheckBox1Click
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvCheckBox3: TJvCheckBox
          Left = 8
          Top = 32
          Width = 206
          Height = 17
          Hint = 
            #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1085#1077' '#1073#1091#1076#1077#1090' '#1074#1077#1089#1090#1080' '#1079#1072#1082#1072#1095#1082#1091' '#1092#1072#1081#1083#1086#1074'. '#1055#1088#1103#1084#1099#1077' '#1089#1089#1099#1083#1082#1080' '#1073#1091#1076#1091#1090' '#1089#1082#1086 +
            #1087#1080#1088#1086#1074#1072#1085#1099' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072'.'
          Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1089#1089#1099#1083#1082#1080' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object CBplglist: TJvComboBox
          Left = 56
          Top = 48
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = #1042#1089#1090#1088#1086#1077#1085#1085#1072#1103
          Items.Strings = (
            #1042#1089#1090#1088#1086#1077#1085#1085#1072#1103)
        end
      end
      object JvGroupBox2: TJvGroupBox
        Left = 232
        Top = 40
        Width = 201
        Height = 129
        Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
        TabOrder = 3
        object JvLabel3: TJvLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = #1051#1086#1075#1080#1085':'
          Layout = tlCenter
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvLabel4: TJvLabel
          Left = 8
          Top = 96
          Width = 43
          Height = 13
          Caption = #1055#1072#1088#1086#1083#1100':'
          Layout = tlCenter
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvRadioButton1: TJvRadioButton
          Left = 8
          Top = 16
          Width = 101
          Height = 17
          Alignment = taLeftJustify
          Caption = #1050#1072#1082' '#1072#1085#1086#1085#1080#1084#1085#1099#1081
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = JvRadioButton1Click
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          LinkedControls = <>
        end
        object JvRadioButton2: TJvRadioButton
          Left = 8
          Top = 40
          Width = 107
          Height = 17
          Alignment = taLeftJustify
          Caption = #1040#1074#1090#1086#1088#1080#1079#1086#1074#1072#1085#1085#1099#1081
          TabOrder = 1
          OnClick = JvRadioButton2Click
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          LinkedControls = <>
        end
        object Jvlogin: TJvEdit
          Left = 64
          Top = 64
          Width = 129
          Height = 21
          Flat = False
          ParentCtl3D = False
          Modified = False
          TabOrder = 2
        end
        object Jvpwd: TJvEdit
          Left = 64
          Top = 96
          Width = 121
          Height = 21
          Modified = False
          ThemedPassword = True
          TabOrder = 3
        end
      end
      object JvRGrest: TJvRadioGroup
        Left = 232
        Top = 176
        Width = 201
        Height = 65
        Caption = #1044#1086#1082#1072#1095#1082#1072' '#1092#1072#1081#1083#1086#1074
        ItemIndex = 2
        Items.Strings = (
          #1044#1086#1082#1072#1095#1082#1072' '#1087#1088#1080' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1080' '#1080#1084#1077#1085
          #1055#1077#1088#1077#1080#1084#1077#1085#1086#1074#1072#1090#1100' '#1092#1072#1081#1083
          #1057#1087#1088#1086#1089#1080#1090#1100)
        TabOrder = 4
        CaptionVisible = True
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1051#1086#1075
      ImageIndex = 6
      object Mlog: TMemo
        Left = 0
        Top = 0
        Width = 555
        Height = 344
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      ImageIndex = 2
      object JvgWizardHeader1: TJvgWizardHeader
        Left = 0
        Top = 0
        Width = 555
        Height = 57
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = [fsBold]
        CommentFont.Charset = DEFAULT_CHARSET
        CommentFont.Color = clWindowText
        CommentFont.Height = -11
        CommentFont.Name = 'MS Sans Serif'
        CommentFont.Style = []
        SymbolFont.Charset = DEFAULT_CHARSET
        SymbolFont.Color = clHighlightText
        SymbolFont.Height = -35
        SymbolFont.Name = 'Wingdings'
        SymbolFont.Style = [fsBold]
        Captions.Strings = (
          'Data Cod Downloader v1.29')
        Comments.Strings = (
          #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077)
        Gradient.FromColor = clHighlight
        Gradient.ToColor = clWindow
        Gradient.Active = True
        Gradient.Orientation = fgdVertical
        BufferedDraw = False
      end
      object JvScrollBox1: TJvScrollBox
        Left = 0
        Top = 57
        Width = 555
        Height = 287
        HorzScrollBar.Visible = False
        VertScrollBar.Style = ssFlat
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        object JvLinkLabel1: TJvLinkLabel
          Left = 0
          Top = 0
          Width = 555
          Height = 91
          Caption = 
            '<b>'#1051#1080#1094#1077#1085#1079#1080#1103':</b> <link>GNU General Public License v3</link><br>'#13 +
            #10'<b>'#1057#1072#1081#1090' '#1087#1088#1086#1075#1088#1072#1084#1084#1099':</b>  <link>http://code.google.com/p/dcdownlo' +
            'ader/</link><br>'#13#10'<b>'#1040#1074#1090#1086#1088':</b>  '#1052#1072#1081#1086#1088#1086#1074' '#1042#1080#1090#1072#1083#1080#1081' <link>vitaliy@m' +
            'ayorov.info</link><br>'#13#10'<b>'#1057#1087#1088#1072#1074#1082#1072':</b> <link>FAQ</link><br>'#13#10'<b' +
            'r>'#13#10#1045#1089#1083#1080' '#1076#1072#1085#1085#1072#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1072' '#1089#1101#1082#1086#1085#1086#1084#1080#1083#1072' '#1074#1072#1096#1077' '#1074#1088#1077#1084#1103' '#1080' '#1089#1087#1072#1089#1083#1072' N-'#1086#1077' '#1082#1086 +
            #1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1077#1088#1074#1085#1099#1093' '#1082#1083#1077#1090#1086#1082', <link>'#1087#1086#1078#1077#1088#1090#1074#1091#1081#1090#1077'</link> '#1072#1074#1090#1086#1088#1091' '#1085#1077#1084#1085#1086#1075#1086 +
            ' '#1076#1077#1085#1077#1075' '#1085#1072' '#1087#1080#1074#1086'. '#13#10
          Text.Strings = (
            
              '<b>'#1051#1080#1094#1077#1085#1079#1080#1103':</b> <link>GNU General Public License v3</link><br>'#13 +
              #10'<b>'#1057#1072#1081#1090' '#1087#1088#1086#1075#1088#1072#1084#1084#1099':</b>  <link>http://code.google.com/p/dcdownlo' +
              'ader/</link><br>'#13#10'<b>'#1040#1074#1090#1086#1088':</b>  '#1052#1072#1081#1086#1088#1086#1074' '#1042#1080#1090#1072#1083#1080#1081' <link>vitaliy@m' +
              'ayorov.info</link><br>'#13#10'<b>'#1057#1087#1088#1072#1074#1082#1072':</b> <link>FAQ</link><br>'#13#10'<b' +
              'r>'#13#10#1045#1089#1083#1080' '#1076#1072#1085#1085#1072#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1072' '#1089#1101#1082#1086#1085#1086#1084#1080#1083#1072' '#1074#1072#1096#1077' '#1074#1088#1077#1084#1103' '#1080' '#1089#1087#1072#1089#1083#1072' N-'#1086#1077' '#1082#1086 +
              #1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1077#1088#1074#1085#1099#1093' '#1082#1083#1077#1090#1086#1082', <link>'#1087#1086#1078#1077#1088#1090#1074#1091#1081#1090#1077'</link> '#1072#1074#1090#1086#1088#1091' '#1085#1077#1084#1085#1086#1075#1086 +
              ' '#1076#1077#1085#1077#1075' '#1085#1072' '#1087#1080#1074#1086'. '#13#10)
          OnLinkClick = JvLinkLabel1LinkClick
          Align = alTop
          Color = clWhite
          ParentColor = False
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1050#1086#1087#1080#1083#1082#1072
      ImageIndex = 3
      OnShow = TabSheet4Show
      object web: TWebBrowser
        Left = 0
        Top = 0
        Width = 555
        Height = 344
        Align = alClient
        TabOrder = 0
        OnBeforeNavigate2 = webBeforeNavigate2
        OnNewWindow2 = webNewWindow2
        ControlData = {
          4C0000005C3900008E2300000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object ActionList1: TActionList
    Images = JvImageList1
    Left = 288
    Top = 152
    object Aadd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1072#1073#1072#1074#1080#1090#1100' '#1089#1089#1099#1083#1082#1080
      ImageIndex = 0
      ShortCut = 45
      OnExecute = AaddExecute
    end
    object Astop: TAction
      Caption = #1057#1090#1086#1087
      Enabled = False
      ImageIndex = 2
      Visible = False
      OnExecute = AstopExecute
    end
    object Apouse: TAction
      Caption = #1055#1072#1091#1079#1072
      Enabled = False
      ImageIndex = 3
      OnExecute = ApouseExecute
    end
    object Astart: TAction
      Caption = #1047#1072#1082#1072#1095#1082#1072
      Hint = #1053#1072#1095#1072#1090#1100' '#1079#1072#1082#1072#1095#1082#1091
      ImageIndex = 1
      OnExecute = AstartExecute
    end
    object Adel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 5
      ShortCut = 46
      OnExecute = AdelExecute
    end
    object Aclear: TAction
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      ImageIndex = 4
      OnExecute = AclearExecute
    end
    object Areg: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
      OnExecute = AregExecute
    end
    object Atest: TAction
      Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1072#1082#1082#1086#1074
      OnExecute = AtestExecute
    end
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 5
      ShortCut = 46
    end
    object Aup: TAction
      Caption = #1042#1074#1077#1088#1093
      ShortCut = 16469
      OnExecute = AupExecute
    end
    object Adown: TAction
      Caption = #1042#1085#1080#1079
      ShortCut = 16452
      OnExecute = AdownExecute
    end
    object Ainfo: TAction
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
    end
    object Atop: TAction
      Caption = #1042' '#1085#1072#1095#1072#1083#1086
      OnExecute = AtopExecute
    end
    object Abuttom: TAction
      Caption = #1042' '#1082#1086#1085#1077#1094
      OnExecute = AbuttomExecute
    end
  end
  object JvImageList1: TJvImageList
    DrawingStyle = dsTransparent
    Height = 32
    Width = 32
    TransparentMode = tmAuto
    TransparentColor = clWhite
    Items = <>
    Left = 260
    Top = 161
    Bitmap = {
      494C010106000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FCFFF5F5F5FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF5F5
      F5FFFCFCFCFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFAFAFAFFF4F4
      F4FFEDEDEDFFE8E8E8FFE3E3E3FFE1E1E1FFE1E1E1FFE3E3E3FFE8E8E8FFEDED
      EDFFF4F4F4FFFAFAFAFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F5
      F5FFDDDDDDFFCACACAFFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
      C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
      C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFCACACAFFDDDD
      DDFFF5F5F5FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFDFFF8F8F8FFEDEDEDFFDDDDDDFFCBCB
      CBFFBCBCBCFFB0B0B0FFA8A8A8FFA3A3A3FFA3A3A3FFA8A8A8FFB0B0B0FFBCBC
      BCFFCBCBCBFFDDDDDDFFEDEDEDFFF8F8F8FFFDFDFDFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF797979FF616161FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF616161FF7979
      79FFF2F2F2FF0000000000000000000000000000000000000000000000000000
      00000000000000000000FBFBFBFFEFEFEFFFD9D9D9FFC0C0C0FF9A99ACFF6E6B
      ABFF514DB5FF3B36C1FF2C25CBFF221CD3FF221CD3FF2C25CCFF3B36C2FF514D
      B5FF6E6BACFF9A99ACFFC0C0C0FFD9D9D9FFEFEFEFFFFBFBFBFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8
      D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8
      D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FF7676
      76FFF2F2F2FF0000000000000000000000000000000000000000000000000000
      0000FEFEFEFFF9F9F9FFE7E7E7FFC7C7C7FF9190AFFF5855B2FF3E3BCBFF5052
      E3FF6C73ECFF8490F3FF97A6F9FFA3B4FDFFA4B5FDFF99A9F9FF8792F4FF6E75
      EDFF5153E4FF3F3CCCFF5855B3FF9190AFFFC7C7C7FFE7E7E7FFF9F9F9FFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFD9D9D9FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFD9D9D9FF7676
      76FFF2F2F2FF000000000000000000000000000000000000000000000000FEFE
      FEFFF7F7F7FFE1E1E1FFBBBBBBFF6765B0FF4643CCFF6065E8FF848FF3FF93A4
      F9FF92A3FAFF90A3FBFF90A4FCFF90A5FCFF90A6FCFF92A6FCFF93A7FCFF95A7
      FBFF97A7FBFF8692F4FF6266E9FF4745CDFF6765B1FFBBBBBBFFE1E1E1FFF7F7
      F7FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFDADADAFFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1
      D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1
      D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFDADADAFF7676
      76FFF2F2F2FF000000000000000000000000000000000000000000000000F9F9
      F9FFE1E1E1FFAAA9BAFF5451B6FF5152E2FF7982EFFF8795F6FF8393F6FF8294
      F8FF8598F9FF889CFAFF8A9EFBFF8BA0FBFF8CA1FBFF8BA0FBFF8A9EFBFF889C
      FAFF8598F9FF8698F8FF8B9AF7FF7C86F0FF5254E3FF5451B6FFAAA9BBFFE1E1
      E1FFF9F9F9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFDBDBDBFFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2
      D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2
      D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFDBDBDBFF7676
      76FFF2F2F2FF0000000000000000000000000000000000000000FBFBFBFFE7E7
      E7FFADACBDFF5654BDFF5D61E5FF808CF3FF7987F3FF7888F4FF7C8CF6FF8092
      F7FF8A9CF8FF93A4FAFF9AABFBFF9EAFFBFF9FAFFBFF9BACFBFF95A7FBFF8C9E
      F9FF8396F8FF7F91F7FF7C8CF6FF7D8DF4FF8491F4FF6063E7FF5553BFFFADAC
      BDFFE7E7E7FFFBFBFBFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFDCDCDCFFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3
      D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3
      D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFDCDCDCFF7676
      76FFF2F2F2FF00000000000000000000000000000000FDFDFDFFEFEFEFFFC6C6
      C6FF5653B7FF595CE3FF7681F0FF6D7AF0FF717FF2FF7584F4FF808FF6FF8A98
      F6FF757DEFFF575AE8FF3C3AE0FF2924DCFF2924DCFF3C3AE1FF5559E9FF727B
      F0FF8493F7FF7E8EF6FF7989F5FF7584F4FF717FF2FF7A86F1FF5C5FE5FF5653
      B8FFC6C6C6FFEFEFEFFFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFDDDDDDFFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
      D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
      D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFDDDDDDFF7676
      76FFF2F2F2FF00000000000000000000000000000000F8F8F8FFD9D9D9FF6F6D
      B8FF4948DEFF747CEDFF6671EEFF6A76F0FF6F7BF1FF7D8AF4FF7279EEFF5051
      E3FF625EDCFF9C99E8FFCDCCF1FFEFEFFAFFEBEBF6FFBCBBE0FF8283CFFF696D
      DAFF6F77EEFF7D8BF5FF7786F4FF7381F3FF6F7BF1FF6A76F0FF7882EFFF4B4B
      E0FF6F6DB8FFD9D9D9FFF8F8F8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFDFDFDFFFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
      D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
      D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFDFDFDFFF7676
      76FFF2F2F2FF000000000000000000000000FEFEFEFFEDEDEDFFA5A4C2FF4442
      CAFF666CE8FF656EECFF636EEDFF6873EFFF7581F1FF676CEBFF5E5DDDFFACAA
      E9FFFCFCFCFF0000000000000000FBFBFBFFE9E9E9FFC2C2C2FF6360B7FF595C
      E8FF8390F5FF7685F4FF7381F3FF6F7CF2FF6B77F0FF6773EFFF6974EEFF696F
      E9FF4442CBFFA5A4C3FFEDEDEDFFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFE1E1E1FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
      D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
      D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFE1E1E1FF7676
      76FFF2F2F2FF000000000000000000000000FAFAFAFFDDDDDDFF6460BCFF4E4E
      E0FF686FE9FF5C65EAFF606AECFF7079EFFF6267EAFF6A69DDFFD1D0EFFFFDFD
      FDFF0000000000000000FBFBFBFFE9E9E9FFC2C2C2FF6360B7FF585AE9FF8592
      F6FF7584F4FF717FF3FF6F7CF2FF6B78F1FF6974F0FF656FEEFF606AECFF6C74
      ECFF5050E0FF6460BCFFDDDDDDFFFAFAFAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFE2E2E2FFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDB
      DBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDB
      DBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFE2E2E2FF7676
      76FFF2F2F2FF000000000000000000000000F4F4F4FFB9B8CBFF3C37C8FF6366
      E5FF5B61E8FF5961E9FF666EECFF656AEAFF5B58DAFFCECDECFFFDFDFDFF0000
      000000000000FBFBFBFFE9E9E9FFC2C2C2FF6360B7FF5759E9FF828FF5FF717F
      F3FF6F7DF3FF6D7AF2FF6C78F1FF7B86F2FF6C75EEFF626BEDFF5D66EBFF5F67
      EAFF6669E6FF3D38C8FFB9B8CBFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFE4E4E4FFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFE4E4E4FF7676
      76FFF2F2F2FF000000000000000000000000EDEDEDFF8583C1FF3D3AD9FF6468
      E7FF5257E6FF575EE9FF6E73EDFF4645DEFFA3A1E0FFFCFCFCFF000000000000
      0000FBFBFBFFE9E9E9FFC2C2C2FF6360B7FF5557E8FF7F8AF4FF6E7BF3FF6D7A
      F2FF6B77F1FF6A75F0FF7982F1FF4443E1FF5D61E6FF666DECFF5A62E9FF565D
      E7FF686DE8FF3F3CD9FF8583C1FFEDEDEDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFE5E5E5FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
      DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
      DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFE5E5E5FF7676
      76FFF2F2F2FF000000000000000000000000E8E8E8FF5F5BC1FF4B4ADDFF5A5E
      E6FF4E53E5FF5E63E9FF5D5FE7FF5852D1FFF1F1F1FF0000000000000000FBFB
      FBFFE9E9E9FFC2C2C2FF6360B7FF5254E8FF7A85F3FF6A76F1FF6974F1FF6873
      F1FF6773F0FF767FF0FF4644E1FFA09EDDFF6B6BDAFF5759E6FF6168EAFF5258
      E6FF5E63E6FF4E4DDDFF5F5BC1FFE8E8E8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFE8E8E8FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE8E8E8FF7676
      76FFF2F2F2FF000000000000000000000000E3E3E3FF433DC3FF5757E0FF5053
      E3FF4B4FE3FF6367E9FF4643E1FF8986D3FFF8F8F8FF00000000FBFBFBFFE9E9
      E9FFC2C2C2FF6360B7FF5051E7FF767FF2FF656FF0FF656FF0FF646EEFFF646E
      EFFF757DEFFF4544E1FFA9A6E5FFF5F5F5FF8986D3FF4645E0FF666BEAFF4E53
      E4FF5458E3FF5A5AE0FF433DC3FFE3E3E3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFE9E9E9FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE9E9E9FF7676
      76FFF2F2F2FF000000000000000000000000E1E1E1FF2F29C8FF5E5EE1FF484A
      E1FF474AE2FF676AE9FF322DDBFFB4B2D8FFFCFCFCFFFBFBFBFFE9E9E9FFC2C2
      C2FF6360B7FF4E4EE6FF7179F0FF5F68EEFF6069EEFF5F68EEFF6069EDFF7279
      EFFF4443E1FFA9A6E5FFFCFCFCFFFCFCFCFFB4B2D7FF322EDAFF6A6EE8FF4A4E
      E3FF4B4EE1FF6162E2FF2F29C7FFE1E1E1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFEBEBEBFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFEBEBEBFF7676
      76FFF2F2F2FF000000000000000000000000E1E1E1FF231CCDFF6161E2FF4143
      DEFF4346E1FF6A6CE8FF261FD8FFCECED8FFF8F8F8FFE9E9E9FFC2C2C2FF6360
      B6FF4D4DE5FF7178EFFF6068EDFF6068EDFF6169EEFF6169EDFF737AEEFF4544
      E0FFA9A6E5FFFCFCFCFF00000000FCFCFCFFCECED8FF251FD6FF6B6FE7FF474A
      E1FF4447DEFF6465E3FF231CCCFFE1E1E1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFEDEDEDFFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
      E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
      E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFEDEDEDFF7676
      76FFF2F2F2FF000000000000000000000000E3E3E3FF231CCCFF5F5EE1FF3F3F
      DCFF4041DFFF696AE7FF251FD7FFC4C4CFFFE2E2E2FFC2C2C2FF6360B6FF504E
      E4FF7479EEFF6369ECFF646AECFF646BECFF656CECFF777CEEFF4845E1FFA9A6
      E5FFFCFCFCFF0000000000000000F8F8F8FFC7C7D1FF251FD5FF6A6DE7FF4345
      DEFF4142DDFF6161E0FF231CCBFFE3E3E3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFEEEEEEFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEEEEEEFF7676
      76FFF2F2F2FF000000000000000000000000E8E8E8FF302AC8FF5755DEFF4343
      DDFF4B4BE0FF7474E8FF3530DAFF9795BAFFB7B7B7FF6360B5FF5351E4FF787C
      EDFF696CEBFF6A6EECFF6A6FECFF6C70ECFF7C81EEFF4B48E1FFA9A6E5FFFCFC
      FCFF000000000000000000000000F1F1F1FFA4A2C7FF3631D9FF7576E8FF4E4F
      DFFF4445DCFF5958DDFF302AC7FFE8E8E8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFF1F1F1FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFF1F1F1FF7676
      76FFF2F2F2FF000000000000000000000000EDEDEDFF4742C7FF5755DDFF6160
      E2FF6464E3FF7878E7FF4C48DEFF7473BAFF5F5BB0FF5653E2FF7F80ECFF7073
      EBFF7174EBFF7275EBFF7376EBFF8386EEFF4D4AE1FFA9A6E5FFFCFCFCFF0000
      00000000000000000000FCFCFCFFE4E4E4FF7573BEFF504DDEFF7A7AE7FF6565
      E2FF6262E1FF5856DCFF4742C7FFEDEDEDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFF2F2F2FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEBEBEBFFE8E8
      E8FFE4E4E4FFE1E1E1FFE0E0E0FFE0E0E0FFE0E0E0FFE2E2E2FFEAEAEAFF7676
      76FFF2F2F2FF000000000000000000000000F4F4F4FF6B67CBFF5D59DCFF7C7B
      E6FF7170E4FF7B7AE7FF6A68E4FF6866CDFF5957E2FF8789ECFF7A7AEBFF7B7C
      EBFF7C7DECFF7D7FEDFF8C8DEFFF514DE1FFA9A6E5FFFCFCFCFF000000000000
      000000000000FDFDFDFFF1F1F1FFCBCBCBFF4944BFFF706FE4FF7D7DE7FF7271
      E4FF7E7DE5FF5F5ADCFF6B67CAFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFF4F4F4FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFECECECFFE7E7E7FFE0E0
      E0FFD9D9D9FFD5D5D5FFD4D4D4FFD4D4D4FFD4D4D4FFD6D6D6FFE4E4E4FF7676
      76FFF2F2F2FF000000000000000000000000FAFAFAFF9B99D6FF4D49D7FF8E8C
      E7FF7E7DE5FF8180E7FF8585E8FF7574E3FF8D8DEBFF8686EAFF8686ECFF8787
      ECFF8888ECFF9696EFFF5451E2FFA9A6E5FFFCFCFCFF00000000000000000000
      0000FDFDFDFFF4F4F4FFD8D8D8FF7D7BB8FF524ED9FF9090EAFF8281E7FF807F
      E5FF8F8EE7FF4D49D6FF9B99D6FFFAFAFAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFEFEFEFFFE9E9E9FFDFDFDFFFDBDB
      DBFFD7D7D7FFD6D6D6FFD5D5D5FFD5D5D5FFD5D5D5FFD7D7D7FFE5E5E5FF7C7C
      7CFFF4F4F4FF000000000000000000000000FEFEFEFFD8D7E9FF4944CDFF8E8A
      E6FF9190E9FF8F8DE9FF918FEAFF9492EBFF9392ECFF9392ECFF9393EDFF9494
      EEFFA0A0EFFF5954E1FFA9A6E4FFFCFCFCFF000000000000000000000000FCFC
      FCFFF1F1F1FFD8D8D8FF9998B6FF5450C7FF8583E7FF9796EAFF908EE8FF9291
      E8FF8E8CE6FF4945CCFFD8D7E9FFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFF7F7F7FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFEEEEEEFFE4E4E4FFDDDDDDFF6666
      66FF666666FF6C6C6CFF757575FF7F7F7FFF8A8A8AFF949494FF9D9D9DFF8989
      89FFF8F8F8FF00000000000000000000000000000000F8F8F8FF7B78D2FF6F6C
      DFFFA7A5ECFF9E9CEBFF9F9EECFFA1A0EDFFA0A0EEFFA1A0EEFFA2A1EEFFABAB
      F0FF5B57DFFFA09EDCFFF5F5F5FFFCFCFCFFFCFCFCFFF8F8F8FFF1F1F1FFE4E4
      E4FFCBCBCBFF9492B1FF605BC4FF8583E7FFA7A6EDFFA09EECFF9F9DEAFFA8A6
      ECFF706DDFFF7A78D0FFF8F8F8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFF9F9F9FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF4F4F4FFEBEBEBFFDFDFDFFFDCDCDCFF6C6C
      6CFFCDCDCDFFD3D3D3FFDCDCDCFFE6E6E6FFF0F0F0FFF9F9F9FFB9B9B9FFC6C6
      C6FFFDFDFDFF00000000000000000000000000000000FDFDFDFFCCCAE9FF5A56
      D1FFA19FEAFFB1B0EFFFAFADEEFFAFAEEFFFB0AFEFFFB1B0F0FFBBBAF2FF5D59
      DFFF7A78B5FFC2C2C2FFD1D1D1FFD9D9D9FFD9D9D9FFD1D1D1FFC4C4C4FFB1B1
      B1FF7270ACFF5652C6FF8F8CE8FFB6B5F0FFB0AEEEFFAFAEEEFFB2B0EFFFA1A0
      EAFF5A56D1FFCCCAE8FFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFFAFAFAFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF5F5F5FFEAEAEAFFDCDCDCFFDCDCDCFF7575
      75FFD3D3D3FFDCDCDCFFE6E6E6FFF0F0F0FFF9F9F9FFB9B9B9FFC6C6C6FFFDFD
      FDFF000000000000000000000000000000000000000000000000FBFBFBFF9592
      DBFF6E69DEFFC6C5F3FFBFBDF1FFBFBEF2FFC0BEF2FFC0C0F2FFBFBEF2FF9896
      E9FF7B78CFFF635FABFF807EA3FF94949EFF94949EFF807EA3FF635FABFF443F
      B8FF6561DCFFA4A2EDFFC4C4F3FFC0BEF2FFC0BEF1FFBFBEF1FFC7C5F2FF6E69
      DCFF9592DAFFFBFBFBFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFFBFBFBFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
      FAFFFAFAFAFFFAFAFAFFFAFAFAFFF6F6F6FFEAEAEAFFDCDCDCFFDCDCDCFF7F7F
      7FFFDCDCDCFFE6E6E6FFF0F0F0FFF9F9F9FFB9B9B9FFC6C6C6FFFDFDFDFF0000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F8FF7773D4FF8E8AE5FFD3D2F5FFCFCEF4FFCFCEF5FFD0CEF5FFD0CFF5FFCDCC
      F5FFA09EECFF7673E3FF4B47DAFF2D27D3FF2D27D3FF4B47DAFF7672E3FFA4A2
      ECFFD0CFF5FFD3D2F6FFD0CFF5FFD0CEF5FFCFCEF4FFD3D2F5FF8E8AE4FF7673
      D3FFF8F8F8FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFFCFCFCFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFF7F7F7FFEBEBEBFFDCDCDCFFDCDCDCFF8A8A
      8AFFE6E6E6FFF0F0F0FFF9F9F9FFB9B9B9FFC6C6C6FFFDFDFDFF000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFE2E2F2FF7A77D6FF9592E6FFE1E0F8FFDEDDF8FFDEDDF8FFDEDDF8FFDEDD
      F8FFE0DFF8FFE2E1F9FFE3E2F9FFE4E3F9FFE4E3F9FFE3E2F9FFE2E1F9FFE0DF
      F8FFDEDDF8FFDEDDF8FFDEDDF8FFDFDEF7FFE1E0F8FF9592E6FF7A77D6FFE2E2
      F2FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF767676FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFF9F9F9FFEDEDEDFFDEDEDEFFDEDEDEFF9494
      94FFF0F0F0FFF9F9F9FFB9B9B9FFC6C6C6FFFDFDFDFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFE4E4F4FF7976D6FF7E7BE0FFCCCAF3FFEDECFAFFECECFAFFEBEB
      FBFFEBEBFBFFEBEBFBFFEBEBFBFFEBEBFBFFEBEBFBFFEBEBFBFFEBEBFBFFEBEB
      FBFFEBEBFAFFECECFAFFEDEDFAFFCCCAF3FF7E7BDFFF7975D5FFE4E4F4FFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF797979FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFAFAFAFFEFEFEFFFE1E1E1FFE1E1E1FF9D9D
      9DFFF9F9F9FFB9B9B9FFC6C6C6FFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFAFF9A97DFFF6762D5FF9794E6FFD7D5F6FFF7F7
      FDFFF7F7FDFFF6F6FDFFF6F6FDFFF6F6FDFFF6F6FDFFF6F6FDFFF6F6FDFFF7F7
      FDFFF7F7FDFFD7D5F6FF9794E6FF6762D5FF9A97DFFFFAFAFAFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F5
      F5FF858585FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF6F6F6FFEEEEEEFFEEEEEEFFA3A3
      A3FFB7B7B7FFC6C6C6FFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFDFFD2D1EFFF8581D9FF5752D2FF7673
      DEFFA6A4EAFFCDCBF3FFE9E8F9FFF9F9FDFFF9F9FDFFE9E8F9FFCDCBF3FFA6A4
      EAFF7673DEFF5751D1FF8581D9FFD2D1EFFFFDFDFDFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FCFF939393FF919191FF919191FF919191FF919191FF919191FF919191FF9191
      91FF919191FF919191FF919191FF919191FF919191FF919191FF919191FF9292
      92FFC6C6C6FFFDFDFDFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFE4E3F5FFAAA7
      E4FF7975D7FF534DCFFF3630CBFF241DC7FF241DC7FF3630CBFF534DCFFF7975
      D7FFAAA7E4FFE4E3F5FFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7FFE7E7E7FFDFDF
      DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
      DFFFE7E7E7FFF7F7F7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F7FFE7E7E7FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
      DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
      DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFE7E7E7FFF7F7F7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F7FFE7E7E7FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
      DFFFDFDFDFFFE7E7E7FFF7F7F7FF0000000000000000F7F7F7FFE7E7E7FFDFDF
      DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFE7E7E7FFF7F7F7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E7FFB7B7B7FF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFFB7B7B7FFE7E7E7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7FFECECECFFF0F0
      F0FFFCFCFCFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E7FFB7B7B7FF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFFB7B7B7FFE7E7E7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E7FFB7B7B7FF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFFB7B7B7FFE7E7E7FF0000000000000000E7E7E7FFB7B7B7FF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFFB7B7B7FFE7E7E7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF219F44FF23A1
      46FF24A347FF24A448FF24A449FF25A549FF24A449FF24A448FF24A347FF23A1
      46FF219F44FFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E7FFC1C1C1FFC7C7
      C7FFEAEAEAFFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1F9B40FF219F44FF23A246FF25A549FF26A74CFF28AA
      4EFF29AC50FF2AAD51FF2BAE52FF2BAF52FF2BAF52FF2BAE52FF2AAD51FF29AC
      50FF28AA4EFF26A74CFF25A549FF23A246FF219F44FF1F9B40FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1B953BFF1C973DFF1E9A3FFF1F9C41FF209E43FF219F
      44FF22A045FF22A045FFDFDFDFFF0000000000000000DFDFDFFF22A045FF22A0
      45FF219F44FF209E43FF1F9C41FF1E9A3FFF1C973DFF1B953BFFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF23A247FFB1F8
      D1FFB1F8D2FFB1F8D2FFB1F8D2FFB1F8D2FFB1F8D2FFB1F8D2FFB1F8D2FFB1F8
      D1FF23A247FFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF189036FF6696
      72FFC4C4C4FFEAEAEAFFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF209D42FFB1F8D1FFB1F8D1FFB1F8D2FFB1F8D2FFB1F9
      D2FFB1F9D2FFB1F9D2FFB1F9D2FFB1F9D2FFB1F9D2FFB1F9D2FFB1F9D2FFB1F9
      D2FFB1F9D2FFB1F8D2FFB1F8D2FFB1F8D1FFB1F8D1FF209D42FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1C963CFFB1F8D1FFB1F8D1FFB1F8D1FFB1F8D1FFB1F8
      D1FFB1F8D1FF24A347FFDFDFDFFF0000000000000000DFDFDFFF24A347FFB1F8
      D1FFB1F8D1FFB1F8D1FFB1F8D1FFB1F8D1FFB1F8D1FF1C963CFFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF25A54AFFAFF7
      D0FF9BF5C4FF9BF5C4FF9BF5C4FF9BF5C4FF9BF5C4FF9BF5C4FF9BF5C4FFAFF7
      D0FF25A54AFFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF199238FF5EC0
      7EFF669773FFC4C4C4FFEAEAEAFFFCFCFCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF219F44FFAFF6CFFF9BF4C4FF9BF5C4FF9BF5C4FF9BF5
      C4FF9BF5C4FF9BF5C4FF9BF5C4FF9BF5C4FF9BF5C4FF9BF5C4FF9BF5C4FF9BF5
      C4FF9BF5C4FF9BF5C4FF9BF5C4FF9AF4C4FFAFF6CFFF219F44FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1D983DFFAEF6CFFF9AF4C3FF9BF4C3FF9BF4C3FF9BF4
      C3FFAFF6CFFF25A549FFDFDFDFFF0000000000000000DFDFDFFF25A549FFAFF6
      CFFF9BF4C3FF9BF4C3FF9BF4C3FF9AF4C3FFAEF6CFFF1D983DFFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF27A84CFFACF5
      CDFF97F2C0FF97F2C0FF97F2C0FF97F2C0FF97F2C0FF97F2C0FF97F2C0FFACF5
      CDFF27A84CFFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1A943AFFB1F8
      D1FF5EC27EFF679874FFC4C4C4FFEAEAEAFFFCFCFCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF22A045FFACF5CCFF97F2C0FF97F2C0FF97F3C0FF97F3
      C0FF98F3C1FF98F3C1FF98F3C1FF98F3C1FF98F3C1FF98F3C1FF98F3C1FF98F3
      C1FF97F3C0FF97F3C0FF97F2C0FF97F2C0FFACF5CCFF22A045FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1D993EFFABF4CCFF97F1BFFF97F2BFFF97F2BFFF97F2
      BFFFACF5CDFF26A74BFFDFDFDFFF0000000000000000DFDFDFFF26A74BFFACF5
      CDFF97F2BFFF97F2BFFF97F2BFFF97F1BFFFABF4CCFF1D993EFFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF28AA4EFFA9F3
      CAFF94F0BDFF94F1BDFF94F1BDFF94F1BDFF94F1BDFF94F1BDFF94F0BDFFA9F3
      CAFF28AA4EFFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1B963BFFADF5
      CDFFA5F4C9FF5DC27EFF689A75FFC4C4C4FFEAEAEAFFFCFCFCFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF23A146FFA9F3C9FF94F0BCFF94F0BDFF94F1BDFF94F1
      BDFF94F1BEFF95F1BEFF95F1BEFF95F2BEFF95F2BEFF95F1BEFF95F1BEFF94F1
      BEFF94F1BDFF94F1BDFF94F0BDFF94F0BCFFA9F3C9FF23A146FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1E9A3FFFA9F2C9FF93EFBCFF93EFBCFF93F0BCFF94F0
      BCFFA9F3C9FF27A84CFFDFDFDFFF0000000000000000DFDFDFFF27A84CFFA9F3
      C9FF94F0BCFF93F0BCFF93EFBCFF93EFBCFFA9F2C9FF1E9A3FFFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF2AAD51FFA6F1
      C7FF90EEB9FF90EEB9FF90EFB9FF90EFB9FF90EFB9FF90EEB9FF90EEB9FFA6F1
      C7FF2AAD51FFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1C973DFFA9F2
      CAFF94F0BDFFA1F2C5FF5CC37EFF689A76FFC4C4C4FFEAEAEAFFFCFCFCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF23A247FFA5F1C6FF90EDB8FF90EEB9FF90EEB9FF90EF
      B9FF91EFBAFF91EFBAFF91EFBAFF91F0BAFF91F0BAFF91EFBAFF91EFBAFF91EF
      BAFF90EFB9FF90EEB9FF90EEB9FF90EDB8FFA5F1C6FF23A247FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1F9B40FFA5F0C5FF8FECB7FF8FECB7FF8FEDB8FF8FED
      B8FFA5F1C6FF28A94DFFDFDFDFFF0000000000000000DFDFDFFF28A94DFFA5F1
      C6FF8FEDB8FF8FEDB8FF8FECB7FF8FECB7FFA5F0C5FF1F9B40FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF2BAF53FFA3F0
      C4FF8CECB5FF8CECB6FF8DECB6FF8DEDB6FF8DECB6FF8CECB6FF8CECB5FFA3F0
      C4FF2BAF53FFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1D993EFFA6F0
      C6FF90ECB8FF90EDB8FF9DEFC1FF5BC27CFF689B76FFC4C4C4FFEAEAEAFFFCFC
      FCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF24A448FFA2EDC2FF8BEBB4FF8CECB5FF8CECB5FF8DED
      B6FF8DEDB6FF8DEDB6FF8DEEB7FF8DEEB7FF8DEEB7FF8DEEB7FF8DEDB6FF8DED
      B6FF8DEDB6FF8CECB5FF8CECB5FF8BEBB4FFA2EEC2FF24A448FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1F9C41FFA1EDC1FF8AE9B3FF8BEAB3FF8BEAB3FF8BEA
      B4FFA2EFC3FF28AB4FFFDFDFDFFF0000000000000000DFDFDFFF28AB4FFFA2EF
      C3FF8BEAB4FF8BEAB3FF8BEAB3FF8AE9B3FFA1EDC1FF1F9C41FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF2CB154FFA0EE
      C1FF88EAB1FF88EAB1FF88EAB1FF88EAB1FF88EAB1FF88EAB1FF88EAB1FFA0EE
      C1FF2CB154FFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1E993FFFA1ED
      C1FF8AE9B2FF8BE9B2FF8BE9B3FF99ECBCFF59C17BFF689B76FFC4C4C4FFEAEA
      EAFFFCFCFCFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF24A449FF9EECBFFF87E8B0FF87E9B0FF88EAB1FF88EA
      B1FF89EBB2FF89EBB2FF89ECB3FF89ECB3FF89ECB3FF89ECB3FF89EBB2FF89EB
      B2FF88EAB1FF88EAB1FF87E9B0FF87E8B0FF9EECBFFF24A449FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF209C41FF9DEABDFF86E6ADFF86E7AEFF86E7AFFF87E7
      AFFF9FEDBFFF29AC4FFFDFDFDFFF0000000000000000DFDFDFFF29AC4FFF9FED
      BFFF87E7AFFF86E7AFFF86E7AEFF86E6ADFF9DEABDFF209C41FFDFDFDFFF0000
      000000000000000000000000000000000000F7F7F7FFE7E7E7FFDFDFDFFFDFDF
      DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFC7C7C7FF2DB356FF9CEC
      BDFF83E7ADFF84E8ADFF84E8ADFF84E8ADFF84E8ADFF84E8ADFF83E7ADFF9CEC
      BDFF2DB356FFC7C7C7FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
      DFFFDFDFDFFFE7E7E7FFF7F7F7FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1E9A40FF9DE9
      BDFF85E5ACFF85E5ACFF85E5ACFF85E5ACFF94E8B6FF57BF78FF689A76FFC4C4
      C4FFEAEAEAFFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF25A549FF9AE9BBFF82E5AAFF83E6ABFF83E7ACFF84E8
      ADFF84E8AEFF84E9AEFF85E9AEFF85E9AEFF85E9AEFF85E9AEFF84E9AEFF84E8
      AEFF84E8ADFF83E7ACFF83E6ABFF82E5AAFF9AE9BBFF25A549FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF209D42FF99E8B9FF80E2A8FF81E3A9FF81E4A9FF81E4
      AAFF9BEABBFF2AAD50FFDFDFDFFF0000000000000000DFDFDFFF2AAD50FF9BEA
      BBFF81E4AAFF81E4A9FF81E3A9FF80E2A8FF99E8B9FF209D42FFDFDFDFFF0000
      000000000000000000000000000000000000E7E7E7FFB7B7B7FF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF979797FF2EB457FF98E9
      B9FF7FE5A8FF7FE5A9FF7FE6A9FF7FE6A9FF7FE6A9FF7FE5A9FF7FE5A8FF98E9
      B9FF2EB457FF979797FF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFFB7B7B7FFE7E7E7FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1F9B40FF98E6
      B8FF7FE1A6FF7FE1A6FF7FE1A6FF7FE1A6FF7FE1A6FF8FE5B1FF55BE76FF689A
      76FFC4C4C4FFEAEAEAFFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF25A64AFF96E7B6FF7DE2A6FF7EE3A7FF7FE4A8FF7FE6
      A9FF80E6A9FF80E7AAFF80E7AAFF80E7AAFF80E7AAFF80E7AAFF80E7AAFF80E6
      A9FF7FE6A9FF7FE4A8FF7EE3A7FF7DE2A6FF96E7B6FF25A64AFFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF209D42FF95E5B5FF7BDFA3FF7CE0A3FF7CE0A4FF7DE1
      A5FF97E8B7FF2AAD51FFDFDFDFFF0000000000000000DFDFDFFF2AAD51FF97E8
      B7FF7DE1A5FF7CE0A4FF7CE0A3FF7BDFA3FF95E5B5FF209D42FFDFDFDFFF0000
      000000000000000000000000000000000000DFDFDFFF1B963BFF1E993FFF209D
      42FF22A146FF24A449FF27A84CFF29AB4FFF2BAE52FF2DB155FF2EB457FF95E7
      B5FF7AE2A3FF7AE3A4FF7AE3A4FF7AE3A4FF7AE3A4FF7AE3A4FF7AE2A3FF95E7
      B5FF2EB457FF2DB155FF2BAE52FF29AB4FFF27A84CFF24A449FF22A146FF209D
      42FF1E993FFF1B963BFFDFDFDFFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1F9B40FF93E2
      B2FF78DC9FFF78DCA0FF78DCA0FF78DCA0FF78DCA0FF78DC9FFF88DFABFF51BB
      72FF689975FFC4C4C4FFEAEAEAFFFCFCFCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF25A64AFF92E4B2FF78DFA0FF79E0A2FF7AE2A3FF7AE3
      A4FF7BE4A5FF7BE4A5FF7BE5A6FF7CE5A6FF7CE5A6FF7BE5A6FF7BE4A5FF7BE4
      A5FF7AE3A4FF7AE2A3FF79E0A2FF78DFA0FF92E4B2FF25A64AFFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF209E43FF91E1B0FF76DB9DFF76DC9EFF77DD9FFF77DE
      9FFF93E5B3FF2AAD51FFDFDFDFFF0000000000000000DFDFDFFF2AAD51FF93E5
      B3FF77DE9FFF77DD9FFF76DC9EFF76DB9DFF91E1B0FF209E43FFDFDFDFFF0000
      000000000000000000000000000000000000DFDFDFFF1B963BFF8BDCA9FF8CDD
      AAFF8DDFACFF8DE0ADFF8DE1ADFF8EE1AEFF8FE3AFFF8FE4B0FF90E5B1FF91E5
      B1FF75DF9FFF76E09FFF76E09FFF76E19FFF76E09FFF76E09FFF75DF9FFF91E5
      B1FF90E5B1FF8FE4B0FF8FE3AFFF8EE1AEFF8DE1ADFF8DE0ADFF8DDFACFF8CDD
      AAFF8BDCA9FF1B963BFFDFDFDFFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1F9B40FF8DDF
      ADFF72D898FF72D899FF72D899FF72D899FF72D898FF72D898FF71D798FF82DB
      A4FF4EB76EFF679874FFC4C4C4FFEAEAEAFFFCFCFCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF25A64AFF8EE1AEFF73DC9BFF74DD9DFF75DF9EFF76E0
      9FFF76E1A0FF76E2A1FF77E2A1FF77E2A1FF77E2A1FF77E2A1FF76E2A1FF76E1
      A0FF76E09FFF75DF9EFF74DD9DFF73DC9BFF8EE1AEFF25A64AFFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF209D42FF8DDFACFF70D897FF71D999FF72DA99FF72DA
      9AFF8FE2AEFF2AAD51FFDFDFDFFF0000000000000000DFDFDFFF2AAD51FF8FE2
      AEFF72DA9AFF72DA99FF71D999FF70D897FF8DDFACFF209D42FFDFDFDFFF0000
      000000000000000000000000000000000000DFDFDFFF1B953BFF86D9A4FF69D1
      8FFF6AD290FF6BD491FF6BD593FF6CD694FF6DD895FF6ED997FF6FDA97FF6FDB
      98FF70DB99FF70DD9AFF71DD9AFF71DD9AFF71DD9AFF70DD9AFF70DC99FF6FDB
      98FF6FDA97FF6ED997FF6DD895FF6CD694FF6BD593FF6BD491FF6AD290FF69D1
      8FFF86D9A4FF1B953BFFDFDFDFFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1E9A40FF88DB
      A6FF6BD291FF6BD391FF6BD391FF6BD391FF6BD391FF6BD291FF6AD190FF6AD1
      90FF7BD69DFF4AB36AFF669673FFC7C7C7FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF25A549FF89DEA9FF6DD895FF6EDA97FF6FDC99FF70DD
      9AFF71DE9BFF71DF9BFF72DF9CFF72DF9CFF72DF9CFF72DF9CFF71DF9BFF71DE
      9BFF70DD9AFF6FDC99FF6EDA97FF6DD895FF89DEA9FF25A549FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF209D42FF88DBA6FF6BD391FF6BD592FF6CD694FF6CD7
      94FF8ADFAAFF2AAD50FFDFDFDFFF0000000000000000DFDFDFFF2AAD50FF8ADF
      AAFF6CD794FF6CD694FF6BD592FF6BD391FF88DBA6FF209D42FFDFDFDFFF0000
      000000000000000000000000000000000000DFDFDFFF1B953BFF81D59EFF62CC
      88FF63CD89FF65CF8BFF66D18CFF67D28EFF67D48FFF68D591FF69D792FF69D7
      92FF6AD893FF6AD994FF6BD994FF6BDA94FF6BD994FF6AD994FF6AD893FF69D7
      92FF69D792FF68D591FF67D48FFF67D28EFF66D18CFF65CF8BFF63CD89FF62CC
      88FF81D59EFF1B953BFFDFDFDFFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1E993FFF82D6
      A0FF63CD89FF64CD89FF64CE8AFF64CE8AFF64CD89FF63CD89FF63CC88FF62CB
      88FF62CA87FF74D095FF46AF64FF74A480FFE8E8E8FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF24A449FF85DBA5FF68D490FF69D691FF6AD893FF6AD9
      94FF6BDA95FF6CDB96FF6CDC97FF6CDC97FF6CDC97FF6CDC97FF6CDB96FF6BDA
      95FF6AD994FF6AD893FF69D691FF68D490FF85DBA5FF24A449FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF209C41FF83D8A1FF65CF8BFF65D18CFF66D28DFF67D3
      8EFF85DCA5FF29AC4FFFDFDFDFFF0000000000000000DFDFDFFF29AC4FFF85DC
      A5FF67D38EFF66D28DFF65D18CFF65CF8BFF83D8A1FF209C41FFDFDFDFFF0000
      000000000000000000000000000000000000DFDFDFFF1A943AFF7CD199FF5DC7
      82FF5EC983FF5FCB85FF60CD86FF61CE88FF62D089FF62D18AFF63D28CFF64D4
      8DFF65D58EFF65D68FFF66D68FFF66D68FFF66D68FFF65D68FFF65D58EFF64D4
      8DFF63D28CFF62D18AFF62D089FF61CE88FF60CD86FF5FCB85FF5EC983FF5DC7
      82FF7CD199FF1A943AFFDFDFDFFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1D993EFF7DD2
      9AFF5CC882FF5DC882FF5DC882FF5DC882FF5DC882FF5CC782FF5CC780FF5BC6
      80FF5BC57FFF5AC37EFF7ACE97FF178F35FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF24A448FF81D8A0FF62D08AFF63D28BFF65D58EFF66D6
      8FFF66D790FF67D891FF67D991FF67D992FF67D992FF67D991FF67D891FF66D7
      90FF66D68FFF65D58EFF63D28BFF62D08AFF81D8A0FF24A448FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1F9C41FF7ED59DFF5FCB85FF60CD86FF60CE87FF61CF
      88FF81D9A1FF28AB4FFFDFDFDFFF0000000000000000DFDFDFFF28AB4FFF81D9
      A1FF61CF88FF60CE87FF60CD86FF5FCB85FF7ED59DFF1F9C41FFDFDFDFFF0000
      000000000000000000000000000000000000DFDFDFFF1A9338FF76CD93FF56C2
      7BFF57C47CFF58C67EFF59C880FF5AC981FF5ECC84FF62CF88FF65D08BFF68D3
      8EFF6BD490FF6DD592FF6ED594FF70D695FF6FD695FF6ED593FF6DD491FF6AD4
      8FFF67D18DFF64D08AFF61CD86FF5DCA83FF59C880FF58C67EFF57C47CFF56C2
      7BFF76CD93FF1A9338FFDFDFDFFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1C973DFF81D1
      9DFF65C786FF67C888FF68CA89FF6AC98AFF6AC989FF68C888FF66C886FF63C6
      85FF60C482FF71C98EFF42AA60FF95C4A0FFFCFCFCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF23A247FF7CD59AFF5FCD86FF62D089FF66D28DFF6AD5
      90FF6CD693FF6FD895FF6FD996FF70D997FF70D997FF6FD996FF6FD895FF6CD6
      93FF6AD590FF67D28DFF62D089FF5FCD86FF7CD59AFF23A247FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1F9B40FF79D197FF5CC881FF5ECA84FF62CC87FF65CE
      8AFF85D9A2FF28A94DFFDFDFDFFF0000000000000000DFDFDFFF28A94DFF85D9
      A2FF65CE8AFF62CC87FF5ECA84FF5CC881FF79D197FF1F9B40FFDFDFDFFF0000
      000000000000000000000000000000000000DFDFDFFF199137FF71C88DFF4FBC
      73FF50BE75FF58C37BFF60C783FF69CB8BFF71CF91FF72D092FF73D294FF74D3
      95FF74D495FF74D496FF74D597FF74D597FF74D597FF74D496FF74D495FF74D3
      95FF73D294FF72D092FF71CF91FF70CE90FF68CA89FF5FC681FF57C17AFF4FBC
      73FF71C88DFF199137FFDFDFDFFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1B963BFF8DD4
      A4FF71CA8EFF71CA8EFF71CA8EFF71CA8EFF71CA8EFF71C98DFF71C88CFF71C7
      8CFF81CD9AFF4DAF68FF95C5A1FFFCFCFCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF23A146FF85D6A1FF71D091FF73D394FF74D496FF75D6
      97FF75D798FF76D899FF77D999FF77D99AFF77D99AFF77D999FF76D899FF75D7
      98FF75D697FF74D496FF73D394FF71D091FF85D6A1FF23A146FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1E9A3FFF84D29EFF6DCC8DFF6FCD8FFF70CF90FF71CF
      91FF8DD9A8FF27A84CFFDFDFDFFF0000000000000000DFDFDFFF27A84CFF8DD9
      A8FF71CF91FF70CF90FF6FCD8FFF6DCC8DFF84D29EFF1E9A3FFFDFDFDFFF0000
      000000000000000000000000000000000000DFDFDFFF188F36FF6CC487FF55BC
      75FF66C483FF75CB91FF78CD94FF79CF95FF79D096FF7BD297FF7BD298FF7CD3
      9AFF7CD59AFF7DD59BFF7DD59BFF7DD59BFF7DD59BFF7DD59BFF7CD59AFF7CD3
      9AFF7BD298FF7BD297FF79D096FF79CF95FF78CD94FF77CC92FF75C98FFF64C2
      82FF76C890FF188F36FFDFDFDFFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1A943AFF96D5
      AAFF7CCB95FF7CCB96FF7DCC96FF7CCB96FF7CCB95FF7CCB95FF7CCA94FF8CD0
      A1FF52B06BFF95C5A1FFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF22A045FF94D9ABFF7BD298FF7CD39AFF7DD59BFF7ED6
      9DFF7ED89DFF7FD89EFF7FD99EFF7FD99FFF7FD99FFF7FD99EFF7FD89EFF7ED8
      9DFF7ED69DFF7DD59BFF7CD39AFF7BD298FF94D9ABFF22A045FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1D993EFF92D6A8FF78CD94FF79CF95FF79CF96FF7AD0
      97FF95DAACFF26A74BFFDFDFDFFF0000000000000000DFDFDFFF26A74BFF95DA
      ACFF7AD097FF79CF96FF79CF95FF78CD94FF92D6A8FF1D993EFFDFDFDFFF0000
      000000000000000000000000000000000000E7E7E7FF178E34FF80CA96FF95D3
      A8FF99D6ADFF9BD7ADFF9BD8AEFF9CD9B0FF9DDAB1FF9DDBB1FF9DDDB2FF9EDD
      B2FF86D5A1FF86D6A1FF86D7A1FF87D7A1FF86D7A1FF86D6A1FF86D5A1FF9EDD
      B2FF9DDDB2FF9DDBB1FF9DDAB1FF9CD9B0FF9BD8AEFF9BD7ADFF99D6ADFF99D5
      ABFF95D3A7FF178E34FFE7E7E7FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF199238FFA1D8
      B1FF8ACF9FFF8ACF9FFF8ACF9FFF8ACF9FFF8ACE9FFF8ACE9EFF98D4AAFF57B3
      6FFF95C5A1FFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF219F44FF9DDBB1FF85D39FFF86D5A0FF87D7A1FF88D8
      A3FF88D9A4FF89DAA4FF89DAA5FF89DAA5FF89DAA5FF89DAA5FF89DAA4FF88D9
      A4FF88D8A3FF87D7A1FF86D5A0FF85D39FFF9DDBB1FF219F44FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1D983DFF9BD8AEFF82CF9AFF84D09CFF84D19DFF84D2
      9DFF9DDBB1FF25A549FFDFDFDFFF0000000000000000DFDFDFFF25A549FF9DDB
      B1FF84D29DFF84D29DFF84D09CFF82CF9AFF9BD8AEFF1D983DFFDFDFDFFF0000
      000000000000000000000000000000000000F7F7F7FF158C32FF178F35FF1991
      37FF1A943AFF1C973DFF1E993FFF209C41FF219F44FF23A146FF24A448FFA7DF
      B9FF92D7A8FF92D8A9FF92D8A9FF93D8A9FF92D8A9FF92D8A9FF92D8A8FFA7DF
      B9FF24A448FF23A146FF219F44FF209C41FF1E993FFF1C973DFF1A943AFF1991
      37FF178F35FF158C32FFF7F7F7FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF189036FFAFDD
      BCFF9BD4ABFF9BD4ACFF9BD4ACFF9BD4ABFF9BD4ABFFA7D8B5FF5EB375FF95C5
      A1FFFCFCFCFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF209D42FFA6DDB8FF91D6A7FF92D8A8FF93D9A9FF93DA
      AAFF94DBABFF95DBABFF95DCACFF95DCADFF95DCADFF95DCACFF95DBABFF94DB
      ABFF93DAAAFF93D9A9FF92D8A8FF91D6A7FFA6DDB8FF209D42FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1C963CFFA5DAB5FF8FD2A4FF8FD3A4FF90D4A6FF90D5
      A6FFA6DDB8FF24A347FFDFDFDFFF0000000000000000DFDFDFFF24A347FFA6DD
      B8FF90D5A6FF90D4A6FF8FD3A4FF8FD2A4FFA5DAB5FF1C963CFFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF22A045FFB1E1
      C1FF9FDBB1FF9FDBB2FF9FDBB2FF9FDBB2FF9FDBB2FF9FDBB2FF9FDBB1FFB1E1
      C1FF22A045FFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF178E34FFBDE1
      C7FFADDAB9FFADDAB9FFADDAB9FFADDAB9FFB7DEC2FF63B679FF95C4A0FFFCFC
      FCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1F9B40FFB1E1C0FF9EDAB1FF9FDBB2FFA0DCB3FFA0DD
      B4FFA1DEB5FFA1DEB5FFA2DFB5FFA2DFB5FFA2DFB5FFA2DFB5FFA1DEB5FFA1DE
      B5FFA0DDB4FFA0DCB3FF9FDBB2FF9EDAB1FFB1E1C0FF1F9B40FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1B953BFFB0DEBDFF9DD7AEFF9DD7AFFF9DD8AFFF9ED9
      B0FFB1E1C0FF22A045FFDFDFDFFF0000000000000000DFDFDFFF22A045FFB1E1
      C0FF9ED9B0FF9DD8AFFF9DD7AFFF9DD7AEFFB0DEBDFF1B953BFFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF209D42FFBDE5
      C9FFADDEBCFFADDEBCFFADDFBCFFADDFBCFFADDFBCFFADDEBCFFADDEBCFFBDE5
      C9FF209D42FFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF168C33FFCCE7
      D3FFBFE1C8FFBFE1C8FFBFE1C8FFC7E5CFFF6AB77EFF94C3A0FFFCFCFCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1D993EFFBDE4C8FFADDEBBFFADDFBCFFAEE0BDFFAEE1
      BEFFAFE1BEFFAFE1BFFFB0E2BFFFB0E2BFFFB0E2BFFFB0E2BFFFAFE1BFFFAFE1
      BEFFAEE1BEFFAEE0BDFFADDFBCFFADDEBBFFBDE4C8FF1D993EFFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1A9339FFBCE2C7FFABDCB9FFABDCBAFFACDDBAFFACDD
      BBFFBDE5C9FF219E43FFDFDFDFFF0000000000000000DFDFDFFF219E43FFBDE5
      C9FFACDDBBFFACDDBAFFABDCBAFFABDCB9FFBCE2C7FF1A9339FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1E9A3FFFC9E9
      D2FFBCE3C8FFBCE3C8FFBCE4C8FFBCE4C8FFBCE4C8FFBCE3C8FFBCE3C8FFC9E9
      D2FF1E9A3FFFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF148A31FFDBED
      E0FFD2EAD8FFD2EAD8FFD7EDDDFF6FB982FF94C39FFFFCFCFCFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1C973CFFC9E8D2FFBCE3C8FFBCE4C8FFBDE5C9FFBDE5
      C9FFBEE6CAFFBEE6CAFFBEE6CAFFBEE6CAFFBEE6CAFFBEE6CAFFBEE6CAFFBEE6
      CAFFBDE5C9FFBDE5C9FFBCE4C8FFBCE3C8FFC9E8D2FF1C973CFFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF199238FFC8E7D1FFBBE1C5FFBBE2C6FFBCE2C7FFBCE2
      C7FFC9E9D2FF1F9C41FFDFDFDFFF0000000000000000DFDFDFFF1F9C41FFC9E9
      D2FFBCE2C7FFBCE2C7FFBBE2C6FFBBE1C5FFC8E7D1FF199238FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1C973CFFD5ED
      DCFFCBE9D4FFCBE9D4FFCCE9D4FFCCE9D4FFCCE9D4FFCBE9D4FFCBE9D4FFD5ED
      DCFF1C973CFFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF13882FFFE9F4
      ECFFE3F1E7FFE6F3EAFF75BB86FF94C29FFFFCFCFCFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF1B943AFFD5EDDCFFCBE9D4FFCCE9D4FFCCEAD5FFCCEA
      D5FFCDEBD5FFCDEBD6FFCDEBD6FFCDEBD6FFCDEBD6FFCDEBD6FFCDEBD6FFCDEB
      D5FFCCEAD5FFCCEAD5FFCCE9D4FFCBE9D4FFD5EDDCFF1B943AFFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF189036FFD5ECDBFFCBE7D3FFCBE8D3FFCBE8D3FFCBE8
      D3FFD5EDDCFF1D993EFFDFDFDFFF0000000000000000DFDFDFFF1D993EFFD5ED
      DCFFCBE8D3FFCBE8D3FFCBE8D3FFCBE7D3FFD5ECDBFF189036FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF1A9339FFE2F2
      E7FFDBEFE1FFDBEFE1FFDBEFE1FFDBEFE1FFDBEFE1FFDBEFE1FFDBEFE1FFE2F2
      E7FF1A9339FFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF12862DFFF5FA
      F7FFF4FAF6FF78BB88FF93C29EFFFCFCFCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF199238FFE2F2E6FFDBEFE1FFDBEFE1FFDCF0E1FFDCF0
      E2FFDCF0E2FFDCF0E2FFDCF1E2FFDCF1E2FFDCF1E2FFDCF1E2FFDCF0E2FFDCF0
      E2FFDCF0E2FFDCF0E1FFDBEFE1FFDBEFE1FFE2F2E6FF199238FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF168D34FFE2F1E6FFDBEEE0FFDBEFE0FFDBEFE0FFDBEF
      E1FFE2F2E7FF1C963CFFDFDFDFFF0000000000000000DFDFDFFF1C963CFFE2F2
      E7FFDBEFE1FFDBEFE0FFDBEFE0FFDBEEE0FFE2F1E6FF168D34FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF189036FFEDF7
      F0FFE9F5ECFFE9F5ECFFE9F5ECFFE9F5ECFFE9F5ECFFE9F5ECFFE9F5ECFFEDF7
      F0FF189036FFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF11852CFFFFFF
      FFFF7BBC8AFF92C19DFFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF178F35FFEDF7F0FFE9F5ECFFE9F5ECFFE9F5EDFFE9F5
      EDFFEAF5EDFFEAF6EDFFEAF6EDFFEAF6EDFFEAF6EDFFEAF6EDFFEAF6EDFFEAF5
      EDFFE9F5EDFFE9F5EDFFE9F5ECFFE9F5ECFFEDF7F0FF178F35FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF158B32FFEDF6F0FFE9F4ECFFE9F5ECFFE9F5ECFFE9F5
      ECFFEDF7F0FF1A9339FFDFDFDFFF0000000000000000DFDFDFFF1A9339FFEDF7
      F0FFE9F5ECFFE9F5ECFFE9F5ECFFE9F4ECFFEDF6F0FF158B32FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFF168D33FFF7FB
      F8FFF5FAF6FFF5FAF6FFF5FAF6FFF5FAF6FFF5FAF6FFF5FAF6FFF5FAF6FFF7FB
      F8FF168D33FFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E7FF10832AFF7BBB
      8AFF92C09DFFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF168D33FFF7FBF8FFF5FAF6FFF5FAF7FFF5FAF7FFF5FB
      F7FFF5FBF7FFF5FBF7FFF5FBF7FFF5FBF7FFF5FBF7FFF5FBF7FFF5FBF7FFF5FB
      F7FFF5FBF7FFF5FAF7FFF5FAF7FFF5FAF6FFF7FBF8FF168D33FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFF148930FFF7FBF8FFF5FAF6FFF5FAF6FFF5FAF6FFF5FA
      F6FFF7FBF8FF189036FFDFDFDFFF0000000000000000DFDFDFFF189036FFF7FB
      F8FFF5FAF6FFF5FAF6FFF5FAF6FFF5FAF6FFF7FBF8FF148930FFDFDFDFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E7FF148A31FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF148A31FFE7E7E7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7FF0F8129FF96C3
      A0FFFCFCFCFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E7FF148A31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF148A31FFE7E7E7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E7FF13872EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF168D34FFE7E7E7FF0000000000000000E7E7E7FF168D34FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF13872EFFE7E7E7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7FF13872EFF1388
      2FFF148930FF148A30FF148A31FF148A31FF148A31FF148A30FF148930FF1388
      2FFF13872EFFF7F7F7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F7FF13882FFF148A30FF158B32FF168C33FF168D34FF178E
      35FF178F35FF189036FF189036FF189036FF189036FF189036FF189036FF178F
      35FF178E35FF168D34FF168C33FF158B32FF148A30FF13882FFFF7F7F7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F7FF11852DFF12872EFF13882FFF13882FFF148930FF148A
      31FF148A31FF158B31FFF7F7F7FF0000000000000000F7F7F7FF158B31FF148A
      31FF148A31FF148930FF13882FFF13882FFF12872EFF11852DFFF7F7F7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E0000007FF8001FF0000000000000000
      E0000007FE00007F0000000000000000E0000007FC00003F0000000000000000
      E0000007F000000F0000000000000000E0000007E00000070000000000000000
      E0000007E00000070000000000000000E0000007C00000030000000000000000
      E0000007800000010000000000000000E0000007800000010000000000000000
      E0000007000600000000000000000000E0000007000C00000000000000000000
      E0000007001800000000000000000000E0000007003000000000000000000000
      E0000007006000000000000000000000E0000007004000000000000000000000
      E0000007000000000000000000000000E0000007000002000000000000000000
      E0000007000006000000000000000000E000000700000E000000000000000000
      E000000700001C000000000000000000E0000007000038000000000000000000
      E0000007000070000000000000000000E00000070000E0000000000000000000
      E0000007800000010000000000000000E0000007800000010000000000000000
      E000000FC00000030000000000000000E000001FE00000070000000000000000
      E000003FE00000070000000000000000E000007FF000000F0000000000000000
      E00000FFFC00003F0000000000000000E00001FFFE00007F0000000000000000
      E00003FFFF8001FF0000000000000000FF8003FFFFFFFFFFF800001FF801801F
      FF8003FFFF87FFFFF800001FF801801FFF8003FFFF83FFFFF800001FF801801F
      FF8003FFFF81FFFFF800001FF801801FFF8003FFFF80FFFFF800001FF801801F
      FF8003FFFF807FFFF800001FF801801FFF8003FFFF803FFFF800001FF801801F
      FF8003FFFF801FFFF800001FF801801FFF8003FFFF800FFFF800001FF801801F
      FF8003FFFF8007FFF800001FF801801F00000001FF8003FFF800001FF801801F
      00000001FF8001FFF800001FF801801F00000001FF8000FFF800001FF801801F
      00000001FF80007FF800001FF801801F00000001FF80007FF800001FF801801F
      00000001FF80007FF800001FF801801F00000001FF80007FF800001FF801801F
      00000001FF80007FF800001FF801801F00000001FF8000FFF800001FF801801F
      00000001FF8001FFF800001FF801801F00000001FF8003FFF800001FF801801F
      00000001FF8007FFF800001FF801801FFF8003FFFF800FFFF800001FF801801F
      FF8003FFFF801FFFF800001FF801801FFF8003FFFF803FFFF800001FF801801F
      FF8003FFFF807FFFF800001FF801801FFF8003FFFF80FFFFF800001FF801801F
      FF8003FFFF81FFFFF800001FF801801FFF8003FFFF83FFFFF800001FF801801F
      FF8003FFFF87FFFFF800001FF801801FFF8003FFFFFFFFFFF800001FF801801F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object JvPopupMenu1: TJvPopupMenu
    Style = msXP
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 204
    Top = 176
    object N2: TMenuItem
      Action = Aadd
    end
    object N1: TMenuItem
      Action = Adel
    end
    object N3: TMenuItem
      Action = Aclear
    end
    object N6: TMenuItem
      Action = Aup
    end
    object N7: TMenuItem
      Action = Adown
    end
    object N8: TMenuItem
      Action = Ainfo
      Visible = False
    end
    object N11: TMenuItem
      Action = Atop
    end
    object N12: TMenuItem
      Action = Abuttom
    end
  end
  object JvImageList2: TJvImageList
    DrawingStyle = dsTransparent
    Items = <>
    Left = 316
    Top = 169
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBDBDBFFF9F9F9FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EAEAEAFFB2B2B2FFEAEAEAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000022A045FFB5B6B5FFF9F9F9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAEAFF6866B0FFA7B9FDFF6866B0FFEAEAEAFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000027A84CFF83DDA5FFB6B7B6FFFAFA
      FAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EAEA
      EAFF6866B0FF97A9FBFF899DFAFF97A9FBFF6866B1FFEAEAEAFF000000000000
      000000000000000000000000000000000000E7E7E7FFDFDFDFFFDFDFDFFFDFDF
      DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF2BAE52FF92EFBAFF7CD99FFFBABA
      BAFFFAFAFAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAEAEAFF6866
      AFFF8E9DF7FF7E8FF6FF7E8FF6FF7E8FF7FF8D9DF7FF6866B1FFEAEAEAFF0000
      0000000000000000000000000000000000001C973DFF209E43FF24A448FF27A9
      4DFF2AAD51FF2CB054FF2DB356FF2EB356FF2DB356FF88E9B1FF88E9B0FF72D3
      94FFBBBBBBFFFAFAFAFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAEAEAFF6865AEFF828F
      F3FF717FF1FF717FF2FF717FF2FF727FF2FF717FF2FF828FF4FF6866B0FFEAEA
      EAFF000000000000000000000000000000001D993EFF7ADDA1FF7BDFA3FF7CE1
      A4FF7DE2A6FF7EE3A6FF7EE4A7FF7EE4A7FF7EE4A7FF7EE3A6FF7DE2A5FF7CE0
      A4FF68CB89FFBDBDBDFFFBFBFBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAEAEAFF6865ADFF7780EDFF646E
      EBFF646FECFF646FECFF7781EFFF646FEDFF646FEDFF646FEDFF7781EEFF6866
      AFFFEAEAEAFF0000000000000000000000001D983EFF6ED594FF6FD796FF70D9
      98FF72DB9AFF72DC9BFF73DD9CFF73DD9CFF73DD9CFF72DC9BFF71DA99FF70D8
      97FF6ED695FF5BC07CFFBEBEBEFFFBFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007774BAFF6B71E6FF565DE4FF565D
      E4FF5960E6FF7277EAFF908ED7FF7479EBFF6067E8FF5E65E8FF5C62E8FF6C72
      E9FF6865AEFFEAEAEAFF00000000000000001C963CFF60CA85FF62CD88FF63D0
      8AFF65D28CFF66D48EFF66D58FFF67D58FFF66D58FFF66D38EFF64D18CFF63CF
      8AFF61CC87FF5FC984FF4FB46EFFF3F3F3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009895DAFF6467DFFF6C6FE3FF7275
      E5FF8386E9FF9895DEFF000000009895DEFF8386EAFF7275E7FF7275E7FF7275
      E7FF8386E9FF6865ADFFEAEAEAFF000000001A9339FF51BF75FF58C47CFF65CA
      87FF6BCE8DFF6CCF8EFF6CD08FFF6CD08FFF6CD08FFF6BCF8EFF6BCD8CFF69CA
      8AFF5DC480FF61C381FF7BB98BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009895DAFF9F9FEAFF9F9F
      EBFF9895DCFF0000000000000000000000009895DDFF9F9FEDFF9292EAFF9292
      E9FF9292E9FF9F9FECFF6865ABFFF0F0F0FF178F35FF76C68FFF7CCB94FF7CCC
      96FF7ECF98FF7FD099FF7FD199FF80D19AFF7FD199FF7FD099FF7ECF98FF7CCC
      96FF87CF9DFF73B785FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C99DEFF9C99
      DEFF00000000000000000000000000000000000000009895DCFFC2C2F2FFBAB9
      F0FFBAB9F0FFBAB9EFFFC8C7F2FFF0F0F0FF148A31FFAEDBBAFFAEDCBBFFAFDD
      BCFFAFDEBDFFB0DEBEFFB0DFBEFFB0DFBEFFB0DFBEFF9CD7AEFF9CD6ADFFA3D8
      B3FF6CB37EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009895DBFFE6E5
      F9FFE2E1F8FFE6E5F9FF9895DAFF000000000000000000000000000000000000
      0000000000000000000000000000000000001B943AFFC0E2C9FFC4E4CDFF65AF
      78FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009895
      DAFFFFFFFFFF9895DAFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000168D34FFE6F3E9FF62AB73FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000013872EFF5BA76CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008FC39BFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFF3F00000000
      F8FFFF1F00000000F07FFF0F00000000E03F000700000000C01F000300000000
      800F000100000000000700000000000000030000000000000201000100000000
      8700000300000000CF80000700000000FFC1FF0F00000000FFE3FF1F00000000
      FFFFFF3F00000000FFFFFF7F0000000000000000000000000000000000000000
      000000000000}
  end
  object IdCookieManager1: TIdCookieManager
    Left = 484
    Top = 97
  end
  object JvTimer1: TJvTimer
    Enabled = False
    OnTimer = JvTimer1Timer
    Left = 452
    Top = 193
  end
  object JvTrayIcon1: TJvTrayIcon
    Active = True
    IconIndex = 0
    PopupMenu = JvPMtray
    Visibility = [tvVisibleTaskBar, tvVisibleTaskList, tvAutoHide, tvRestoreClick, tvMinimizeClick, tvMinimizeDbClick]
    Left = 444
    Top = 265
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    FileName = 'conf.ini'
    SubStorages = <>
    Left = 372
    Top = 137
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    StoredProps.Strings = (
      'LBlist.Items'
      'jvdir.Text'
      'JvCheckBox1.Checked'
      'JvRadioGroup1.ItemIndex'
      'JvCheckBox2.Checked'
      'JvSpinEdit1.Value'
      'JvListView1.Columns'
      'JvListView1.Items'
      'JvRadioButton1.Checked'
      'JvRadioButton2.Checked'
      'Jvpwd.Text'
      'Jvlogin.Text'
      'JvCheckBox3.Checked'
      'JvRGrest.ItemIndex'
      'CBplglist.ItemIndex'
      'TVlist.Items')
    StoredValues = <>
    Left = 452
    Top = 225
  end
  object JvTabDefaultPainter1: TJvTabDefaultPainter
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clHighlight
    ActiveFont.Height = -11
    ActiveFont.Name = 'MS Sans Serif'
    ActiveFont.Style = []
    InactiveFont.Charset = DEFAULT_CHARSET
    InactiveFont.Color = clWindowText
    InactiveFont.Height = -11
    InactiveFont.Name = 'MS Sans Serif'
    InactiveFont.Style = []
    DisabledFont.Charset = DEFAULT_CHARSET
    DisabledFont.Color = clGrayText
    DisabledFont.Height = -11
    DisabledFont.Name = 'MS Sans Serif'
    DisabledFont.Style = []
    Left = 500
    Top = 250
  end
  object JvClipboardMonitor1: TJvClipboardMonitor
    OnChange = JvClipboardMonitor1Change
    Left = 467
    Top = 161
  end
  object JvCsvDataSet1: TJvCsvDataSet
    FileName = 'accounts.cvs'
    Changed = False
    CsvFieldDef = 'EMAIL:$25,PWD:$10,SIZE:%,LASTACCESS:@'
    CsvUniqueKeys = False
    ExtendedHeaderInfo = False
    CaseInsensitive = False
    AutoBackupCount = 0
    StoreDefs = True
    Left = 499
    Top = 193
    object JvCsvDataSet1EMAIL: TStringField
      FieldName = 'EMAIL'
      Required = True
      Size = 25
    end
    object JvCsvDataSet1PWD: TStringField
      FieldName = 'PWD'
      Required = True
      Size = 10
    end
    object JvCsvDataSet1SIZE: TIntegerField
      FieldName = 'SIZE'
    end
    object JvCsvDataSet1LASTACCESS: TDateTimeField
      FieldName = 'LASTACCESS'
    end
  end
  object DataSource1: TDataSource
    DataSet = JvCsvDataSet1
    Left = 348
    Top = 104
  end
  object https: TIdHTTP
    IOHandler = IdSSLIOHandlerSocket1
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 
      'text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,t' +
      'ext/plain;q=0.8,image/png,*/*;q=0.5'
    Request.AcceptCharSet = 'windows-1251,utf-8;q=0.7,*;q=0.7'
    Request.BasicAuthentication = False
    Request.UserAgent = 
      'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.6) Gecko/' +
      '20050317 Firefox/1.0.2'
    HTTPOptions = [hoForceEncodeParams]
    CookieManager = IdCookieManager2
    Left = 220
    Top = 225
  end
  object IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket
    SSLOptions.Method = sslvSSLv3
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 116
    Top = 177
  end
  object IdCookieManager2: TIdCookieManager
    Left = 396
    Top = 137
  end
  object https1: TIdHTTP
    IOHandler = IdSSLIOHandlerSocket1
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 
      'text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,t' +
      'ext/plain;q=0.8,image/png,*/*;q=0.5'
    Request.AcceptCharSet = 'windows-1251,utf-8;q=0.7,*;q=0.7'
    Request.BasicAuthentication = False
    Request.UserAgent = 
      'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.6) Gecko/' +
      '20050317 Firefox/1.0.2'
    HTTPOptions = [hoForceEncodeParams]
    CookieManager = IdCookieManager3
    Left = 204
    Top = 265
  end
  object IdCookieManager3: TIdCookieManager
    Left = 116
    Top = 273
  end
  object http1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 
      'text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,t' +
      'ext/plain;q=0.8,image/png,*/*;q=0.5'
    Request.AcceptCharSet = 'windows-1251,utf-8;q=0.7,*;q=0.7'
    Request.BasicAuthentication = False
    Request.UserAgent = 
      'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.6) Gecko/' +
      '20050317 Firefox/1.0.2'
    HTTPOptions = [hoForceEncodeParams]
    CookieManager = IdCookieManager3
    Left = 188
    Top = 305
  end
  object JvLogFile: TJvLogFile
    FileName = 'log.txt'
    AutoSave = True
    SizeLimit = 50000
    Left = 164
    Top = 88
  end
  object JvPMtray: TJvPopupMenu
    Style = msXP
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 315
    Top = 257
    object N4: TMenuItem
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100'/'#1056#1072#1079#1074#1077#1088#1085#1091#1090#1100
      Default = True
      OnClick = N4Click
    end
    object N9: TMenuItem
      Action = Aadd
    end
    object N10: TMenuItem
      Action = Astart
    end
    object Apouse1: TMenuItem
      Action = Apouse
    end
    object Astop1: TMenuItem
      Action = Astop
    end
    object N5: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N5Click
    end
  end
  object XPManifest1: TXPManifest
    Left = 387
    Top = 177
  end
end
