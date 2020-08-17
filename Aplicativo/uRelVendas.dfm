object FrmRelVendas: TFrmRelVendas
  Left = 53
  Top = 41
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Relat'#243'rio de Vendas'
  ClientHeight = 496
  ClientWidth = 726
  Color = 7715583
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PG_PAINEL: TPageControl
    Left = 1
    Top = 82
    Width = 721
    Height = 406
    ActivePage = tb_analitico
    TabOrder = 0
    object tb_sintetico: TTabSheet
      Caption = 'Sint'#233'tico'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 2
        Width = 711
        Height = 329
        Ctl3D = False
        DataSource = dsRelSintetico
        Options = [dgTitles, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DT_ORCAMENTO'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 399
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUM'
            Width = 109
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 337
        Width = 704
        Height = 22
        DataSource = dsRelAnalitico
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 1
      end
    end
    object tb_analitico: TTabSheet
      Caption = 'Anal'#237'tico'
      ImageIndex = 1
      object DBNavigator2: TDBNavigator
        Left = 0
        Top = 333
        Width = 712
        Height = 22
        DataSource = dsRelAnalitico
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 3
        Width = 712
        Height = 322
        Ctl3D = False
        DataSource = dsRelAnalitico
        Options = [dgTitles, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DT_ORCAMENTO'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 399
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANT'
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 726
    Height = 54
    Align = alTop
    Color = 7715583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7715583
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 58
      Top = 12
      Width = 101
      Height = 13
      Caption = 'Informe o Periodo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 108
      Top = 33
      Width = 9
      Height = 13
      Caption = 'A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MaskEdit1: TMaskEdit
      Left = 2
      Top = 27
      Width = 101
      Height = 19
      BevelOuter = bvNone
      BevelKind = bkFlat
      CharCase = ecUpperCase
      Ctl3D = False
      EditMask = '##/##/####;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
      OnEnter = MaskEdit1Enter
      OnExit = MaskEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object MaskEdit2: TMaskEdit
      Left = 122
      Top = 27
      Width = 101
      Height = 19
      BevelOuter = bvNone
      BevelKind = bkFlat
      CharCase = ecUpperCase
      Ctl3D = False
      EditMask = '##/##/####;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      OnKeyPress = FormKeyPress
    end
    object BB_PESQUISAR: TBitBtn
      Left = 229
      Top = 21
      Width = 88
      Height = 25
      Caption = '&Pesquisar'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121212001313130014141400151515001616160017171700181818001919
        19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
        2100222222002323230024242400252525002626260027272700282828002929
        29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
        3100323232003333330034343400353535003636360037373700383838003939
        39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        4100424242004343430044444400454545004646460047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
        5100525252005353530054545400555555005656560057575700585858005959
        59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
        6100626262006363630064646400656565006666660067676700666769006668
        6A0066696B00676A6C00696B6C006D6D6D006E6E6E006F6F6F00707070006F70
        71006F7172006F7173006F7174006F7275006F7276006F737600707377006E74
        7A006C757E006F757B0072767A0073777A0075787B0076797C00787B7D007B7D
        7F007D7F80008081820084848400858585008686860087878700888888008B89
        89008F8B8A00938C8A00988E8B009D8F8B00A28F8A00A78F8900AA8E8900AC8E
        8800AE8E8800B08D8700B18D8700B38E8700B38D8600B48E8700B58F8700B690
        8700B6918800B7928900B8948A00BA958B00BB968C00BD988E00BE988E00C098
        8E00C1998F00C29A8F00C49C9100C6A09300C9A39500CDA89600D0AC9700D5B3
        9900D9B89B00DEBE9E00E6C59E00E9CAA200ECCDA300F0D0A300F2D2A300F3D5
        A600F4D8AB00F4DAAC00F5DBAE00F5DDB000F5DDB200F5DEB300F5E1B900F7E7
        C000F9EECB00FBF4D300FDF9D900FDFBDC00FEFDE000FEFDE500FDFDEA00FBFC
        E900F8FAE800F5F8E900F1F7EA00EFF5EA00EDF4EA00EDF2EA00EEEDE900EFE5
        EA00F1DBEA00F4CDEB00F9B9ED00FE81F300FE38F900FE16FC00FE05FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F905FE00EF11FE00E31E
        FE00D62BFE00CC36FC00B949FB00A859F9009869F6008B75F5007783F400638C
        EF005691EC004E94E9004996E8004596E700489BE7004B9FE8004EA3E8004FA7
        EA004FA5E5004EA3E2004E9FDD004E9DD900509BD600509AD300DB68A0DBDBDB
        DBDBDBDBDBDBDBDBDBDBFFF57AA4DBDBDBDBDBDBDBDBDBDBDBDBF9F9F57AA4DB
        DBDBDBDBDBDBDBDBDBDBDBF9F9F57AA4DBDBDBDBDBDBDBDBDBDBDBDBF9F9F57A
        9CDBDBDBDBDBDBDBDBDBDBDBDBF9F9F56BDB93A5A59FDBDBDBDBDBDBDBDBF9CA
        A49EB8BFBFBCAB96DBDBDBDBDBDBDBDBA7B9BCBDBDBFC0CA93DBDBDBDBDBDBDB
        A5B4BBBDBFC0C0C0A7DBDBDBDBDBDBA5B5ACBABEBFC0C0C0BA9CDBDBDBDBDBA5
        B5AAB4BCBEBFBFBEBA9EDBDBDBDBDB9EB9ACADB8BCBEBDBEB897DBDBDBDBDBDB
        ABBFB8ADB1B9BBBC99DBDBDBDBDBDBDB96CAC0B1ACB0B9A999DBDBDBDBDBDBDB
        DB93A7B8B7AE9999DBDBDBDBDBDBDBDBDBDBDB9D9E9ADBDBDBDB}
      TabOrder = 2
      OnClick = BB_PESQUISARClick
    end
    object BB_IMPRIMIR: TBitBtn
      Left = 320
      Top = 21
      Width = 88
      Height = 25
      Caption = '&Imprimir'
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB3B1B2FF00FFFF00FFFF00FF9A99999A9999A4A1
        A2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3B1B2B3B1B2DEDCDCAB
        A9A95553546F6D6EAEACACD2D0D1E0DFDF9A9999FF00FFFF00FFFF00FFFF00FF
        B3B1B2B3B1B2FBFBFBFFFFFFE0DEDFB2B0B05F5E603131333131344F4D4F8180
        819A9999A4A1A2FF00FFA7A4A5B3B1B2F4F2F3FFFFFFF2F0F0D6D5D5B3B1B2A4
        A1A1ACA9AA9E9D9D7E7D7D5655573536383635378D8B8CFF00FFB0ADAEEEEDED
        EBEBEBCCCACAB9B7B7C4C2C2D0CFCFB7B5B5ABA8A9A8A6A6ACA9AAAFADADA4A1
        A28584849A9999FF00FFAAA7A8BFBDBEB7B5B5C1C0C0D5D5D5DCDDDDF1F1F0F4
        F2F4E4E3E3D2D1D1BFBDBDAFADAEA9A6A6ACA9AAA4A1A2FF00FFA7A4A5C0BFC0
        D5D4D4D9D9D9D5D5D5E9E9E9DCDADAB5BDB5CCCBCBD7D9DADFDFDFDDDDDDD3D2
        D2C6C6C6ADACACFF00FFFF00FFB0AEAFDBDCDCDADADAE4E4E4D5D3D3C5C1C4B8
        DCBAC9D1CBD2BAB5BFB7B6BBB9BAC4C2C3D0CFCFBBB9BAFF00FFFF00FFFF00FF
        B0AEAFCFCDCDC0BFBFC2C1C1EAEAEAF8F6F6F2F1F2F1E8E6E4E1E1D8D8D8C4C4
        C4A9A6A7FF00FFFF00FFFF00FFFF00FFFF00FFB0AEAFE1E3E3D6D6D7B1B3B4CA
        CDCFDDDFE0DEE2E2DFDFDFD3D2D3C0BFBFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFCEBE8FAE7DEEED5CCEAD4CCE9D8D4E6DDD9DBD9D8AAA8AAFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1FFE6D9FFDACCFF
        D1C0FFC9B6FFC2AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFD9B3B1FFE5D9FFD8CBFED0C1FFCAB7F9BBA8FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1FFE5D9FFD8CBFE
        D0C1FEC8B6FBC1AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFD9B3B1FBE7DFFFE3D8FFD9CCFFD3C2FDC8B6FABFAEFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1D9B3B1D9B3B1D9B3B1F6
        BFB1F6BFB1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 3
      OnClick = BB_IMPRIMIRClick
    end
    object BB_SAIR: TBitBtn
      Left = 414
      Top = 21
      Width = 88
      Height = 25
      Caption = '&Sair'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4BA64B4BA9
        4D4D4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        824B4B824B4BB64F50C24F50C54D4EB24D4E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FF824B4BD45859CB5556C95455C95253B7
        4F524E1E1FFE8B8CFB9A9CF8AAABF7B5B6F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BD75C5DD05A5BCF595ACF5758BD53564E1E1F23B54A13C14816BD480CBC
        41F7B5B6824B4BFF00FFFF00FFFF00FF824B4BDD6364D75F60D55E5FD55C5DC2
        575A4E1E1F2AB44D1CBF4C1EBC4C13BC45F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BE36869DD6566DA6364DE6667C6595B4E1E1F26B14916BC481BBB4910BB
        43F7B5B6824B4BFF00FFFF00FFFF00FF824B4BEB6D6EE26768E67E7FFAD3D4CC
        6E704E1E1FA5D89750D16F42C9662DC758F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BF27374E96C6DEB8182FCD1D3CF6E704E1E1FFFF2CCFFFFD7FFFFD4E6FC
        C7F7B5B6824B4BFF00FFFF00FFFF00FF824B4BF87879F07576EE7273F07374D1
        65664E1E1FFCEFC7FFFFD5FFFFD3FFFFD7F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFE7F80F77A7BF6797AF77779D76B6B4E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4BFF8384FC7F80FB7E7FFE7F80DA
        6E6F4E1E1FFCEFC7FFFFD5FFFFD3FFFFD5F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFF8889FF8283FF8182FF8283E073744E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4B824B4BE27576FE8182FF8687E5
        76774E1E1FFAEBC5FCFBD1FCFBCFFCFBD1F7B5B6824B4BFF00FFFF00FFFF00FF
        FF00FFFF00FF824B4B9C5657CB6C6DCF6E6E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B82
        4B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 4
      OnClick = BB_SAIRClick
    end
  end
  object PageControl1: TPageControl
    Left = 414
    Top = 433
    Width = 710
    Height = 423
    ActivePage = TabSheet1
    TabOrder = 2
    Visible = False
    object TabSheet1: TTabSheet
      Caption = 'sintetico'
      object QR_SINTETICO: TQuickRep
        Left = -28
        Top = -24
        Width = 794
        Height = 1123
        DataSet = cdsRelSintetico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE'
          'QRSTRINGSBAND1')
        Functions.DATA = (
          '0'
          '0'
          #39#39
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Continuous = False
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.UseStandardprinter = False
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrinterSettings.MemoryLimit = 1000000
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        SnapToGrid = True
        Units = Native
        Zoom = 100
        PrevFormStyle = fsMDIForm
        PreviewInitialState = wsMaximized
        PrevInitialZoom = qrZoomToWidth
        PreviewDefaultSaveType = stQRP
        PreviewLeft = 0
        PreviewTop = 0
        object QRBand1: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 78
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            206.375000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel1: TQRLabel
            Left = 152
            Top = 48
            Width = 284
            Height = 20
            Size.Values = (
              52.916666666666670000
              402.166666666666700000
              127.000000000000000000
              751.416666666666800000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'RELAT'#211'RIO DE VENDAS SINT'#201'TICO'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 12
          end
          object QRLabel2: TQRLabel
            Left = 6
            Top = 8
            Width = 33
            Height = 17
            Size.Values = (
              44.979166666666670000
              15.875000000000000000
              21.166666666666670000
              87.312500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Loja:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRL_LOJA: TQRLabel
            Left = 48
            Top = 8
            Width = 66
            Height = 17
            Size.Values = (
              44.979166666666670000
              127.000000000000000000
              21.166666666666670000
              174.625000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'QRL_LOJA'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object qrl_periodo: TQRLabel
            Left = 232
            Top = 24
            Width = 74
            Height = 17
            Size.Values = (
              44.979166666666670000
              613.833333333333400000
              63.500000000000000000
              195.791666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'qrl_periodo'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRShape1: TQRShape
            Left = 544
            Top = 0
            Width = 1
            Height = 77
            Size.Values = (
              203.729166666666700000
              1439.333333333333000000
              0.000000000000000000
              2.645833333333333000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel3: TQRLabel
            Left = 548
            Top = 6
            Width = 36
            Height = 20
            Size.Values = (
              52.916666666666670000
              1449.916666666667000000
              15.875000000000000000
              95.250000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Data :'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel4: TQRLabel
            Left = 548
            Top = 29
            Width = 32
            Height = 17
            Size.Values = (
              44.979166666666670000
              1449.916666666667000000
              76.729166666666680000
              84.666666666666680000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Hora:'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRSysData1: TQRSysData
            Left = 592
            Top = 6
            Width = 38
            Height = 17
            Size.Values = (
              44.979166666666670000
              1566.333333333333000000
              15.875000000000000000
              100.541666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            FontSize = 10
          end
          object QRSysData2: TQRSysData
            Left = 592
            Top = 31
            Width = 41
            Height = 17
            Size.Values = (
              44.979166666666670000
              1566.333333333333000000
              82.020833333333320000
              108.479166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsTime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            FontSize = 10
          end
          object QRLabel5: TQRLabel
            Left = 548
            Top = 55
            Width = 49
            Height = 17
            Size.Values = (
              44.979166666666670000
              1449.916666666667000000
              145.520833333333300000
              129.645833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Usu'#225'rio:'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRL_USUARIO: TQRLabel
            Left = 602
            Top = 55
            Width = 49
            Height = 17
            Size.Values = (
              44.979166666666670000
              1592.791666666667000000
              145.520833333333300000
              129.645833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Usu'#225'rio'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRGroup1: TQRGroup
          Left = 38
          Top = 116
          Width = 718
          Height = 21
          Frame.DrawBottom = True
          AlignToBottom = False
          Color = 14540253
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          FooterBand = QRBand3
          Master = QR_SINTETICO
          ReprintOnNewPage = False
          object QRLabel6: TQRLabel
            Left = 3
            Top = 3
            Width = 69
            Height = 17
            Size.Values = (
              44.979166666666670000
              7.937500000000000000
              7.937500000000000000
              182.562500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Data Venda'
            Color = 14540253
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel8: TQRLabel
            Left = 163
            Top = 3
            Width = 108
            Height = 17
            Size.Values = (
              44.979166666666670000
              431.270833333333300000
              7.937500000000000000
              285.750000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Descri'#231#227'o Produto'
            Color = 14540253
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel11: TQRLabel
            Left = 584
            Top = 3
            Width = 36
            Height = 17
            Size.Values = (
              44.979166666666670000
              1545.166666666667000000
              7.937500000000000000
              95.250000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Quant'
            Color = 14540253
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRBand2: TQRBand
          Left = 38
          Top = 137
          Width = 718
          Height = 16
          AlignToBottom = False
          BeforePrint = QRBand2BeforePrint
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            42.333333333333340000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText1: TQRDBText
            Left = 5
            Top = 1
            Width = 100
            Height = 16
            Size.Values = (
              42.333333333333330000
              13.229166666666670000
              2.645833333333333000
              264.583333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsRelSintetico
            DataField = 'DT_ORCAMENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 9
          end
          object QRDBText3: TQRDBText
            Left = 154
            Top = 1
            Width = 72
            Height = 16
            Size.Values = (
              42.333333333333330000
              407.458333333333300000
              2.645833333333333000
              190.500000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsRelSintetico
            DataField = 'DESCRICAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 9
          end
          object QRDBText6: TQRDBText
            Left = 590
            Top = 0
            Width = 27
            Height = 16
            Size.Values = (
              42.333333333333330000
              1561.041666666667000000
              0.000000000000000000
              71.437500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsRelSintetico
            DataField = 'SUM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 9
          end
        end
        object QRBand3: TQRBand
          Left = 38
          Top = 153
          Width = 718
          Height = 22
          Frame.DrawTop = True
          Frame.DrawBottom = True
          AlignToBottom = False
          Color = 14540253
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            58.208333333333340000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupFooter
          object QRL_TOTAL_VENDA: TQRLabel
            Left = 410
            Top = 2
            Width = 26
            Height = 17
            Size.Values = (
              44.979166666666670000
              1084.791666666667000000
              5.291666666666667000
              68.791666666666680000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taRightJustify
            AlignToBand = False
            Caption = '0,00'
            Color = 14540253
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel12: TQRLabel
            Left = 4
            Top = 2
            Width = 95
            Height = 17
            Size.Values = (
              44.979166666666670000
              10.583333333333330000
              5.291666666666667000
              251.354166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Total de Pe'#231'as'
            Color = 14540253
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRBand5: TQRBand
          Left = 38
          Top = 175
          Width = 718
          Height = 26
          Frame.DrawTop = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            68.791666666666680000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel17: TQRLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 17
            Size.Values = (
              44.979166666666670000
              5.291666666666667000
              7.937500000000000000
              187.854166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Prompt - Pdv'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 9
          end
          object QRLabel147: TQRLabel
            Left = 281
            Top = 3
            Width = 113
            Height = 17
            Size.Values = (
              44.979166666666670000
              743.479166666666800000
              7.937500000000000000
              298.979166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = ' Por M'#225'rcio Santos'#174
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 9
          end
          object QRL_TOTAL: TQRLabel
            Left = 530
            Top = 3
            Width = 65
            Height = 17
            Size.Values = (
              44.979166666666670000
              1402.291666666667000000
              7.937500000000000000
              171.979166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Caption = 'Pagina(s):'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 9
          end
          object QRSysData26: TQRSysData
            Left = 597
            Top = 3
            Width = 20
            Height = 17
            Size.Values = (
              44.979166666666670000
              1579.562500000000000000
              7.937500000000000000
              52.916666666666660000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsPageNumber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            FontSize = 9
          end
          object QRLabel16: TQRLabel
            Left = 619
            Top = 3
            Width = 12
            Height = 17
            Size.Values = (
              44.979166666666670000
              1637.770833333333000000
              7.937500000000000000
              31.750000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = '/'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 9
          end
          object QRL_TOTAL_PAGINAS: TQRLabel
            Left = 633
            Top = 3
            Width = 31
            Height = 17
            Size.Values = (
              44.979166666666670000
              1674.812500000000000000
              7.937500000000000000
              82.020833333333340000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Caption = '00000'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 9
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'analitico'
      ImageIndex = 1
      object QR_ANALITICO: TQuickRep
        Left = -8
        Top = 0
        Width = 794
        Height = 1123
        DataSet = cdsRelAnalitico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE'
          'QRSTRINGSBAND1')
        Functions.DATA = (
          '0'
          '0'
          #39#39
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Continuous = False
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.UseStandardprinter = False
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrinterSettings.MemoryLimit = 1000000
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        SnapToGrid = True
        Units = Native
        Zoom = 100
        PrevFormStyle = fsMDIForm
        PreviewInitialState = wsMaximized
        PrevInitialZoom = qrZoomToWidth
        PreviewDefaultSaveType = stQRP
        PreviewLeft = 0
        PreviewTop = 0
        object QRBand4: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 78
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            206.375000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel7: TQRLabel
            Left = 152
            Top = 48
            Width = 284
            Height = 20
            Size.Values = (
              52.916666666666670000
              402.166666666666700000
              127.000000000000000000
              751.416666666666600000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'RELAT'#211'RIO DE VENDAS SINT'#201'TICO'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 12
          end
          object QRLabel9: TQRLabel
            Left = 6
            Top = 8
            Width = 33
            Height = 17
            Size.Values = (
              44.979166666666670000
              15.875000000000000000
              21.166666666666670000
              87.312500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Loja:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRL_LOJA1: TQRLabel
            Left = 48
            Top = 8
            Width = 66
            Height = 17
            Size.Values = (
              44.979166666666670000
              127.000000000000000000
              21.166666666666670000
              174.625000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'QRL_LOJA'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRL_PERIODO1: TQRLabel
            Left = 232
            Top = 24
            Width = 74
            Height = 17
            Size.Values = (
              44.979166666666670000
              613.833333333333400000
              63.500000000000000000
              195.791666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'qrl_periodo'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRShape2: TQRShape
            Left = 544
            Top = 0
            Width = 1
            Height = 77
            Size.Values = (
              203.729166666666700000
              1439.333333333333000000
              0.000000000000000000
              2.645833333333333000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRLabel14: TQRLabel
            Left = 548
            Top = 6
            Width = 36
            Height = 20
            Size.Values = (
              52.916666666666670000
              1449.916666666667000000
              15.875000000000000000
              95.250000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Data :'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel15: TQRLabel
            Left = 548
            Top = 29
            Width = 32
            Height = 17
            Size.Values = (
              44.979166666666670000
              1449.916666666667000000
              76.729166666666660000
              84.666666666666680000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Hora:'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRSysData3: TQRSysData
            Left = 592
            Top = 6
            Width = 38
            Height = 17
            Size.Values = (
              44.979166666666670000
              1566.333333333333000000
              15.875000000000000000
              100.541666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            FontSize = 10
          end
          object QRSysData4: TQRSysData
            Left = 592
            Top = 31
            Width = 41
            Height = 17
            Size.Values = (
              44.979166666666670000
              1566.333333333333000000
              82.020833333333340000
              108.479166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsTime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            FontSize = 10
          end
          object QRLabel18: TQRLabel
            Left = 548
            Top = 55
            Width = 49
            Height = 17
            Size.Values = (
              44.979166666666670000
              1449.916666666667000000
              145.520833333333300000
              129.645833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Usu'#225'rio:'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRL_USUARIO1: TQRLabel
            Left = 602
            Top = 55
            Width = 49
            Height = 17
            Size.Values = (
              44.979166666666670000
              1592.791666666667000000
              145.520833333333300000
              129.645833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Usu'#225'rio'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRGroup2: TQRGroup
          Left = 38
          Top = 116
          Width = 718
          Height = 21
          Frame.DrawBottom = True
          AlignToBottom = False
          Color = 14540253
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          FooterBand = QRBand7
          Master = QR_ANALITICO
          ReprintOnNewPage = False
          object QRLabel20: TQRLabel
            Left = 3
            Top = 3
            Width = 69
            Height = 17
            Size.Values = (
              44.979166666666670000
              7.937500000000000000
              7.937500000000000000
              182.562500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Data Venda'
            Color = 14540253
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel21: TQRLabel
            Left = 163
            Top = 3
            Width = 108
            Height = 17
            Size.Values = (
              44.979166666666670000
              431.270833333333300000
              7.937500000000000000
              285.750000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Descri'#231#227'o Produto'
            Color = 14540253
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel22: TQRLabel
            Left = 584
            Top = 3
            Width = 36
            Height = 17
            Size.Values = (
              44.979166666666670000
              1545.166666666667000000
              7.937500000000000000
              95.250000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Quant'
            Color = 14540253
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRBand6: TQRBand
          Left = 38
          Top = 137
          Width = 718
          Height = 16
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            42.333333333333340000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText2: TQRDBText
            Left = 5
            Top = 1
            Width = 100
            Height = 16
            Size.Values = (
              42.333333333333340000
              13.229166666666670000
              2.645833333333333000
              264.583333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsRelAnalitico
            DataField = 'DT_ORCAMENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 9
          end
          object QRDBText4: TQRDBText
            Left = 154
            Top = 1
            Width = 72
            Height = 16
            Size.Values = (
              42.333333333333340000
              407.458333333333300000
              2.645833333333333000
              190.500000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsRelAnalitico
            DataField = 'DESCRICAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 9
          end
          object QRDBText5: TQRDBText
            Left = 575
            Top = 0
            Width = 42
            Height = 16
            Size.Values = (
              42.333333333333340000
              1521.354166666667000000
              0.000000000000000000
              111.125000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsRelAnalitico
            DataField = 'QUANT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 9
          end
        end
        object QRBand7: TQRBand
          Left = 38
          Top = 153
          Width = 718
          Height = 22
          Frame.DrawTop = True
          Frame.DrawBottom = True
          AlignToBottom = False
          BeforePrint = QRBand7BeforePrint
          Color = 14540253
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            58.208333333333340000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupFooter
          object QRLabel23: TQRLabel
            Left = 4
            Top = 2
            Width = 95
            Height = 17
            Size.Values = (
              44.979166666666670000
              10.583333333333330000
              5.291666666666667000
              251.354166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Total de Pe'#231'as'
            Color = 14540253
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRL_TOTAL1: TQRLabel
            Left = 410
            Top = 2
            Width = 26
            Height = 17
            Size.Values = (
              44.979166666666670000
              1084.791666666667000000
              5.291666666666667000
              68.791666666666660000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taRightJustify
            AlignToBand = False
            Caption = '0,00'
            Color = 14540253
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRBand8: TQRBand
          Left = 38
          Top = 175
          Width = 718
          Height = 26
          Frame.DrawTop = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            68.791666666666680000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel26: TQRLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 17
            Size.Values = (
              44.979166666666670000
              5.291666666666667000
              7.937500000000000000
              187.854166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Prompt - Pdv'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 9
          end
          object QRLabel27: TQRLabel
            Left = 281
            Top = 3
            Width = 113
            Height = 17
            Size.Values = (
              44.979166666666670000
              743.479166666666600000
              7.937500000000000000
              298.979166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = ' Por M'#225'rcio Santos'#174
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 9
          end
          object QRLabel28: TQRLabel
            Left = 530
            Top = 3
            Width = 65
            Height = 17
            Size.Values = (
              44.979166666666670000
              1402.291666666667000000
              7.937500000000000000
              171.979166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Caption = 'Pagina(s):'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 9
          end
          object QRSysData5: TQRSysData
            Left = 597
            Top = 3
            Width = 20
            Height = 17
            Size.Values = (
              44.979166666666670000
              1579.562500000000000000
              7.937500000000000000
              52.916666666666660000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsPageNumber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            FontSize = 9
          end
          object QRLabel29: TQRLabel
            Left = 619
            Top = 3
            Width = 12
            Height = 17
            Size.Values = (
              44.979166666666670000
              1637.770833333333000000
              7.937500000000000000
              31.750000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Caption = '/'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 9
          end
          object QRL_TOTAL_PAGINAS1: TQRLabel
            Left = 633
            Top = 3
            Width = 31
            Height = 17
            Size.Values = (
              44.979166666666670000
              1674.812500000000000000
              7.937500000000000000
              82.020833333333340000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Caption = '00000'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 9
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 726
    Height = 25
    Align = alTop
    Caption = 'Relat'#243'rio de Vendas'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = 7715583
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    object SpeedButton3: TSpeedButton
      Left = 702
      Top = 1
      Width = 23
      Height = 23
      Align = alRight
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFF9999FFFFFFF9999FF9999FFFFF9999FFFF9999FFF9999FFFFF99999F9999
        9FFFFFF999999999FFFFFFFF9999999FFFFFFFFFF99999FFFFFFFFFFF99999FF
        FFFFFFFF9999999FFFFFFFF999999999FFFFFFF9999F9999FFFFFF9999FFF999
        9FFFF9999FFFFF9999FF9999FFFFFFF9999FFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton3Click
      ExplicitLeft = 976
      ExplicitTop = 0
      ExplicitHeight = 22
    end
  end
  object qRelSintetico: TSQLQuery
    GetMetadata = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' PD.dt_orcamento,'
      ' P.descricao,'
      ' SUM(IP.quant) '
      'FROM tb_item_pdv IP'
      'JOIN tb_produto P ON (P.id_produto = IP.id_produto)'
      'JOIN tb_pdv PD ON (PD.nr_orcamento = IP.nr_orcamento)'
      'WHERE PD.dt_orcamento between :DT_INI AND :DT_FIN'
      'and ip.status ='#39'V'#39
      'AND PD.STATUS = '#39'F'#39
      'GROUP BY'
      ' PD.dt_orcamento,'
      ' P.descricao'
      'ORDER BY SUM(IP.QUANT) DESC')
    SQLConnection = DM.ConexaoLocal
    Left = 240
    Top = 48
    object qRelSinteticoDT_ORCAMENTO: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DT_ORCAMENTO'
    end
    object qRelSinteticoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o Produto'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qRelSinteticoSUM: TLargeintField
      DisplayLabel = 'Quant'
      FieldName = 'SUM'
    end
  end
  object dspRelSintetico: TDataSetProvider
    DataSet = qRelSintetico
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 272
    Top = 48
  end
  object cdsRelSintetico: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    ProviderName = 'dspRelSintetico'
    Left = 304
    Top = 48
    object cdsRelSinteticoDT_ORCAMENTO: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DT_ORCAMENTO'
      EditMask = '##/##/####'
    end
    object cdsRelSinteticoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o Produto'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsRelSinteticoSUM: TLargeintField
      DisplayLabel = 'Quant'
      FieldName = 'SUM'
    end
  end
  object dsRelSintetico: TDataSource
    DataSet = cdsRelSintetico
    Left = 336
    Top = 48
  end
  object dspRelAnalitico: TDataSetProvider
    DataSet = qRelAnalitico
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 456
    Top = 56
  end
  object cdsRelAnalitico: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    ProviderName = 'dspRelAnalitico'
    Left = 488
    Top = 56
    object cdsRelAnaliticoDT_ORCAMENTO: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DT_ORCAMENTO'
      EditMask = '##/##/####'
    end
    object cdsRelAnaliticoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o Produto'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsRelAnaliticoQUANT: TIntegerField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
    end
  end
  object dsRelAnalitico: TDataSource
    DataSet = cdsRelAnalitico
    Left = 520
    Top = 56
  end
  object qRelAnalitico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' PD.dt_orcamento,'
      ' P.descricao,'
      ' IP.quant'
      'FROM tb_item_pdv IP'
      'JOIN tb_produto P ON (P.id_produto = IP.id_produto)'
      'JOIN tb_pdv PD ON (PD.nr_orcamento = IP.nr_orcamento)'
      'WHERE PD.dt_orcamento between :DT_INI AND :DT_FIN'
      'and ip.status ='#39'V'#39
      'AND PD.STATUS = '#39'F'#39
      'ORDER BY IP.QUANT  DESC')
    SQLConnection = DM.ConexaoLocal
    Left = 424
    Top = 56
    object qRelAnaliticoDT_ORCAMENTO: TDateField
      FieldName = 'DT_ORCAMENTO'
    end
    object qRelAnaliticoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qRelAnaliticoQUANT: TIntegerField
      FieldName = 'QUANT'
    end
  end
end
