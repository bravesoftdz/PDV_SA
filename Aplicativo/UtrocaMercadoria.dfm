﻿object frmTrocaMercadoria: TfrmTrocaMercadoria
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Troca de Mercadoria'
  ClientHeight = 471
  ClientWidth = 582
  Color = 7715583
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = DBEdit7KeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 4
    Top = 29
    Width = 578
    Height = 41
    Align = alNone
    ButtonHeight = 36
    ButtonWidth = 80
    Caption = 'ToolBar1'
    Images = ImageList1
    ShowCaptions = True
    TabOrder = 0
    Transparent = True
    object TB_NOVO: TToolButton
      Left = 0
      Top = 0
      Caption = '  &Nova Troca    '
      ImageIndex = 38
      OnClick = TB_NOVOClick
    end
    object TB_ALTERAR: TToolButton
      Left = 80
      Top = 0
      Caption = '   &Alterar'
      ImageIndex = 19
      OnClick = TB_ALTERARClick
    end
    object TB_CANCELAR: TToolButton
      Left = 160
      Top = 0
      Caption = '   &Cancelar  '
      ImageIndex = 46
      OnClick = TB_CANCELARClick
    end
    object TB_SALVAR: TToolButton
      Left = 240
      Top = 0
      Caption = '   &Salvar  '
      ImageIndex = 47
      OnClick = TB_SALVARClick
    end
    object TB_EXCLUIR: TToolButton
      Left = 320
      Top = 0
      Caption = '   &Excluir  '
      ImageIndex = 42
      OnClick = TB_EXCLUIRClick
    end
    object TB_PESQUISAR: TToolButton
      Left = 400
      Top = 0
      Caption = '  &Pesquisar  '
      ImageIndex = 12
      OnClick = TB_PESQUISARClick
    end
    object TB_SAIR: TToolButton
      Left = 480
      Top = 0
      Caption = '   Sai&r  '
      ImageIndex = 21
      OnClick = TB_SAIRClick
    end
  end
  object P_TROCA: TPanel
    Left = 4
    Top = 67
    Width = 579
    Height = 84
    Color = 7715583
    Enabled = False
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 2
      Top = 5
      Width = 42
      Height = 13
      Caption = 'N'#186' Troca'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 84
      Top = 5
      Width = 53
      Height = 13
      Caption = 'Data Troca'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 167
      Top = 5
      Width = 33
      Height = 13
      Caption = 'Cliente'
      FocusControl = DBEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 2
      Top = 42
      Width = 72
      Height = 13
      Caption = 'C'#243'd. Vendedor'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 84
      Top = 42
      Width = 91
      Height = 13
      Caption = 'Nome do Vendedor'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 415
      Top = 42
      Width = 27
      Height = 13
      Caption = 'Caixa'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 462
      Top = 42
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 3
      Top = 21
      Width = 81
      Height = 19
      Ctl3D = False
      DataField = 'NR_ORCAMENTO'
      DataSource = dsTroca
      Enabled = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 84
      Top = 21
      Width = 82
      Height = 19
      Ctl3D = False
      DataField = 'DT_ORCAMENTO'
      DataSource = dsTroca
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit6: TDBEdit
      Left = 167
      Top = 21
      Width = 410
      Height = 19
      Ctl3D = False
      DataField = 'NOME_CLIENTE'
      DataSource = dsTroca
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 2
      Top = 58
      Width = 81
      Height = 19
      Ctl3D = False
      DataField = 'ID_VENDEDOR'
      DataSource = dsTroca
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 84
      Top = 58
      Width = 330
      Height = 19
      Ctl3D = False
      DataField = 'NOME'
      DataSource = dsTroca
      ParentCtl3D = False
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 416
      Top = 58
      Width = 41
      Height = 19
      Ctl3D = False
      DataField = 'CAIXA'
      DataSource = dsTroca
      ParentCtl3D = False
      TabOrder = 5
    end
    object EdtUsuario: TEdit
      Left = 459
      Top = 58
      Width = 117
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 6
    end
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 429
    Width = 577
    Height = 38
    Caption = '   Loja  '
    Color = 7715583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object L_LOJA: TLabel
      Left = 15
      Top = 17
      Width = 33
      Height = 16
      Caption = '0001'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L_NOME_LOJA: TLabel
      Left = 71
      Top = 17
      Width = 45
      Height = 16
      Caption = 'NOME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L_ID_GRUPO: TLabel
      Left = 347
      Top = 17
      Width = 73
      Height = 24
      Caption = 'GRUPO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
  end
  object P_BOTOES1: TPanel
    Left = 4
    Top = 152
    Width = 79
    Height = 168
    TabOrder = 3
    object Label8: TLabel
      Left = 9
      Top = 2
      Width = 43
      Height = 13
      Caption = 'Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BB_INCLUIR: TBitBtn
      Left = 2
      Top = 17
      Width = 75
      Height = 25
      Caption = '&Incluir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF013002014103025104025104014303013302FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF014503014503037808039C0B03
        9F0C039F0C039D0C027E09014D04014D04FF00FFFF00FFFF00FFFF00FFFF00FF
        034F0903650904A30D03A60C03A00B029E0A039F0C03A00C03A50C03A60C0269
        06013402FF00FFFF00FFFF00FF044F09066B110AAB1F07A415049E0D029D0A54
        C45CAAE3B010A61B039E0C03A00C03A70C026A06024C04FF00FFFF00FF044F09
        10AC300DAB2809A41C039E0F3EBC48EEFAEFFFFFFF90DA97049F0D039E0C039F
        0C03A70C024C04FF00FF0357060D822317B6410EA92D05A01341BD4BF3FBF4FF
        FFFFFFFFFFFFFFFF7ED486049F0D039E0C03A50C037B0801420303570617A341
        18B54A11AB344CC158F4FCF6FCFEFCF6FCF7FCFEFCF8FCF8FFFFFF75D17D05A0
        0F03A10C03960A01420306680D21B1511EB75120B54FEBF8EFFFFFFF84D99AB7
        E9C5FFFFFF69CC72DCF4DEFFFFFF7FD48703A00C039F0C014A040874123EBD69
        2ABA5C21B553DEF6E798E1B422B655BAEBCEFFFFFF2CB53735B841F2FBF398DD
        9E03A00C039F0C02520506780E54C57A44C6741CB24E36BD6626B75822B554BB
        EBCCFFFFFF41C05B0CA62721B03913AA2C07A518039D0C01460306780E4CBD69
        83DDA722B6551CB24E22B55422B554BCEBCEFFFFFF46C2670FAA300FAA2E0CA6
        2706A716038C0A014603FF00FF21A336AAE7C568D08E16AF481BB14C22B554BD
        EBCFFFFFFF4CC56F10A9310EA7290BA42009AF1C036B0AFF00FFFF00FF21A336
        56C573C5F0D866CF8C20B45219B14CBFEDD0FFFFFF4CC67513AC3C12AA340FB0
        2D0A991F036B0AFF00FFFF00FFFF00FF1399236ACC88D0F4E39AE1B650C77A38
        BD672CBA5D30BB602FBC5D23BC4F11A33006620FFF00FFFF00FFFF00FFFF00FF
        FF00FF4BBF674BBF6798E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
        3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1DA43538B45446
        BC6642B8632BA649138C2AFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 0
      OnClick = BB_INCLUIRClick
      OnKeyDown = DBEdit7KeyDown
    end
    object BB_ALTERAR: TBitBtn
      Left = 2
      Top = 42
      Width = 75
      Height = 25
      Caption = '&Alterar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFB78183B78183B78183B78183B78183B78183B78183B7
        8183B78183B78183B78183B78183B78183FF00FFFF00FFFF00FFB78183FDEFD9
        F4E1C9E4CFB4D1BCA0CDB798DAC09AE4C599E9C896EDCB96EECC97F3D199B781
        83FF00FFFF00FFFF00FFB48176FEF3E3F8E7D3494645373C3E516061AE9C82BF
        A889D0B48DE4C393EDCB96F3D199B78183FF00FFFF00FFFF00FFB48176FFF7EB
        F9EBDAB0A5981B617D097CA818556F66625BA79479C5AC86DCBD8DEECD95B781
        83FF00FFFF00FFFF00FFBA8E85FFFCF4FAEFE4F2E5D638728629799A8D787F95
        6D6F7959539D8B73BAA380D9BC8CB47F81FF00FFFF00FFFF00FFBA8E85FFFFFD
        FBF4ECFAEFE3A5B3B17C7078E5A6A3C89292A4727276575195856CAF9978A877
        79FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5FBF3ECF4EBDF85787CEEB7B5DA
        A6A6C38E8E9E6E6E73564F93836B996E6FFF00FFFF00FFFF00FFCB9A82FFFFFF
        FFFEFDFDF8F4FBF3ECF0E4D9A37978E9B5B5D9A5A5C48F8F9D6D6D7759528F67
        69FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFFFFEFDFEF9F4FBF3EBE8D9CE9E
        7473E8B5B5D8A4A4C18D8D9D6C6C7D5556FF00FFFF00FFFF00FFDCA887FFFFFF
        FFFFFFFFFFFFFFFEFDFDF9F4FBF3EBE0CFC5A17676ECB9B9D6A2A2C68E8E965F
        5D585C60FF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDF8F3FD
        F6ECDAC5BCAC8080F3BCBBA3878C3392B319ADCC19ADCCFF00FFE3B18EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9AA7A71B27873469CBA0FCA
        F400A4E6021EAA000099EDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE4D4D2B8857ADCA76A10A5CF04A8E60936C9092CC30318AEEDBD92FCF7F4
        FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B86FF00FF077D
        CD4860F1204ADD0416AAEDBD92DCA887DCA887DCA887DCA887DCA887DCA887DC
        A887DCA887B8857AFF00FFFF00FFFF00FF3E4BDB192DC4FF00FF}
      TabOrder = 1
      OnClick = BB_ALTERARClick
      OnKeyDown = DBEdit7KeyDown
    end
    object BB_CANCELAR: TBitBtn
      Left = 1
      Top = 67
      Width = 75
      Height = 25
      Caption = 'En&cerrar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF00042700033200023F00023F000333000429FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00043900043900016400008700
        008C00008C00008900006600033B00033BFF00FFFF00FFFF00FFFF00FFFF00FF
        00034400025400009100009300008C00008700008C00008C0000910000930001
        54000326FF00FFFF00FFFF00FF000A5600015F0000A700009A00008C00008700
        008700008900008900008900008C00009300015400033BFF00FFFF00FF000A56
        0000B60000AE00009D00008C2C45B0E7EBF8D4DAF3000C940000890000890000
        8C00009300033BFF00FF000A5A0004890000CD0000AE0000931F38ABF4F6FCFF
        FFFF7385CF00008C0000890000890000890000910000660004350001420000B9
        0000CD0000B61C36AEF3F4FCFCFCFE6175C90000890000890000890000890000
        8900008E0000800003320000590001D80002DB405FECEEF0FEFFFFFFF6F7FEA8
        B8F5A4B4F4A9B5E5A9B5E5ABB7E6AEBAE800008C00008C00033900006B011BE2
        0009E19CADF3FFFFFFFFFFFFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00008E00008C00023F00006B193DEF0125E2000FD47D94EFFFFFFFF8FAFF66
        82FB0A2AC71835BE1835BC1531B71431B700009A00008700033600006B1539F6
        6581FD0007E70001D06881EDFFFFFFDAE2FF1839D70000B60000B10000B10000
        A700009D00007700043AFF00FF0007CF93A9FF385BF50000C30001CD5D78EBFF
        FFFFF2F4FF0015C40000B10000AC0000A20000A9000159FF00FFFF00FF0009D2
        1C40F0B7C6FF3355F10004DD0001CB6982EB91A5FA0007C70000BB0000B60000
        B9000096000159FF00FFFF00FFFF00FF0000A83255EFC6D1FF7992F90C30E300
        17E1010FE60113E60113E6000AE60000AC000154FF00FFFF00FFFF00FFFF00FF
        FF00FF082CE9082CE97790F9ADBDFF8CA1FA6782F24362EA0529E10000B90000
        B9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000C30010E100
        21E1001AE10001DD000098FF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = BB_CANCELARClick
      OnKeyDown = DBEdit7KeyDown
    end
    object BB_SALVAR: TBitBtn
      Left = 2
      Top = 142
      Width = 75
      Height = 25
      Caption = '&Salvar'
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
      TabOrder = 3
      Visible = False
      OnClick = BB_SALVARClick
      OnKeyDown = DBEdit7KeyDown
    end
    object BB_EXCLUIR: TBitBtn
      Left = 1
      Top = 92
      Width = 75
      Height = 25
      Caption = '&Excluir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF2BB81F3C48AF2BC81EF
        B072EEAF6EEFB275FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFBEBBDFEF3C9FBDEACF3C990FBB67EFFB47DFCCA99FFD9ADFED9A7F0B5
        77FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFEFAD3FEF7CCFBDCA9EBCA91A9
        B86E84AB542B912057A743EAF3C7FCE9BDEEAD6FFF00FFFF00FFFF00FFFF00FF
        EDA565F3C28AFCF0C4FCE5B5FBD09F2C9622007B00058206067F043DA335FEF2
        D0F0B173FF00FFFF00FFFF00FFFF00FFEEAB6DEDA767EFB070F6C990FFD8AC2E
        9823006E006ABF6BFFF0EA48A138A3AF5EFCAF74FF00FFFF00FFFF00FFFF00FF
        F2B479F2B77EF0B277F0AC6FFBB57E7AB46041A6416FBC69FFFFFFF4FEFBBCBB
        79F3AA6BFF00FFFF00FFFF00FFFF00FFF7C292FAC598F8C293F8C090F3BF8AC2
        D5A5FFFFFFD9EED556B1534BAF4BB8BC79F8B075FF00FFFF00FFFF00FFF6C792
        FCD4ADFCD4ACFCD0A9FCD0A9FFD4B55DA94680C780E0F2DE27982400700082B0
        5BFFBD90EEAC6DFF00FFFF00FFF6C792FFEAC4FEE3BCFEE2BAFEE0B8FFE0BAD9
        D9AC0A8209188A16037F0300790077B45DFFCEAAEEAC6DFF00FFFF00FFFADDAB
        FFFBD5FFF4CCFFF3CAFFF0C9FFEFC5FFF2D1B5D5982A96242B99249ACB87B5D1
        95FFE0BAF2B77AFF00FFFF00FFFCEFC4FFFFD8FFFBD3FFFCD4FFFBD3FFFBD4FF
        FCD4FFFFE1FFFFEBFFFFE7FFFFE0FFF8D7FFF4CBF3C086FF00FFFF00FFFEF4CB
        FFFFDDFFFFD9FFFFD9FFFFDAFFFED7FEF6CCF8DAA3F4C07DF4C17FF7D8A3FEF2
        C5FFFFDDF3C991FF00FFFF00FFF4CC96F8DEAFF8DDACF7D8A6F6CF99F3BF80EF
        AC66EB9D4FEB9C4CEB9F55F0AC6EFAC087FCD3A0FAC089FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA354EFAB68F7BC83FABF
        88FABC83FABC83FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFAC088FAC088FAC088FF00FFFF00FF}
      TabOrder = 4
      OnClick = BB_EXCLUIRClick
      OnKeyDown = DBEdit7KeyDown
    end
    object BB_FINALIZAR: TBitBtn
      Left = 2
      Top = 117
      Width = 75
      Height = 25
      Caption = '&Finalizar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6696BA6696BA6696BA669
        6BA6696BA6696BA6696BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA6696BF3D3A4F0CB97EFC68AEDC180EBBB76A6696BFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7756BF6DDBA707BCE0F2E
        F36E75BFEEC484A6696BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFBC8268F8E7CE0F30F7001EFF0F2FF3F0CC96A6696BFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD1926DFBF2E27486E70F30
        F8727FD7F3D7ABA6696BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFDA9D75FEFAF3FBF4E7FAEEDCF8E7CFF6E1C0A6696BFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE7AB79FFFFFFFEFBF8FCF7
        EEA6696AA6696AAC6C5AA46769A46769A46769A46769A46769A46769A46769A4
        6769FF00FFE7AB79FFFFFFFFFFFFFEFCFBA6696AC67F4EFF00FFA46769E9C49D
        D8A57BD8A373D59D66D1965AEAB66CA46769FF00FFE7AB79D1926DD1926D2A70
        27A6696AFF00FFFF00FFA46769BB76507D1800821F00811F00811E00DCA162A4
        6769FF00FFFF00FFFF00FF015A062CC5581C9631FF00FFFF00FFA7756BF6E9DD
        8A2A087F1A007B1600AB5B30FCDD9FA46769FF00FFFF00FF005D0330BD5741E0
        7522B63E087511FF00FFBC8268FFFFFFC99379791400892907E6BD99FFEAB5A4
        6769FF00FF2D6718067F141A922F27BB45149A260C8816036307D1926DFFFFFF
        FBF4F299411EBF7D59FAEDD4D4BCA0A46769FF00FFFF00FFFF00FF01550315A5
        2805700BFF00FFFF00FFDA9D75FFFFFFFFFFFFE7D0C4F7EEE3A46769A46769A4
        6A5AFF00FFFF00FFFF00FF036007099613036C07FF00FFFF00FFE7AB79FFFFFF
        FFFFFFFFFFFFFCFFFFA46769D18649FF00FFFF00FFFF00FF036E0704780A058C
        0D026005FF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DA46769FF00FFFF
        00FF02660602660601770705840C026606FF00FFFF00FFFF00FF}
      TabOrder = 5
      OnClick = BB_FINALIZARClick
      OnKeyDown = DBEdit7KeyDown
    end
  end
  object DBGrid1: TDBGrid
    Left = 86
    Top = 152
    Width = 496
    Height = 167
    Hint = 'Cor Azul(Itens Devolvidos) Cor Vermelha( Itens Trocados)'
    Ctl3D = False
    DataSource = dsItemTroca
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentColor = True
    ParentCtl3D = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBEdit7KeyDown
    OnKeyPress = FormKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_BARRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 164
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_UNIT'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_ITEM'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_TOTAL'
        Width = 71
        Visible = True
      end>
  end
  object P_PRODUTO: TPanel
    Left = 4
    Top = 324
    Width = 578
    Height = 42
    Color = 7715583
    Enabled = False
    ParentBackground = False
    TabOrder = 5
    object DBText1: TDBText
      Left = 93
      Top = 19
      Width = 231
      Height = 17
      DataField = 'DESCRICAO'
      DataSource = dsItemTroca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 2
      Top = 2
      Width = 72
      Height = 13
      Caption = 'C'#243'digo Barra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Descrição: TLabel
      Left = 90
      Top = 2
      Width = 72
      Height = 13
      Caption = 'C'#243'digo Barra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 326
      Top = 2
      Width = 34
      Height = 13
      Caption = 'Quant'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 362
      Top = 2
      Width = 55
      Height = 13
      Caption = 'Valor Unit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 501
      Top = 2
      Width = 29
      Height = 13
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 106
      Top = 1
      Width = 23
      Height = 22
      Visible = False
      OnClick = SpeedButton1Click
    end
    object Label20: TLabel
      Left = 413
      Top = 2
      Width = 34
      Height = 13
      Caption = '%Des'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 451
      Top = 2
      Width = 43
      Height = 13
      Caption = 'Vl. Desc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit7: TDBEdit
      Left = 2
      Top = 17
      Width = 89
      Height = 19
      Ctl3D = False
      DataField = 'COD_BARRA'
      DataSource = dsItemTroca
      ParentCtl3D = False
      TabOrder = 0
      OnExit = DBEdit7Exit
      OnKeyDown = DBEdit7KeyDown
      OnKeyPress = DBEdit7KeyPress
    end
    object DBEdit8: TDBEdit
      Left = 326
      Top = 18
      Width = 34
      Height = 19
      Ctl3D = False
      DataField = 'QUANT'
      DataSource = dsItemTroca
      ParentCtl3D = False
      TabOrder = 1
      OnExit = DBEdit8Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit9: TDBEdit
      Left = 362
      Top = 18
      Width = 49
      Height = 19
      Ctl3D = False
      DataField = 'VL_UNIT'
      DataSource = dsItemTroca
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object DBEdit10: TDBEdit
      Left = 501
      Top = 18
      Width = 74
      Height = 19
      Ctl3D = False
      DataField = 'VL_TOTAL'
      DataSource = dsItemTroca
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
      OnExit = DBEdit10Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit11: TDBEdit
      Left = 413
      Top = 18
      Width = 36
      Height = 19
      Ctl3D = False
      DataField = 'PERC_DES'
      DataSource = dsItemTroca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnExit = DBEdit11Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit13: TDBEdit
      Left = 451
      Top = 18
      Width = 49
      Height = 19
      Ctl3D = False
      DataField = 'DESC_ITEM'
      DataSource = dsItemTroca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnExit = DBEdit13Exit
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 367
    Width = 580
    Height = 65
    Caption = 'Totais'
    Color = clBlack
    ParentBackground = False
    ParentColor = False
    TabOrder = 6
    object DBText2: TDBText
      Left = 512
      Top = 7
      Width = 64
      Height = 17
      Color = 7715583
      DataField = 'VL_ORCAMENTO'
      DataSource = dsTroca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7715583
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 513
      Top = 26
      Width = 64
      Height = 17
      Hint = 'Cor Azul(Produtos Devolvidos) Vermelho(Produtos Trocados)'
      Color = 7715583
      DataField = 'VL_DESCONTO'
      DataSource = dsTroca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7715583
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object DBText4: TDBText
      Left = 512
      Top = 45
      Width = 64
      Height = 17
      Color = 7715583
      DataField = 'VL_LIQUIDO'
      DataSource = dsTroca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7715583
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label13: TLabel
      Left = 423
      Top = 7
      Width = 58
      Height = 13
      Caption = 'Valor Troca'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 423
      Top = 26
      Width = 83
      Height = 13
      Caption = 'Valor Devolvido'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label15: TLabel
      Left = 422
      Top = 45
      Width = 72
      Height = 13
      Caption = 'Valor Difere'#231'a'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label16: TLabel
      Left = 3
      Top = 24
      Width = 58
      Height = 13
      Caption = 'Mensagem :'
      Color = 7715583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7715583
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object L_MSG: TLabel
      Left = 3
      Top = 43
      Width = 4
      Height = 13
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 92
      Top = 8
      Width = 328
      Height = 13
      Caption = 'Cor Azul(Itens Devolvidos) Cor Vermelha( Itens Trocados)'
      Color = 7715583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7715583
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object P_VLVENDA1: TPanel
    Left = 0
    Top = 67
    Width = 582
    Height = 300
    Color = clBlack
    ParentBackground = False
    TabOrder = 7
    Visible = False
    object Label18: TLabel
      Left = 61
      Top = 11
      Width = 407
      Height = 30
      Caption = 'Selecione Modalidade de Pre'#231'o Para Troca'
      Color = 7715583
      Font.Charset = ANSI_CHARSET
      Font.Color = 7715583
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RadioGroup1: TRadioGroup
      Left = 5
      Top = 48
      Width = 571
      Height = 182
      Margins.Left = 9
      Margins.Top = 4
      Margins.Right = 9
      Margins.Bottom = 6
      Color = 7715583
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Avista(Dinheiro / D'#233'bito)'
        'Atacado'
        '1 X Cart'#227'o'
        '2 X Cart'#227'o'
        '3 X Cart'#227'o')
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 17
      Top = 239
      Width = 183
      Height = 38
      Caption = '&Confirmar e Iniciar Troca'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 200
      Top = 239
      Width = 183
      Height = 38
      Cancel = True
      Caption = 'Cancela&r'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object P_DESCONTO: TPanel
    Left = 152
    Top = 127
    Width = 238
    Height = 114
    Color = 7715583
    ParentBackground = False
    TabOrder = 8
    Visible = False
    object Label19: TLabel
      Left = 9
      Top = 56
      Width = 82
      Height = 15
      Caption = 'Valor Desconto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 236
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      Caption = 'D E S C O N T O '
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = 7715583
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit12: TDBEdit
      Left = 9
      Top = 74
      Width = 106
      Height = 19
      Ctl3D = False
      DataField = 'VL_LIQUIDO'
      DataSource = dsTroca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object BB_CONFIRMAR: TBitBtn
      Left = 139
      Top = 46
      Width = 86
      Height = 25
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = BB_CONFIRMARClick
    end
    object BitBtn3: TBitBtn
      Left = 139
      Top = 77
      Width = 86
      Height = 25
      Cancel = True
      Caption = 'Cancela&r'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn3Click
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 25
    Align = alTop
    Caption = 'Troca de Mercadorias'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = 7715583
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 9
    object SpeedButton3: TSpeedButton
      Left = 558
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
      ExplicitLeft = 772
      ExplicitTop = 0
    end
  end
  object Memo1: TMemo
    Left = 430
    Top = 438
    Width = 502
    Height = 358
    TabOrder = 10
    Visible = False
  end
  object P_SENHA: TPanel
    Left = 155
    Top = 162
    Width = 292
    Height = 141
    Color = 7715583
    ParentBackground = False
    TabOrder = 11
    Visible = False
    object Label42: TLabel
      Left = 59
      Top = 0
      Width = 169
      Height = 25
      Caption = 'Senha Para Liberar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label43: TLabel
      Left = 125
      Top = 22
      Width = 44
      Height = 13
      Caption = 'Usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label44: TLabel
      Left = 125
      Top = 61
      Width = 37
      Height = 13
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image3: TImage
      Left = 5
      Top = 26
      Width = 114
      Height = 74
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000640000
        0064080600000070E295540000000467414D410000AFC837058AE90000001974
        455874536F6674776172650041646F626520496D616765526561647971C9653C
        0000221A4944415478DAED5D097C54D5B9FFEE9D7D3249269924642321610BFB
        2A5856EB5615C4E2AFF63DD4BAB4D556B0FA9E3E5F9FA26DEDEBABFAF469295A
        54B4E2522DAE28082F80B2EF4B80400844B29040F67D32C9ECEFFB9F991B2621
        0993908DD77CBFDFC9BD3373EF3DE77EFFFBADE73B3792D7EBA501EA3F240D00
        D2BF6800907E460380F4331A00A49FD10020FD8C0600E9673400483FA30140FA
        190D00D2CF6800907E460380F4331A00A49FD10020FD8C9A01292A2ABAE847B7
        DB2DB62A958A9A9A9A28343494B66DDB469B376F26A3D1D8FE452589341A0D7D
        FDF5D7949595458B172F26B55A3D4E96E547F8FB391E8F6797CBE55ACE8766E0
        788C41AFD793D3E9147DEABD76FAC8742B156A92F84767BB7D5CF810B82BB5F8
        2EF0B8B6F62F6C2FBEB6244BC15D43963BB8AE24AE2DF9FE90562591DB2B896B
        6BD432590CEA967DF716205AADF62E3EFF5FF8BCA9369B2DA3BEBEFECF0CCC2A
        1C3B00480F0282EBB124B40664E19429533E9C3B77AE9E8110DFE5E6E63ACACB
        CBEF61A056A31F962062A91900A4BB00E1A7DDCC9D3EC4C7CEE7ED69DEAE5CBB
        76EDEEECEC6CC3A38F3EBAE99E7BEE993979F264AAAAAAA24F3FFD546C4B4B4B
        777FF0C10773468D1AE5BEE9A69B8801C2750600091690B0B030DAB469136DD8
        B0812C164B73A7CCC408B3D9BC9AA5E0061C73EEDC395CAF62F5EAD56F1C3972
        C4F4D863FFFAE80F172CA0F8B838CACBCFA3C3870E9387FB2DABA8AC7FE59557
        92C78C1953CD80517171F100209D01C46030505E5E1E7DF7DD7774F8F0617F67
        1298F8E4B5D75EFBC7DB6EBB8DAC562BAD5FBF5E3CEDFBF7EFF77EF2F1C76717
        2C5C1872FB4F1E886AB4DBA9815596CCEAC9C3EAE99BAF3EA9D9B279D38A99B3
        66955D75D555B6EAEAEA8D3C9EFC01408204045B9D4E2780D9BD7BB760BCDF80
        EF9C376FDECCA953A70A40D6AC594375757562FFD55797DFC75293BB64E97FAD
        8C183D63A4DB6421B29653E1DE8DC59B56AF2A997FEBADE3AFBBEE3AD5D9B367
        E9F4E99C83B53555F71AC99EF537D36D03805C0A10185E452A709E9D9FF83D7B
        F6D0DEBD7B97B3843CCC065A48068E059D3F7FBE106A2C3121E1547E41C198ED
        BBF7DD5F56593D2B262A62FFE17D7BFE62898C7C7AD99FFF7CD7D0A143851ACC
        387C886A2ACBFFB2433B79C901ED2472938BDAA301405A01028FC8EF4D59366E
        DC782F83F33F23468C2093C924A4036A8DAF5D76F5D5576787868595F287F3C7
        8E1EC958B162C5A969D3A6E7669F3A55E668B47DFEDC1F7EBF502579D9AE1C22
        5B6531EDA80EF9F07DDD82BBC8DB8861B61BB50E0072312053F9DC1FF1FE2C56
        63A34E9F3E1D79FCF8710112C719428262636329262686E2D898878787231681
        77E6F4B8DD27D6AE5BB7ED78717D4A5378D22DB54E49EDF4CA54EFF0524EADE7
        D06939F920F71ECD5D7BB8D571B3722BE156CE2D87DB09EEB76200101F20A3F8
        FBC7797B2BB7180080EF11D87DFEF9E7F4ECB3CFD284091368CE9C39C2638237
        367AF4684A4A4A12D7C17768B043550D0E67E6B91AD58A6376F9DBB3504F1A22
        2DF741CE965C6E49D5DC2AB9E571DBC6ED4B3EF4146F9DFF5080B04A32F32E80
        F817FE6C0210F81E5B343CFDB0034B962C2118F71933668841A4A6A6D2B871E3
        84B4E038F4870650D81289666D72D2BA1C2B2D3B544FF935DC8B41CFE7E22683
        CAB301884C6E6BB86DE45B055065FF6F01F11BF089ACA25E66867E1FD20020F0
        BD02061A6C07BCAEFBEFBF9FD86ED00D37DC2082470EFA08461B12A138030A20
        CD5B6E6AC943F9D576FAEDB6724ACF67693118F9BAEA6000694D07B86D6640F6
        F3760FF759FAFF0A10FEFD3ADEAE622012153000800208B688E01D0E07AD5AB5
        8ABE6497372A3A9A468F194BEC5DD18811C38594C05D564801450144696AAF9B
        AC0E17FDF7CE325A79CC461E9D89541A4D4B6E054FB03F47B91DE1B6118DC75A
        754503C252F17D66D46A06221AB9295C341010109E7C30F38B2FBEA486867A61
        C44B4A4AA8A0E02C8530507366CFA5E1C352042072C0C0957E0381C103A06250
        5CBC7D716729FDE9602DC9216692353ABA4C7290CF21D8CDED136EDBFCE0B8FA
        2D208585852DEE80BF4F6306A53318498192A13055F1B60CACEFD7AD4FA7DAEA
        4A5AB87021353636D2962D5BC4F52A2ACA69CAB419346DEA14360B5A015E6B52
        FA575498B05B4262DCF4F4C6027A27B381346676B8549ACB0525906AB9ADE7F6
        35DFC331DE66F1ADB8FB1520050505CD5F2251C8ED53968AEB2019ADD594C248
        15EF57D65AE9FD77DFA14913D9B39A3D9B1AD8E5FDECB3CF44F2B0AEB69622A3
        A268DC949934665802BBBE66E191054E8A05E4C39AB7629F01A96B74D0CF3F3B
        4DDBCF13E92263886053BAA4BDDA271E0ADCE95D3C8C3DBCDDCEED407F04E449
        BEC01F0146A011975AE972F69968F79153F46DFA3A9A3C619C504B5595155459
        5D2D80ABABAE22355FC3149D443F98338D2C0C0E0CBDC2FC8B99E31B8BDF7691
        5EE5A59D67AAE9E79F6653A92A9274A191DCA94C3D487000CE70FB86DB27CCB4
        1360479F00929F9FAF3065046F363218C9AD8D786B7239EDB4FD50361DD9B783
        A292869239750CD9BC2C511E27D94A0AE848661685A9DC648988A0F9D75C4571
        F109141212D22E2081A08863785F2B7BE93FBE3A416F1CAE215DF4609274C6AE
        1AF9CE12F23F08423FE57B4FF70355D16B80E4E6E6FAAF2D3FC3203CDB5A55B5
        265F44DE407985C5B475FB4E2AACB6923A6104C5980CD4E470D2F1E22A4A3FAF
        219DA3899E99164273270EA5E4149FB7D511208184E36436F2DF55DAE88EB7F6
        D239399A55D720EE1CF6A4D76B010E71DBC4BC806A836B5DDCA3809C3E7D1A9B
        700EF032198CC1908E4023DE162088DECB4B4B68CFC902FAC39146AA74493448
        DD4036D940659A28A24637CD0AB5D2E3130D94929448C94386341BEF8E48B919
        E17DB93D7C135E5AF2F743B43ADB4ABA41292C2521E0426F031248A80538CCED
        5B826320CBB5DD0E885F421630105F5E4A3A02414176B7F8FC39DA5CE4A0B78B
        0DFCD8602691F5BFDB4ED71BEBE89F639B28312A9CD2468F15D17C30D211D827
        EC096CD5DEBC4ABA63E52E926347901C1EDD5752D29A902528E6B68FDA75A7BB
        0E48089FF4DF0CC6E28E0C795B54CA525272EE1C553534D229AB44752C29C95A
        0725E83C146189A6E123470A55156CC951609F4242F9BC9AFA06BA71D9662A92
        A248133D8448ABEF6B30DA2248CA066EEBF81E10909EE8322039393983188C75
        DCA60602D211E15C05B45A76716B6B6BC8CA5BB7CB493A430899C2C36910078A
        4A52B135B3DB0208BFA37F000849459ABFB4B4545CE3C54DD9F4DADE620A491A
        4592D1EC77817BD2C07BBB70FDE67B4220CACE80F40DDFD21ABEAF9A4E0172E6
        CC9949CC88AF990971B879B4CE9002205228603ED413BE0343DB62BCF29D02A8
        E2622BD527D5EC3A5756568A493064924D1C586ECD29A79FFEFD2899874D2039
        8C8DBBAA4BB9AE36C7E215DB962C6D3D212391CFC1938882D21C0184E073159F
        F42603D2102C20F39919EF3023A314FBD115EA480294CF4ACA5E49C70040301E
        25420828012AE64F90BA479E0CBF15E5E7525E9D8BEE7C773FC98386938A631B
        5963A0AEDA11379FE6F6F8CED5316334FCE4EA543C2EDEFAE3413269D5D4E0F0
        CD5AE25027FF71B83CE4E0939B5C6E91EA57F1C1AAE0B1C9E0E37FEDF14A9B82
        01E49F98412BB8455C0E206D0120A27ABE26A4060DD76E686810338B48B580E1
        900A301F697A6C0309BF9F3C91498DB2911E787F0FE5792D644C1C41923EB4D3
        8078FD8C356A5564316928D2A8A1E8102D851B34DCD414A2539146F649023B78
        621F3915C681AC4D6EAA6D74516D93932AAC76AAB2B978EBA406BB5BA8A26084
        C68B4093E8770CC8F30C88B323B7F776D6DB2B1990C8CB0544B9666B10000024
        009200E94043A018C18123D2F7ED11DCEB9359C7496D08A35FFD6D17EDABD553
        68F268924D11847C41506322C4355E567D6A4A8ED0539C594F91216A21059014
        B7000A92E325BFE034AB2CC59268F05473772A34E66283C34DD536279DAF69A2
        FCCA26B2DA31AD2D056775247A85A5F12906A4A94D403232326698CDE6CF1894
        D8CE0012680B5AAB22FC06E6C316608BE422F72124002994C0947C47047B5254
        58481A9D9EFEFDA31D945E2251782AEC4834EBE24BDB3A3098B5030DB1703C64
        3152981E2A4A1600010C8521C130D2EBFF83AD4F5D4902C47A969E9C0A1B03D3
        48ACCD82CAF0F0F94B2D06D51F033B6F06E481071E485AB264497A5C5C5C1A3E
        7704889232574A4615830CB5031584397500803220803068D02021054AB0D959
        42E6D8C62A0EB6E6E94F76D3DA4237450C9F48B2398E2455FBF108EE114F7E08
        ABA791D1468A36A9C9C0F8693A83403008493EC972B08495D43BE96459A35063
        90A44B285467A45E35CBA091F62B07360312191969F9FCF3CF578D193366BE48
        59B43377A180A0B8A500C0E7F2D636A7CFE11545454509A3DC1D74ECD83132B1
        6AABE63EFEB82E83BE2E70929901514526F8E64ADA896F2019468D4429913A32
        B1AE31EB240AD5909838EE6EC254349B17AA717AA9AEC94367AAEC64E37DB983
        AE1008E824EF865131C65B64641F303285D96C4C55EFBDF7DE2313274E7C5944
        C701F31E50618A24601F20400D4195E033D40F1ACA48D1BA93E071656666523C
        1BFBA3274FD1ABBB0BE8DB423B03328901492449A36D131045EF2785CA648017
        C5B73398F7F57C5F9E1E88F065EECDC5E3286AF03030F0C23C945FCB3D49ED0B
        2246C10F767D68E1C19945E9EF6412ABDF6640162D5A84CA90B4871F7EF8A452
        45A2E878480C40A8A9A9114619204002A086028FEB09C2EC23D233319648DA76
        F018BDBABF94322A9C14366C12A92DF1AC88B5D49662807484729812A9710BBC
        D4CC9518A38A584590566EA9E303F1BC145481CC85E6538E874756CB3AABB8C1
        4D8D2C19B059952E15D539A94329D1EA433CAEFD1F2FC97FE389D75B00E29F1B
        8FDCB56BD7C19898981478465043F0706013F07B7474B4683D094020616C900E
        38020DB5D5B43B2B975ED85D4C95642263CA04529B393854B70D08D452A8E420
        83870355AF8F23D0E9461695702DA44612B107C051C3380324A9630F49F1B83C
        4235B301E0AD938D949D1B6ACAEA181087CB1764A2F8CF26EBA8DEAB11EAAC3D
        D268F5E4DABBFAC5BC0FFEF3DF2F02845D4F79F5EAD52F8C1B37EEDF60482101
        6C5B842D80D4F436412D629E262525854E1C3B4A3B722BE8F92DB9644A1C4E9A
        44767BC3A3F8496FDBCB02205A5723691C8D171E6BEF05E8F0D4FADC580043C2
        EB8214C9BE94930027903CC291E178C41F5022967132280EDEBADCDE0B499666
        6F897FD31AC9A1D67700882426F05C3BDEFB3077F54B3FE79B69925ABBADD75F
        7FFD0DCB972F4F670F4982340C1E3CB8D78100C1633B70E0800003B60A55F71F
        655BE9CBA30514C62EAF367EB83F0E69EF5EF969773A48B2D6F06D7B2850D978
        03FE284FFD051629DB968078FD47359F1B601BA4D692059EA206CD64268F5ADB
        AED3E1CB6DA9A87AC38A7525EBDF58C2E754B40004346CD8B0C865CB967D9696
        96764D4545052527270BB7B5B7E9E4C993624C90D04C968E6AF65CFE63DD71B2
        AA434937641C69625248D6193ABC06EEC85953499E066B4F4FFDB624B6B9AA90
        5056A9966620DB1EA04C16D94907DFFB9F8DAE839F3CC19F8B2F020471C3E2C5
        8B1FBCE38E3B5E659BA281419D346952B77B4F1D119626A0DF912347D271B621
        4D0DF5F4D97756FA70F72932C40F255DF2585247C4FA2B513ABA615616ACEC1B
        CB4AC9C5A00413445E2E793D6ED29842C910158354459BE303A7A1FA06193554
        5E5040396BFEB28EB2D27FDB2620A0D4D4D4D0A79E7AEAABF1E3C75F83940624
        85E313F1B4F634C176C16EA0BFF3E7CF5365693195BA74F4DBAF0E51854B4321
        2963481B379C9F407370811D92971C3A37949650233B2924622989BA376DEF15
        513F0C9021DC4C21AC516480D18EAA42B01AAE5391DE5E4F070E9DF4D837BDF2
        1695E62CE32195B60908E8EEBBEFFE3E4BC9171C9F8423F30AF773F8F0E1A292
        BD93A9E7A00836034B18907484DD808494149F23898DE2CB5B73E8DBEC73143E
        7818E993C6909A0342117F044BC23FE5C08DDD766B591939D873F4D5165F9838
        EA3C06DEE6B4BDA86DC614010361605E29FDB5078689C1B0781B2923EB2C55E4
        1C29A74D2FBEC0D2F121FF5CDD1E20F820FFEA57BF7AF0C61B6F7C9901D12724
        240837189D0F193244A4C7BB8B208100036A1155F258A358565A4A2683863E3F
        514E6FEFCC2695893DBDC434D2C60E25B531AC63E7BE6D54C44D79BC1EB2B193
        D050554D7676E75D1C78BA9D2E5F0D9630CEFE05496D0120DC34FECBD2A0D2A8
        49C3EEBFD668A0908848324698794872A0E9BF8890318EE038284EEDA42327F2
        28BF9CD5E8AE37367973F7BF462A352A5B9ADA951010BBBAC6279F7CF277D3A7
        4F7F02012080405C82A718094278601D65692F450832A1A2905E87E4E15A0003
        0168884E435F9F28A5D7361C20B7CE48316913296CE818B21B2CD4E455FBC77C
        E1E9E91434F08098A900C4215A2339F9BE1C0E3B799C4EB15EBEA5DFC4811E4B
        A4CC2068B53AD218F402089DD1C85BA30FC00E4B9B4844F1714635457A6D74E0
        781E15D6384995BFA7C0BD63E55B7CC06A1ED47738B443404046A331EAF1C71F
        5FCAA03CCAC74AF1F1F1224A47B088743AA2F6C4C4C44B260F95FA5D301F53B2
        900A1C0BBB847A605C0B3603AACBA0D3D2FAE3C5F45F1F6F27ABCD41EA98C1A4
        8F1B4A1109C99498944861E650B27964B272440CE308FDADCCE6751618E5BEDD
        FE9716C00940A54B2B3C4856ABC4F12A955A4887724F970242E4AB38C019162A
        938B83DB9D9985546EF390A62AB7C6B9E5B54FA9BEEC6F7C419416D9C5982E05
        0821C09565CBC30F3F0CF5F56BFE6C02E3319184081A4C0ECCECE229C756590B
        0206A3E1A90388D822BE81CA83D4212503238E2DA44EABD53AD6AE4F3FF1C2BB
        6B5CD5DA981455EAE408296E94CA1B62E141AAC48C5EA8C9404312A229DA124E
        1E7E729B48CDE07844FE480CB80B2621D096B4757AB312F2DB8E8E48CC467243
        3620D6C02A4AE3A0D379C574E07429396596B4CA33B5EE9DEF6CF056E47E4C6A
        DD163EA5A6791C4100821F902B095BB870E12D37DF7CF362F6C2AE020048AF40
        5AC05CA35F74910C545E91A1BC32032D30430CB5071051710FF587C00FE733C8
        67DF7CF3CD2DABDE7B2FCB69B77BC818E69192272748A9D3C7CAC953C74A51C9
        F16CE5C9EBB2F3F55DA4D36A28392E8212A2C3C964669BC6EAA4AAC94B357677
        9781B91C72FB2379B34EA6C41099226417D9D9EEEE3D554CB965F524690DE42D
        3C5AEEDEF3EE7A6F5DE93A960CAC00AB08C43B18401450E0F487B0DD18F9C31F
        FEF0C73FF8C10FEEC09A11305E2CF68797E1970EA5584149B728AA0A20221DA2
        143E405D0108481ACE7DECB1C7FEF2D1471F65F329F5DC65018B59111942EBC9
        141942914913A4A8949972F2945972C2D8C9A40B51C3E777C120F3D863238D94
        10154EF171167E40D855B7B30FC9C1A4CBAF7DA4803BB95C9C5A1743402EE113
        241A254A0D9548E372507D4D2D9D2DABA5ACA23AAAB67BC9C10F90FBD4B61CF7
        E12FD2A9A97603A9B47BF9B4AAD6D70E16108504287CAC85EDC6780666FA8C19
        33E6B3FD18C64FBF96D594A454262A2A0B290FEC2BD9E113274E084000205EB5
        019B045506609F7BEEB9B56FBDF5D62EEEE324F92A03CB491F62278ECA59594B
        ACE8CDA40B1D261942C74B29575FC7E0CC96CCF1092CF6921345070C90394443
        B16623A525C7502C4B8ED5ABA1323B6AC5E0E5F87250C244B47208026D903720
        E7D5BCF55E48E96B55BE3C1832BA61CC91783D519281BDB786462A29AFA6F2EA
        062AAF7750155B859A2617D5951535380F7FB1D79B7F6033DFC736960C2CC1B3
        B6F9E477121010AC36721608DDA31888849B6EBA69E4840913C6B20D98C06E6B
        0C3FF91A56676A7EFAB5EC3185B177264312004C464686707195A4253C35A838
        3807C78F1F3F77E79D77AEE0EB62391A16D7349081BD380022C97EAE60A98207
        19BB68767B52A58431DF9793A65C2F0D1A9E2685C55A2436BA06C945163D3B0C
        262D25C6B0D44485919E3D232B3F4F0DA4A206D668CC2731878E0A12C47498ED
        7329BCE0A6F3579F68B869FD99600E1F288CC39F08B5972C6A3745A8DCC21928
        ADB35371452DD5DBEC54C7D250E594A8AAD14315457936DBE93DA73CD99B7750
        53FD5E8E16F7F37D9C25FF02D5EE024419B33A0018B37F6B1A316244343FF566
        06C4C0AAC8C040FD33D3684800EC0B5CDD83070F0AA7002A0D2B74154038CEB1
        3320CFB12B8C6266781ED522BD1E3384391422D68CB42235B95D21E471C44891
        C953A5D8B46BA4C4F1D335F1696342C322D4668D9BC299A37A7E8AC3D84D8D0A
        D7932544C752A425375FD723ABC82DFB967ABB1870A4E901029E38BDEC113648
        277949CB0D114608B9487639A9B2D14935ECFDD53638C8D6E460303DC27695D8
        58A4AD76AA28385569CB3D9C4705070E5255D15ED26833190854CFD7D125A65C
        BA0A484BA6F88C3EC0415062F4EFE33BEF9C39736E7BFEF9E77F0D15853E00CC
        DEBD7B9BDD642C0885B1871A6350BCCB972FFFFBCA952BBF205F8579BEAF0706
        850342E2A89DFDD2B647E176AA39CA63EFC23C92C262AF9213C7CDD20E9D3EDB
        18153F28D2A817F3E94857E86466AC56A2708356CCB51B756A31A368E07D4805
        E648D4B2EF991339279166F79093AD356AB46C76979811C4746D45A39B8A6A59
        3A58422A2BCB9BACF99905AEBC43A7A9323F8BACE58739D8CB61F5944FBEA5DC
        C13DE9DD00486BA941435E03F6461A3972643203B29B19AF51EC0BDE97053717
        A0C0A0436DC1E043ADAD5FBFFE181BF797C8B7D419CDEF32F16563870B4F8A3A
        2AD88614795C7A5667F16C5B4670F03255957AF51C55F49051C688188B392CCC
        101566A4A8507626386AC6A22023BBA74AB19C6F7E44161356225BCC5223A664
        B9CBD2BA262AA9B651696D83B7B2A6CE515F5952EFAA2C2A76151ECDA1F2EF72
        F881C82397FD3433B38081402929EC44A7E68BBB1390B60002695E7EF9E53DEC
        954D86CA82542000841D4140897EB1741A804052CE9C3953FCD0430FBDCC2EF1
        413EF720051A3F955F525068ED715FA27B91E6D07033318051FC2189C1194D96
        D451141A954CBAF0588D39265267301A8CA650BD4A56B199F0950449DE0B456F
        8D369BC35A5F6B6FAAAF69623B60255B7505592B4BA8FAEC59AA2D2E64C358CE
        EAA8844F38CF6756F2B6813AB0117D098820BC34E0D65B6FFDEDEDB7DFFE3BA5
        881B51F9D1A34785644085416DE17B00C6E3702E5DBAF4BD75EBD6E145005824
        53DCE2828AFAD204034ACB33F9781DABB610760C22588AC2C9103E88B4260BDB
        A708B61CAC66BD17A7199C4D8D64AFABA1C63A563B5E1B07A7560601EF98E2A6
        42B5BB0240A706D327808C1D3B96AEB9E61A7857736FB9E596AD48502A01E391
        234794C85CA44E10BD23870515B662C58A6F5E7AE9A5B7C9B730062B895AEA28
        A8AFB8119890EE587D5D8AE04A7B3D1ABE06542CDAC58048928725C0C9CC77F8
        197F191D5E9A7A0C10B8B8ACA6C4D3CF9179F2DCB973774E9932251101225413
        6604A1A60006A2771C07C9C16FD9D9D9DF2D5EBC7805AB36C42458FCDF745107
        989C12865EF80E3DC9A35EA51E01044F3D03206C03D224DCB4ECDEBECDF1CADD
        F81DAA0BF31D6C2F041048A360420A2A0BDE169383DDDFE59999994849C38EB4
        EDA518C27C92E276F4351FBB8D7A0410A822BCF344291F029359121E99376FDE
        320484CA5A74A58801C70D1B364C44EF901AA451386AFF98DDDFCFC8B75C0CC1
        D4C56200D51535981DED0878567DCDCB6EA16E05046A6AC1820562DEA4F5821F
        7EFAAF6315B68625C2044940CE6BFFFEFDCD89497C464105128D50612C1D998B
        162D5AC14123723E707FDBE638C60DEF2B31ADFDEA8E2B88BA0D103CDDB366CD
        126A4A5945154878BDD3ECD9B3D367CC98310D7D426DA19801C946A8ADB2B232
        9A3E7DBAF80CE238C571E38D37FE8E551B2404A9146B87031894C2616924AB2F
        D7150D4CB701022FE9AEBBEE122AA7CD970CB0DA4A4D4D7D9F5DE0BB61639454
        FDBE7DFB888DBD884DF0E233A56C1552F2ECB3CFAE7CFFFDF7FF974F87949CEF
        F84EB8CF500E37E0C1E2E502DE1E75867A8CBA05909B6FBE59008239F18E266F
        B88F9F3168AFB31D518BD731B194E0EDA69010650515E6D4212590B86FBEF9E6
        F0CF7EF6B365E48B47B22818770A36252CDA27295720751910D808646B11F821
        DE503CA48EAEC3F66030C723192C09160002296017579C871805D3BADFFBDEF7
        C4142FDC5F8ED6AB172E5CF87B5667C86B211DDF78E93B927CC94848CA15084A
        970181117EF0C107C5C493F22AC04B118E1B3F7EFCE1F9F3E74F522404D280DC
        D6C48913C50C22E64890FDF5BBBFAEDFFCE6376F7FF0C10788DAE1FE5604D511
        2826954109EF6C34DFE7D4254050C988271A934B9DF9FF2300212222E2595643
        BF8174C02B03A0F0B6D2D2D244A48EB43C725C2839820A7CE38D37B62F5DBA54
        F9D71678DD44906F1F90FD9262BEA22425684058D53417358051602898D919F2
        7B57337FFCE31FEF44DCA1ACD43A74E890B019B0219022480B00C182508E55CE
        FCF4A73F7DA5B8B81886FD38F9AB3382BB3B3F2878C9C01512A7340302067544
        88BCC13025A8EBEA7FE6C18BFBD94E64B34B1B83281E409C3A754ABC881FC61D
        2A0C1208421FACBE1AEEB9E79ED7B76EDDFA35F9EC486DA73BBD82D45733204F
        3CF14487072AB1C5E5BAC72C556A767F57DD051F99099286340A928D78592602
        4394ACC26B036090CAC71E7BECD3D75F7FFD6FE4B323459DEEF40A32F481AB70
        7BA54318ECA8A8A8FBEEBCF3CE77602B94AA95EDDBB70B10301E8080CA770002
        B5C5EEEFA19FFCE4276FD6D5D5615A1705109DE76AB3FAEADF92D20CC82F7EF1
        8B5EE9D01FC14FFBD18F7EB495237383F26F30108F20A705571AD2886051A982
        E4CF568EF05FCCCDCD45511962125B176FD75730610A270AD233EC6D6A06E497
        BFFC65AF75CA8C8FB8F6DA6BBF5AB060C12C4808D416AA17512204A981DA82FB
        8B295EB8BF9092871E7AE8EDBFFEF5AF5F912F6A2FBBAC010094D0FE99666906
        0431456F11D4564A4ACA3236D68F403D610C9094F4F4740108F6319B08230FC0
        906AD9B265CBBE79F3E6A144088060D2AAEB9C844D813D41448FE9E07E044A9F
        00E27FCFD67D8F3CF2C8DB0C8C0C80102402106400E079E133928DCA3A798ED6
        EB468F1EFD0C4B17128DF0B62E7F12243A9925C5E29B75EC27B9AF3E0104C4DE
        56EAA2458BB6CE9E3D7BB078A3B5AF504EBCFB116B1A11E30010E5CD403C4E2F
        DBB9E51CB5E38D6DC800075D5AD32189B7D319822C9CE879EA3340601B3800DC
        71DF7DF7CD525E7683223AFCAB3DA59A11EE2FD4161C01E4B6DE7DF7DDADF7DF
        7FFF6BE4737FF3BB6D304AE184D688FAAE5EE5436BEA13A3AE1033F90FCF3CF3
        CC5265D10F4058BB766DF32B9D605FF09F169437CE6DDEBC39F7861B6EC0DB73
        A0B210B5771FF7000A24252AD95739DD4776A5CF24C4FF26B9598B172FDE3A7E
        FC78959229465523E6DAE1FE029469D3A6893A60A8B5E79F7FBEF0E9A79F0620
        98D285DAAAECF681E9036A89FBA078A2CF000131930D73E6CCC9BDF7DE7B6395
        EF5040C781A0A846811A437A1F113CDE08F4E69B6F9E78EDB5D7E069C17E606D
        C5B91E1958580CDB9624D6ABBD5F3CD1A780A06F565B1FB2F15EC47189C82023
        06811DF1FDE7850BF3ECE7CF9FB7BFF0C20BAF666565E5F3A978513DAAE3BB5F
        424030F090129418F5B2F7D5A780805855FD138FE1FDD8D858CDCC9933C59C3C
        A404A978A82A048BEC79B9B9AD66C9419D563DF90AB1B148B2E71253A8684918
        E57B03442FDA933E07046AA9B6B6F63ADE3EC5807C8F25C280081D792D14CEFD
        E94F7FB2666464AC616090C742D9268C39F2595D4C9F748220255882FD8F0408
        D4120C796E6EAE3479F2E4852C29D7B0211F161F1F1FC7EAA98A6DC69EE2E262
        ACAD001839FE66BDBC5E8324FCBF92A431FF5880202A47E135B2BD0AB1844462
        655649490922352C6F40CE1FF60225FE9D9B15BB1C822B9C38EA1F0F10CC85EC
        D8B1A3CDF1910F1058D6DE0FA3FB129001EA1F3400483FA30140FA19FD1F1DAA
        8E2C704524540000000049454E44AE426082}
      Proportional = True
      Stretch = True
      Transparent = True
    end
    object ValorNome1: TEdit
      Left = 125
      Top = 39
      Width = 160
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object ValorSenha1: TEdit
      Left = 125
      Top = 75
      Width = 160
      Height = 21
      Color = clWhite
      PasswordChar = '*'
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object btnOk: TBitBtn
      Left = 125
      Top = 97
      Width = 80
      Height = 25
      Caption = '&Entrar '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = btnOkClick
    end
    object BtnCancelar: TBitBtn
      Left = 206
      Top = 97
      Width = 79
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnClick = BtnCancelarClick
    end
  end
  object Button1: TButton
    Left = 45
    Top = 295
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 12
    Visible = False
    OnClick = Button1Click
  end
  object ImageList1: TImageList
    Left = 448
    Top = 48
    Bitmap = {
      494C010135009000040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000E0000000010020000000000000E0
      00000000000000000000000000000000000000000000314B6200AC7D7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005084B2000F6FE100325F8C00B87E
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000032A0FE0037A1FF00106FE200325F
      8B00B67D79000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000037A4FE00379FFF000E6D
      DE00355F8900BB7F790000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000037A4FE00359E
      FF000F6FDE0035608B00A67B7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000038A5
      FE00329DFF00156DCE00444F5B0000000000925D5A00B48C8000C9A39100C28F
      8800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003BABFF00A1CAE7008C7775009F7F6E00E7DCB600FFFFCB00FFFFCA00FFFE
      CB00E3CCB100C0998C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDA4A400CEA58F00FEEBB100FFFFC900A1B4DC004D6DE900D3DC
      D900FFFFE900F3EBE500A0746F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B67F7600F3D7A100FFD89100FFFFBB006984E5000018FB00C0CC
      F200FFFFF800FFFFFF00D5C2AC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0A79200FFE2970093829F00647FDE002D4FEF00011FFA004A6A
      FA006580FC00CFDAE900EEEAC200B7847E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCB79A00FFE58E003C46C0000018FF00001FFB00011FFA00001F
      FA000017FC009CB0E100F8F6CB00B69782000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D4AC9500FFE6A000C1937D00B29998004960D8000120FC00829A
      E300B4C4DA00EAEED400F3EEC500B88B80000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BB887F00FCEAB100FFE6AF00FFDA86006068BC00001BFF00BBC2
      CF00FFFFC400FFFFCF00DDCEA900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3B49900FFFFFF00FFF7E100C1A3930091779200DAB2
      8C00FBDEA300FCF3B800AC867600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6ADA700F3EBD400FFF3AB00FFE79600FEE2
      A100F0D4A400C298860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BB987E00C1998300D3AD9300D1A5
      9200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A667C00BE959600FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000009A360900B14E1800AF3E0300A5380400A0370400A03B07000000
      0000000000000000000000000000000000000000000000000000000000000286
      BD0030A4D70045B0E1003AAADA00269ED10034A6D80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B9CC3001E89E8004B7AA300C896
      9300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000008723
      0100C2662D00CE733300DC8B43000224FE00AC806B00CC7F3F00BB561100B044
      0600872301000000000000000000000000000000000000000000038AC000058F
      C40065C5ED0089D5FE007FCFFA007ACEF80062BFEA0058BBE9002FA4D7000000
      000000000000000000000000000000000000B44A0800C7521C00EC614500F763
      4F00F6654F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004BB4FE0051B5FF002089E9004B7A
      A200C6959200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000087230100D079
      3F00D3814200D3A47D00FBF2D7000224FE00BBBCD300FBF6E900E7D0BF00BF66
      2800B04203008A240000000000000000000000000000000000000892C7000E9A
      CC0069CCE90089DAFA007ACFF70068C2EE003FA9D70076CBF40082D1FA005BBC
      EB0000000000000000000000000000000000B64B0B00CD542200F0614800F86F
      5600F97A5B00F9816A00F76C5800F15B4600A25C270000000000000000000000
      000000000000000000000000000000000000FF00FF0051B7FE0051B3FF001D87
      E6004E7AA000CA979200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000B75C2800DD8C
      4E00D3A67D00FEF3D100F3C79500FCC07900EFAC6C00EDB47900FBE7CA00F0E6
      DE00BC5A17009D32000000000000000000000000000000000000109ACC001AA4
      D4007BD5EA009DE9F8008BE0FC00499EC4002083AF0054B7E5007DCFFA0082D1
      FA001F9DCF00000000000000000000000000BD4C1100D4562B00F6745800FC88
      6500FC876400FDD3CA00FAA49700E9543B009C592200008F000014AE2B0020C0
      50004ECB65005AC558000194000000800000FF00FF00FF00FF0051B7FE004EB2
      FF001F89E6004E7BA200B9949700FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000097340900E3915600C47E
      4B00FCFBDC00FEF8C600FCF6C100FFF8C600FEE2AF00EBAD7300EAA66600FFF2
      D700D5A68300AB3A00008B26000000000000000000000000000019A1D30028AC
      DC009DDDED00C1F6FC00A3F0FF0069BAD40016658A004EABD7007BD0FB007DCF
      F8001E9CCE00000000000000000000000000C54F1A00DF613900FE896800FF87
      5F00FFAC9400FFFFFF00FFC9BC00EE66470097561B0011A4250032D46E0033D0
      5E00AEF5AE00B2F3B30013A9220000820100FF00FF00FF00FF00FF00FF0052B8
      FE004BB1FF002787D9005F6A7600FF00FF00A8787500C4A39800D5B6A700D0A5
      9F00FF00FF00FF00FF00FF00FF00FF00FF0000000000AD512200E3925600CBA1
      7D00F2F8F800FFFFDA00FFFFCF00DEDEB800CFD1B100FCE9B500EBAA6C00E5BD
      9700D0B7A600AD4101008C25000000000000000000000000000023A9DA002FB0
      E100B5E1F000E6F8FC00BBF2FA009FE6F2004893AD0072C1E10081D5FE007BCC
      F8001E9CCE0000000000000000000000000000000000DF613900FF8B6400C670
      5B00ABA2A500C3CACD00ECA18C00FE785600A76528001AB5370026C1560044A1
      5300A8C4A50082C9800027BF4900078D1200FF00FF00FF00FF00FF00FF00FF00
      FF0055BDFF00B5D6ED00A3908E00B69B8B00F0E7C800FEFDDA00FEFDD900FDFC
      D800EADAC200CEAEA300FF00FF00FF00FF0000000000BB622E00EE975400207B
      F700207BF700FFFFF700FFFFDE006E6E5D003F403F00E0E1BF00FFD58C000224
      FE000224FE00B84B04008E2400000000000000000000000000001A9FD0002CB0
      D90043AFD00051B8D70047B8D90045B7D90053C1E0006CCCE90086D9F7008BD8
      FE001F9DCF0000000000000000000000000000000000000000005C617F00336A
      AC002370BD002569A9008C676D00000000000000000006380C00063111001531
      67001A3380001644570023A74B0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00CCB7B700D9B8A500FFF1C300FFFDD600FFFFDA00FFFFDA00FFFF
      DF00FFFFEF00F6F0EB00B48D8900FF00FF0000000000AC502000E3975B00DEB1
      8400FFFFFF00FFFFFF00FFFFF300DCDCBC006B6B5A0055564B00EDC59500FFC7
      8100D9BA9C00AB3F01008C250000000000000000000000000000169FCC005AD1
      E0001D728F0023829F004ED8EB002CBDE00011A1CE000995C600189ACA005EC2
      E700219FCF00000000000000000000000000000000002080B7001A83DC00309F
      FF00339DFF002B93F6002E81D00000000000020C160000000000081448001342
      B0000F3FAE000F35A00012418F0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00C6978F00F7E2B500F8DBAA00FDF7D000FFFFDA00FFFFE100FFFF
      F200FFFFFB00FFFFFF00DFD0BE00FF00FF000000000096310600DE905400D192
      5F00FBF8EE00FFFFFF00FFFFFF00FFFFFE00FFFFEE00969882005B4F3D00EDD8
      B200D0905C00AD3D000088220000000000000000000000000000000000001C9E
      CA0035A9C40059CBDA0080FCFF0066EDF80036C1DE00078AB800017FB200088E
      C1000B8FC2000000000000000000000000003282A3003F9AD30044ACFF0045AE
      FF0045AEFD0046AFFF003FACFE002687D100020C120002061100184DA8001F61
      D1001D5CC4001E5DC7001950C1000727A100FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00DBBAA800FCE4AF00F2C89700FCF4CC00FFFFDB00FFFFE400FFFF
      F900FFFFFB00FFFFEC00F2EFD000C79C96000000000000000000B2572600E293
      5400DDB58E00FFFFFF00FFFFFF00FBFEFF00FFFFFF00FFFFFF00C1C7B400CAB1
      9500B8500C00A036010000000000000000000000000000000000000000000000
      000000000000000000003AC1E00031BBDC002DB0D3000782B2000680B100078F
      C200078BC1000000000000000000000000003282A30045A4E0004BB4FF004AB1
      FD0047ADF80047ADF9004CB6FF003A96DA00030B0E00030F20002269CC002572
      E0002166CE00226DD7002269D3001C50B400FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00E4C7AF00FBE0AB00EFBA8600F9E3B600FFFFD900FFFFDE00FFFF
      E800FFFFEA00FFFFE000FAF8D700C6AC9A00000000000000000088220000CA73
      3800DD8C4D00D8A67B00FCEEDA00207BF700C4E6F700FAF4EF00E0B68B00BB59
      1600AD4103008822000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000684B500037BAF000000
      0000000000000000000000000000000000003282A3003282A30046A2D30048AA
      E8004AB1FC004AAFFA004DB6FF00358CD000050C120005070B00206ABA003197
      FF002F8DF5003091F9002879DE00205EAF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00DFC0AB00FEE9B500EFBB8400F3CC9800FBEEC400FFFFDB00FFFF
      DD00FFFFDC00FFFFDC00F6F2D200C8A298000000000000000000000000008822
      0000C2682F00DD864200D98645009F7F6900BC885F00CA793B00BD561000AF46
      0800882200000000000000000000000000000000000000000000000000000000
      00000273A500016D9F000000000000000000000000000382B6000478AA000000
      0000000000000000000000000000000000003282A3003282A3003282A30048A6
      DD004EB6FE004EB7FF0049B0F600226A9F00060D130026201A00243E57001E69
      AF00277ECD002D85D4001A4D8A00205EAF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00CAA09800FDF0C200FAE9C500F4D3A600F4D09D00F9E4B800FEF6
      CF00FEFAD300FFFFDA00E5D9BB00FF00FF000000000000000000000000000000
      00008822000088220000B4521A00C0571600B84F1000AB430A008B2500008822
      0000000000000000000000000000000000000000000000000000000000000000
      00001A9CCF000F88BB000000000000000000000000000384B8000479AB000000
      000000000000000000000000000000000000000000003282A3003282A3003282
      A3003282A3003282A3003282A30000000000000000002A2826006A6661006060
      5F0020293300071321000308170000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00DDC4AE00FFFFFF00FFF7E900F3CC9800F0BD8900F4CE
      9D00FCE6B600FDF6C800BE9D8F00FF00FF000000000000000000000000000000
      000000000000000000008F2B04008F2B04008F2B040088200000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000033A1C9004DC2E3000000000000000000000000000381B5000379AC000000
      00000000000000000000000000000000000000000000000000003282A3003282
      A3003282A3003282A30000000000000000000000000000000000525353005C5A
      5800221E1A00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00D3BFBA00F6F0DC00FFF2C000FDE6B100FEE9
      B500F4DEB700D0AD9D00FF00FF00FF00FF000000000000000000000000000000
      00000000000088220000B1572400BB642B00A73E04009F3400008E2700000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000041B4CE005DD5E50035A6C7002799C5000E90C400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00CAAD9600CFAE9B00DDBFA900DCB8
      A800FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000008A24000088220000882200008822000088220000882200000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003BADC7003BAFCA0035A7CC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4676900A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A4676900A4676900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000005710A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000098403F00953A
      3A008B343500957D7D00B0B8B700BDBCBB00C0BCBB00BBB8B700B6BBBA00A487
      870080282900812C2C0090373700000000000000000000000000A4676900FEE9
      C700C6CC9300D5CE9600F2D0A000E7CA9100E9C58800EDC18200EBC17F00EBC1
      8000EBC18000F2C78200A4676900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000005710A0005710A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AA5D5600C14B4B00C54D
      4D00A640410083666600AC8A8900D9C2C000FEF7F200FFFCF800EEF3F000C59F
      9F007E191800811D1D00B14141009C3E3F000000000000000000A4676900FCEA
      CE0099C077002D9822006FAC4E0020911600219116005FA13900CAB77000E9BD
      7F00E9BD7F00EFC48100A4676900000000000000000000000000000000000000
      000005710A0005710A0005710A0005710A0005710A0005710A0020B335000571
      0A000000000000000000000000000000000005710A0005710A0005710A000571
      0A000000000000009A0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000000000A95D5600BC4A4A00C04C
      4C00A542420087606200862B2B00A45B5A00E0D5D300FCFAF700FEFFFC00CEA7
      A6007E1A1A00811E1E00AF4040009A3E3F000000000000000000A0675B00FEEF
      DA00BFCE9900108C0D000082010000820100008201000082010029921A00DEBB
      7D00E9BD7F00EFC48100A4676900000000000000000000000000000000000000
      000005710A0076F9A70076F9A70076F9A7006BF0970051DA750033C24D0019AC
      2A0005710A0000000000000000000000000005710A0045D36C0032C350000571
      0A000000000000009A000333F6000D3EFC002551FC00496DFD007A95FE00B5C4
      FF00F5F8FF00FFFFFF00FFFFFF0000009A0000000000A95D5600BC4A4A00C04B
      4C00A5424200926A69008123230083202000BFAAA900EEEBE900FFFFFF00D9B2
      B0007E191900801E1E00AF4040009A3E3F000000000000000000A0675B00FFF4
      E500BDD19F00138F0F00008201001B911400A9BD750073AB4D000484030077A9
      4800EABF8100EFC48000A4676900000000000000000000000000000000000000
      000005710A0005710A0005710A0005710A0005710A0005710A0047D368000571
      0A000000000000000000000000000000000005710A0059E2870049D571000571
      0A000000000000009A000336FC000D3FFD002652FD004A6FFE007B97FF00B8C7
      FF00F8FBFF00FFFFFF00FFFFFF0000009A0000000000A95D5600BC4A4A00C04B
      4B00A44141009E767500882F2F007B1D1D0090828200C9D0CC00F8FFFE00DEBA
      B8007A1818007E1C1C00AD3F3F009A3E3F000000000000000000A7756B00FFFB
      F000BCD5A7000A8A0A00008201000486040082B55F00F0D0A900A5B76E006DAD
      4E00EBC28A00EFC58300A467690000000000000000001C78D5001C78D5001C78
      D5001C78D5001C59960000000000000000000000000005710A0005710A00E4F0
      FC001C78D5001C78D5001C78D5001C78D50005710A0005710A0005710A000571
      0A000000000000009A0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000000000A95D5600BC4A4A00C14B
      4B00A9414100B2777600B17E7D009F6C6C0095747500A78B8A00D8BBB800D193
      93008C2323008E272700B2424200993D3E000000000000000000A7756B00FFFF
      FC00E1E7D000A4CC900099C6810093C1770099C07700EED4AF00F0D0A7009FC2
      7900EBC79300F2C98C00A4676900000000001C78D50082C6F90057BCFF004EB5
      FF004DB4FF001C59960000000000000000000000000005710A0000000000E4F0
      FC002A95FF00369BFF00379CFF001C78D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A95D5600BD4A4B00BC49
      4900BC494900BC484900BD4C4C00BF4C4C00BD494900B8414100BA434300BB46
      4600BD4A4A00BF4B4B00C14D4D00973C3D000000000000000000BC826800FFFF
      FF00A7D9A400FAEFE600F4E9D5009DC6840095C1770097BF75009FBD7500EACF
      A300EECC9E00F3CE9700A4676900000000001C78D5007DC3F70056BCFF004EB4
      FE004DB3FF001C5996000000000000000000000000000000000000000000E4F0
      FC002893FF003499FF00359AFF001C78D5000000000000000000000000000571
      0A0005710A000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AA5E5700A43937009E41
      3D00B66C6A00C58E8B00C9969500C9959300C9969500C98F8E00C9929100C995
      9300CA999700C6848400BF4B4B00973B3C000000000000000000BC826800FFFF
      FF0074C57500B0D8A900FAEFE60084C1760005860400008201000A890900F3D4
      B000F0D0A600F6D3A000A4676900000000001C78D50080C6F9005BC1FF0053BA
      FF0052B8FF001C5996000000000000000000000000000000000000000000E4F0
      FC001F8EFF002B95FF002C96FF001C78D500000000000000000005710A005CE7
      8D0040BE620005710A0005710A00000000000000000000000000000000000000
      00000000000008750E0005710A000000000000000000AA5D56009D353300DCBF
      BC00F8F4F400F6F0EF00F7F2F000F7F2F000F7F2F000F7F3F200F7F2F000F7F2
      F000FAFAF800D4ACAB00B4414200983C3D000000000000000000D1926D00FFFF
      FF0081CA8200058605007AC47500AFD4A0001C95180000820100138E0F00F3D9
      B800F4D8B100EBCFA400A4676900000000001C78D50080C6F9005BC1FF0053BA
      FF0052B8FF001C5996000000000000000000000000000000000000000000E4F0
      FC00E4F0FC00E4F0FC00E4F0FC00E4F0FC00000000000000000005710A0045D1
      6B004ED978002BA5440005710A00000000000000000000000000000000000000
      00000C7A14002BA4430005710A000000000000000000AA5D56009F373500E5CB
      CA00FBFAF800F4EBEA00F4EDEB00F4EDEB00F4EDEB00F4EDEB00F4EDEB00F3ED
      EB00FAF7F600D4AAA900B2414100983C3D000000000000000000D1926D00FFFF
      FF00F3FAF3002DA12D0000820100008201000082010000820100118E0F00FBEA
      CE00DECEB400B6AA9300A4676900000000001C78D500629DCF003589CF003589
      CF003589CF001C5996001C5996001C5996001C5996001C5996001C5996000000
      0000000000000000000000000000000000000000000005710A001DA530002DBD
      4A0038C558000A79110000000000000000000000000000000000000000000E7D
      170046C76B0005710A00000000000000000000000000AA5D56009F373500E5CB
      C700EBEAEA00CCC9C700CFCBCB00CFCBCB00CFCBCB00CFCBCB00CFCBCB00CCC9
      C900E6E6E500D7ABAA00B1414100983C3D000000000000000000DA9D7500FFFF
      FF00FFFFFF00DDF2DD0067BF6700249C24002299210075BF6B002D992600956D
      5600A56B5F00A56B5F00A4676900000000001C78D50086CCF90065CBFF005DC3
      FF005CC4FF003589CF0053BAFF0053BAFF004EB4FF004DB4FF001C78D5000000
      0000000000000000000000000000000000000000000005710A0005710A000A7F
      120022B6380028B741000B7B120006730B0005720B000B7A13001D912D0048CB
      700005710A0000000000000000000000000000000000AA5D56009F373500E5CB
      C900EFEDED00D4CFCE00D5D0D000D5D0D000D5D0D000D5D0D000D5D0D000D3CF
      CE00E9E9E900D7ABAA00B2414100983C3D000000000000000000DA9D7500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E1F3E100E0F2DD00FFFEF700ACB692008B6E
      5100E19E5500E68F3100B56D4D00000000001C78D50084C9F70065CAFF005EC3
      FE005EC4FF003589CF0053BAFF0054BAFF004FB4FE004FB4FF001C78D5000000
      0000000000000000000000000000000000000000000000000000000000000571
      0A00077D0E0016AD27001EB434001BA02E0020A4340031B94D0042CC65000571
      0A000000000000000000000000000000000000000000AA5D56009F373500E3CB
      C900F2F0EF00DCD5D400DDD8D700DDD8D700DDD8D700DDD8D700DDD8D700DCD5
      D500EEEDEB00D5ABA900B2414100983C3D000000000000000000E7AB7900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCC7C500A56B
      5F00F8B55C00BF7A5C0000000000000000001C78D50085CBF80064CBFF005EC6
      FF005EC7FF003589CF0053BAFF0055BDFF0050B7FF0050B7FF001C78D5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005710A0005710A000D9C190013A422001BAC2E001BAC2E0005710A000000
      00000000000000000000000000000000000000000000AA5D56009F373500E5CB
      CA00EDEBEA00CEC9C900CFCCCB00CFCCCB00CFCCCB00CFCCCB00CFCCCB00CCC9
      C900E7E6E500D8ACAB00B2414100983C3D000000000000000000E7AB7900FBF4
      F000FBF4EF00FAF3EF00FAF3EF00F8F2EF00F7F2EF00F7F2EF00D8C2C000A56B
      5F00C1836C000000000000000000000000001C78D5009ECFF50092D7FD0088D2
      FC008CD5FD00629DCF0085CEFD0085CEFD0080C9FC0084CBFD001C78D5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000005710A0005710A0005710A0005710A00000000000000
      00000000000000000000000000000000000000000000AA5D55009F373500E2CA
      C700FEFAFA00F8EFEE00F8EFEE00F8EFEE00F8EFEE00F8EFEE00F8EFEE00F8EF
      EE00FCF8F700D4AAA900B2414100983C3D000000000000000000E7AB7900D192
      6D00D1926D00D1926D00D1926D00D1926D00D1926D00D1926D00D1926D00A56B
      5F0000000000000000000000000000000000000000001C78D5001C78D5001C78
      D5001C78D5001C78D5001C78D5001C78D5001C78D5001C78D500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000092363300BAA3
      A100C6C9C700C4C0C000C4C0C000C4C0C000C4C0C000C4C0C000C4C0C000C4C0
      C000C6C7C700BC9998008C343500000000000000000000000000000000000000
      000000000000000000009F9D9E00000000000000000000000000828181008281
      81008E8A8B000000000000000000000000000000000000000000000000000000
      00000000000000000000B3B1B2000000000000000000000000009A9999009A99
      9900A4A1A2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009F9D9E009F9D9E00D4D1D100969393003B393A005452530099979700C5C2
      C400D7D5D5008281810000000000000000000000000000000000000000000000
      0000B3B1B200B3B1B200DEDCDC00ABA9A900555354006F6D6E00AEACAC00D2D0
      D100E0DFDF009A99990000000000000000000000000000000000000000000000
      0000F2BB8100F3C48A00F2BC8100EFB07200EEAF6E00EFB27500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000902B0300B1430100952E0200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009F9D9E009F9D
      9E00FAFAFA00FFFFFF00D7D4D5009E9C9C00444345001C1C1E001C1C1F003534
      350067666700828181008E8A8B00000000000000000000000000B3B1B200B3B1
      B200FBFBFB00FFFFFF00E0DEDF00B2B0B0005F5E600031313300313134004F4D
      4F00818081009A999900A4A1A20000000000000000000000000000000000FBEB
      BD00FEF3C900FBDEAC00F3C99000FBB67E00FFB47D00FCCA9900FFD9AD00FED9
      A700F0B577000000000000000000000000000000000000000000000000008A27
      0300B6470100B84900008F2A0200000000000000000000000000000000000000
      000000000000000000000000000000000000918E8F009F9D9E00F0EEEF00FFFF
      FF00EEEBEB00CAC9C9009F9D9E008E8A8A009793950087868600646363003C3B
      3D001F202200201F21007472730000000000A7A4A500B3B1B200F4F2F300FFFF
      FF00F2F0F000D6D5D500B3B1B200A4A1A100ACA9AA009E9D9D007E7D7D005655
      570035363800363537008D8B8C0000000000000000000000000000000000FEFA
      D300FEF7CC00FBDCA900EBCA9100A9B86E0084AB54002B91200057A74300EAF3
      C700FCE9BD00EEAD6F00000000000000000000000000000000008A270200AF41
      0100B84900008F2A020000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C989900E9E7E700E5E5E500BDBB
      BB00A6A4A400B4B1B100C2C1C100A4A1A1009692930092909000979395009A98
      98008E8A8B006B6A6A008281810000000000B0ADAE00EEEDED00EBEBEB00CCCA
      CA00B9B7B700C4C2C200D0CFCF00B7B5B500ABA8A900A8A6A600ACA9AA00AFAD
      AD00A4A1A200858484009A999900000000000000000000000000EDA56500F3C2
      8A00FCF0C400FCE5B500FBD09F002C962200007B000005820600067F04003DA3
      3500FEF2D000F0B173000000000000000000000000008A270200AB410300C451
      0100912C020000000000000000008E2903009730020097300200973002009730
      0200972F0200972F0200973002008C28020095919200ADABAC00A4A1A100B0AF
      AF00C9C9C900D1D3D300EDEDEB00F0EEF000DCDADA00C5C4C400ADABAB009A98
      990093909000979395008E8A8B0000000000AAA7A800BFBDBE00B7B5B500C1C0
      C000D5D5D500DCDDDD00F1F1F000F4F2F400E4E3E300D2D1D100BFBDBD00AFAD
      AE00A9A6A600ACA9AA00A4A1A200000000000000000000000000EEAB6D00EDA7
      6700EFB07000F6C99000FFD8AC002E982300006E00006ABF6B00FFF0EA0048A1
      3800A3AF5E00FCAF740000000000000000000000000098330500D7690E009F37
      0300000000000000000000000000A4390100C14F0000BF4C0000BF4D0000BD4C
      0000BD4C0000BF4D0000B64600008C280200918E8F00AFADAF00C9C7C700CECE
      CE00C9C9C900E2E2E200D1CFCF00A1ABA100BDBCBC00CBCECF00D5D5D500D3D3
      D300C6C5C500B6B6B6009897970000000000A7A4A500C0BFC000D5D4D400D9D9
      D900D5D5D500E9E9E900DCDADA00B5BDB500CCCBCB00D7D9DA00DFDFDF00DDDD
      DD00D3D2D200C6C6C600ADACAC00000000000000000000000000F2B47900F2B7
      7E00F0B27700F0AC6F00FBB57E007AB4600041A641006FBC6900FFFFFF00F4FE
      FB00BCBB7900F3AA6B00000000000000000087230100C7601600CA6213008723
      0200000000000000000000000000902B02009931020098310200962F02009F35
      0200C04E0000C14F0000B54600008C280200000000009C999A00D0D1D100CFCF
      CF00DCDCDC00C9C6C600B5B0B400A5D1A700BAC4BC00C5A7A100ADA4A3000000
      00000000000000000000000000000000000000000000B0AEAF00DBDCDC00DADA
      DA00E4E4E400D5D3D300C5C1C400B8DCBA00C9D1CB00D2BAB500BFB7B600BBB9
      BA00C4C2C300D0CFCF00BBB9BA00000000000000000000000000F7C29200FAC5
      9800F8C29300F8C09000F3BF8A00C2D5A500FFFFFF00D9EED50056B153004BAF
      4B00B8BC7900F8B0750000000000000000008F2A0300ED8E2C00AB470D000000
      000000000000000000000000000000000000000000000000000088260300B444
      0100BA490000AB3E0100B74700008B28020000000000000000009C999A00C1BF
      BF00AFADAD00B1B0B000E3E3E300F6F3F300EEEDEE00EDE1DE00DCD8D8000000
      0000B4B4B4000125FF0000000000000000000000000000000000B0AEAF00CFCD
      CD00C0BFBF00C2C1C100EAEAEA00F8F6F600F2F1F200F1E8E600E4E1E100D8D8
      D800C4C4C400A9A6A700000000000000000000000000F6C79200FCD4AD00FCD4
      AC00FCD0A900FCD0A900FFD4B5005DA9460080C78000E0F2DE00279824000070
      000082B05B00FFBD9000EEAC6D0000000000932E0500F0953000A13E0B000000
      000000000000000000000000000000000000000000008A270300AF410100C250
      0000962E0200A0360100BA4900008B2802000000000000000000000000009C99
      9A00D8DADA00CACACB009D9FA000BBBFC100D3D5D700D4D9D900D5D5D5000000
      0000AFADAD00000000000125FF0000000000000000000000000000000000B0AE
      AF00E1E3E300D6D6D700B1B3B400CACDCF00DDDFE000DEE2E200DFDFDF00D3D2
      D300C0BFBF0000000000000000000000000000000000F6C79200FFEAC400FEE3
      BC00FEE2BA00FEE0B800FFE0BA00D9D9AC000A820900188A1600037F03000079
      000077B45D00FFCEAA00EEAC6D0000000000902C0400F0963000B7521300801E
      0000000000000000000000000000000000008A270200B1420100C55100009E35
      020084230300A3380100BA4900008B2802000000000000000000000000000000
      0000FBE5E100F8E0D400E9C9BD00E3C7BD00E2CCC700DED3CE00D0CECC000000
      00000000000000000000000000000125FF000000000000000000000000000000
      0000FCEBE800FAE7DE00EED5CC00EAD4CC00E9D8D400E6DDD900DBD9D800AAA8
      AA000000000000000000000000000000000000000000FADDAB00FFFBD500FFF4
      CC00FFF3CA00FFF0C900FFEFC500FFF2D100B5D598002A9624002B9924009ACB
      8700B5D19500FFE0BA00F2B77A000000000086220100D4732000F2952F009530
      050083200100832001008320010096300400C0540700C4530100A03501000000
      000000000000A3380100BA4900008B2802000000000000000000000000000000
      0000CE9F9D00FFDECE00FFCFBD00FFC4AF00FFBAA300FFB19900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9B3B100FFE6D900FFDACC00FFD1C000FFC9B600FFC2AE00000000000000
      00000000000000000000000000000000000000000000FCEFC400FFFFD800FFFB
      D300FFFCD400FFFBD300FFFBD400FFFCD400FFFFE100FFFFEB00FFFFE700FFFF
      E000FFF8D700FFF4CB00F3C086000000000000000000952F0500EE912D00F79C
      3300BB551400B04B1000CA671A00EF8A2300D067110095300300000000000000
      000000000000A4380100BA4900008B2802000000000000000000000000000000
      0000CE9F9D00FFDDCE00FFCCBC00FEC2B000FFBBA400F7A99200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9B3B100FFE5D900FFD8CB00FED0C100FFCAB700F9BBA800000000000000
      00000000000000000000000000000000000000000000FEF4CB00FFFFDD00FFFF
      D900FFFFD900FFFFDA00FFFED700FEF6CC00F8DAA300F4C07D00F4C17F00F7D8
      A300FEF2C500FFFFDD00F3C99100000000000000000000000000932E0400C15F
      1800ED8C2C00F6963100E98A2B00B85212008E29030000000000000000000000
      000000000000A1370100B84800008B2802000000000000000000000000000000
      0000CE9F9D00FFDDCE00FFCCBC00FEC2B000FEB8A300FAB09900000000000000
      0000000000000125FF0000000000000000000000000000000000000000000000
      0000D9B3B100FFE5D900FFD8CB00FED0C100FEC8B600FBC1AE00000000000000
      00000000000000000000000000000000000000000000F4CC9600F8DEAF00F8DD
      AC00F7D8A600F6CF9900F3BF8000EFAC6600EB9D4F00EB9C4C00EB9F5500F0AC
      6E00FAC08700FCD3A000FAC08900000000000000000000000000000000008825
      0200922D04009A360700912D0400862301000000000000000000000000000000
      0000000000008F2A0300952E02008B280200000000000000000000000000CE9F
      9D00FAE0D500FFDACC00FFCEBD00FFC6B100FCB8A300F8AD9900000000000000
      000000000000000000000125FF0000000000000000000000000000000000D9B3
      B100FBE7DF00FFE3D800FFD9CC00FFD3C200FDC8B600FABFAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDA35400EFAB6800F7BC
      8300FABF8800FABC8300FABC8300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9F
      9D00CE9F9D00CE9F9D00CE9F9D00F3AD9D00F3AD9D0000000000000000000000
      00000000000000000000000000000125FF00000000000000000000000000D9B3
      B100D9B3B100D9B3B100D9B3B100F6BFB100F6BFB10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAC0
      8800FAC08800FAC0880000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5938000A593
      8000A59380000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A34040098300000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000020A1C9002CAACF001082AC00000000000000
      00000000000000000000000000000000000018741D00CAC5AA00DBCFC800DBD0
      C400F2DFCB00A5938000A5938000A5938000A593800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000098300000AA501F0098300000000000000000000000000000000000000000
      000000000000000000000000000008780E0008780E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002BA3
      C90024A5CC000F84AE00149AC30024AED60033B1D500188BB4001787AF0043AB
      CC003DA8CB00000000000000000000000000158A2D00CADABB00DDD1CC00D2CF
      CC00FFF2E000FFF0DA00FFEBD000FFE8C600FFE6BE00A5938000A5938000A593
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009533
      0500C0794900CC7E470098300000000000000000000000000000000000000000
      0000000000000000000008780E0076F9A7000DA31B0008780E00000000000000
      00000000000000000000000000000000000000000000000000000000000032A5
      C90037B8DC0014AED90011A1CB001DC7F00048D7F80034A6CA005CC1DD0067C4
      DE003FA4C60000000000000000000000000000710E00BBD5B400D7CCCB00D2CF
      CC00F1E7DA0070685F0070685F00D2B9A500E2C6AA00E5C6A300FFDDAF00A593
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000096360700BE80
      5300EFB375009830000000000000000000000000000000000000000000000000
      0000000000000000000008780E0076F9A7000EAA1D0008780E00000000000000
      00000000000000000000000000000000000000000000208CB4002C98BD004EB5
      D50085DBEF0051C0DE0039C8EC001ED7FF003ADBFF005FD4F10075C6DF00B0E1
      EC0090CEE1001B8BB5000000000000000000006F030098BA9500D9CFD200D2CF
      CC00E9E3DA00D4C9BD00D0C9B20070685F0070685F0070685F00F9D2AF00A593
      800000000000000000000000000000000000205E0000205E0000205E0000205E
      0000205E0000205E0000205E0000205E0000265C000094340000A0603A00EDB0
      6F00A7450A004845000019490000184500000000000000000000000000000000
      0000000000000000000008780E0076F9A7000EA81C0008780E00000000000000
      0000000000000000000000000000000000000000000060BAD70048B0D20053BE
      E00095EDFF008DEFFF005AE5FF0027DAFF001CD8FF0052E2FF0079E8FF007DEB
      FF003FCBEE0031B1D9002CA4CE00000000000068000082A98000D5CED100D2CF
      CC00EAE6E20070685F003B7F3400105F1000105C10001B671800105D10000F5E
      0F000F5F0F00000000000000000000000000205E000038D3710037D1700036CF
      6C0036CF640038D1620086E0A500FFFFFF0097380900A0603A00F0B27400DA84
      2E00A85A2F00B3AEAC00AEAEAE00184600000000000000000000000000000000
      0000000000000000000008780E0076F9A70010AA1F0008780E00000000000000
      000000000000000000000000000000000000000000001391C00022A6D7004EC3
      EA0081DFF70092EFFF0071D3E8005CB8CC0050B2C9002AC7EB0007D1FF0004CF
      FE0009D0FE0008C9F5000EB4E1000000000000620000699C6A00D3CFD200D2CF
      CC00D9D5D6008CA185000C690D00087C080000970000038C0300067B06000970
      09000C660C000F5F0F000F5E0F0009610900205E00001CB5390022BA440031C9
      620034CC690033CB6700BFEFCF00DBB6A800A0603A00EFB27300DD862D009D39
      0500A49A9500A8A8A800BCBCBC001C520000000000000000000008780E000878
      0E0008780E0008780E0008780E0076F9A70019B02C0008780E0008780E000878
      0E0008780E0008780E000000000000000000000000001C8EB80028ADDE003FBB
      E7006DD7F60091C7D3009796960097969600979696009796960045BCD80002D2
      FF0014D3FE001ED2FB000C9ECB00000000000000000046834700D2CFCC00D2CF
      CC00D7D6D500257928000E6D12000AA21400049D080000990000009A0000009B
      0000009D0000009D0000017A010002630200205E000000970000009600000CA5
      180032C9640079DD9C00FDFEFD00A0431800EEAC6B00DD862E00A94300009D71
      5E00A5A5A500B9B9B900DBDBDB001F5B00000000000008780E0076F9A70055E3
      830049DA720042D3680037C856002AB9430022B337001CB2300016AF27000FA8
      1D000EA91B000DA21B0008780E0000000000000000001E92BC0027ADDF0031B4
      E3005ACFF40097969600E9E3E200B2B3B300ACA2A200E1B7B5009796960059DC
      FA009CF0FF00B5EFFC003D9BBD00000000000000000031753100D2CFCC00FFFB
      FF006B986A000F6111001AAC320013AC28000DA61B0007A00D00029B03000099
      0000009C0000008500000065000000000000205E0000009A0000009900000096
      00008FDCA100F2F7F900A7B5BB0089604B00D57A2800963A0F009E766500A9A9
      A900BEBEBE00DDDDDD00F6F6F600205E00000000000008780E0076F9A70076F9
      A70076F9A70076F9A70076F9A70076F9A7002CBB480076F9A70076F9A70076F9
      A70076F9A70076F9A70008780E000000000000000000148CB8001F9DCD0027AC
      DD0047C5EF0097969600E9E2E000B1B2B200ACA2A200DCB5B400979696007CE4
      FB00ACECF9008ACBE00048A5C40000000000000000000E5E0E00D2CFCC00EBF2
      E9001466170020A03D0024BC48001DB63B0017B02F0011AA22000BA3150005A1
      0A00008A0000006600000000000000000000205E0000009A00000097000039AF
      44004590B7001979B000665D5A00B6B5AE00665D5A00AC9C9500B7B7B700CACA
      CA00E4E4E400F7F7F700FFFFFF00205E0000000000000000000008780E000878
      0E0008780E0008780E0008780E0076F9A7003CCB5D0008780E0008780E000878
      0E0008780E0008780E00000000000000000000000000000000000E80AA0020A2
      D30036BCEB0097969600E9E2E000B1B2B200ACA2A200DDB6B4009796960065E1
      FD0068CAE6000579A400000000000000000000000000055D0500B9B4B8003E83
      3F00157C260033CD68002DC55C0027BF4F0021B941001AB3350015B02B000B9B
      170001680100000000000000000000000000205E000000980000009D1000298E
      A8002C94C9004DB4FD004C91D60048769500A6ABAC00CECECE00E1E1E100F0F0
      F000FCFCFC00FEFEFE00FFFFFF00205E00000000000000000000000000000000
      0000000000000000000008780E0076F9A70049D9720008780E00000000000000
      0000000000000000000000000000000000000000000000000000000000001389
      B4000D8FBE0097969600ECE5E200B1B2B200ACA2A200E0B8B600979696001E9A
      C1002293BA00000000000000000000000000000000000464040051734F001464
      17002FC7620033CB670032CF68002FCC62002AC9570026BF4C001BAC3500046F
      070000000000000000000000000000000000205E000025A31900B1D188002B8C
      B60051B9ED0053BAFF001C80B7005B8DA800D4D4D400F1F1F100FBFBFB00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00205E00000000000000000000000000000000
      0000000000000000000008780E0076F9A70055E2820008780E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097969600E5E3E200AEAFAF00ABA1A100D8B6B600979696000000
      0000000000000000000000000000000000000000000000000000156D1C002A72
      39003BA060003A975A00399A5A0037AA600037A25C002BC55900087810000000
      000000000000000000000000000000000000205E0000F7E3B100FFE5BD00398B
      B00041A9DD001C80B700568CA900CECFCF00F0F0F000FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00205E00000000000000000000000000000000
      0000000000000000000008780E0076F9A70063F0970008780E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097969600B2B2B200A0A0A00099969600ABA0A000979696000000
      0000000000000000000000000000000000000000000000000000454A43003F57
      42002D5A30002F62350033603A0032734100376B430011822000000000000000
      000000000000000000000000000000000000205E0000FDE6BB00FCE1B300C3C4
      AB002480AE001C80B70099ADAF00EEEEEE00FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00205E00000000000000000000000000000000
      0000000000000000000008780E0076F9A70076F9A70008780E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097969600E1E0E000C6C7C700A5A3A300B3A5A500979696000000
      000000000000000000000000000000000000000000000000000000000000454A
      4300454A4300454A4300435045004351450038563A0000000000000000000000
      000000000000000000000000000000000000205E0000FDF2BD00FDE8B800FCE7
      B700F2DDB000E6D1A500EFEAD700FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00205E00000000000000000000000000000000
      000000000000000000000000000008780E0008780E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097969600E5E4E400EAE9E900BCBCBC00A39E9E00979696000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000205E0000205E0000205E0000205E
      0000205E0000205D0000205D0000205E0000205E0000205E0000205E0000205E
      0000205E0000205E0000205E0000205E00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000097969600979696009796960097969600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D
      0000CA5D0000CA5D0000CA5D0000CA5D00000000000000000000000000000000
      0000BB420000BB420000BB420000BB420000BB420000BB420000BB420000BB42
      0000BB420000BB420000BB420000BB4200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CA5D0000FFFFFF00FFFFFB00FFFBEF00FFF3E000FFEDD400FFE8C800FFE3
      BF00FFE2BB00FFE1BA00FFEFD000CA5D00000000000000000000000000000000
      0000BB420000FFFFFF00FFFFFA00FFFAEA00FFEFD700FFE7C700FFE1B800FFDA
      AD00FFD9A900FFD8A700FFEAC200BB42000000000000FFFFFF00FFFFFF00FFFE
      F700FFF7E900FFF2DC00FFEACF00FFE5C200FFDEB700FFD9AF00FFD7A700FFD5
      A400FFD5A400FFD5A400FFE1B5000000000000000000FFFFFF00FFF7E400FFEF
      D100FFE6BF00FFE1B400FFEFC3000000000000000000FFFFFF00FFF7E400FFEF
      D100FFE6BF00FFE1B400FFEFC300000000000000000000000000000000000000
      0000CA5D0000FFFFFF00FFF8F300FEF4E900FFEFDC00FEE9D100FEE3C400FEDD
      B800FED9B000FED6AA00FFE3BD00CA5D00000000000000000000000000000000
      0000BB420000FFFFFF00FFF6EF00FEF0E200FFEAD100FEE2C400FEDAB400FED3
      A500FECE9C00FECA9500FFDAAB00BB42000000000000FFFFFF00FFFCFC00FFFB
      F400FFF4EA00FFF0E000FEEAD400FFE3C700FEDEBC00FED9B100FED3A500FECE
      9D00FECB9700FECB9500FFD4A4000000000000000000FFFFFF00FEECD600FEE4
      C600FEDCB500FED7AB00FFE4B9000000000000000000FFFFFF00FEECD600FEE4
      C600FEDCB500FED7AB00FFE4B900000000000000000000000000CA5D0000CA5D
      0000CA5D0000FFFFFF00FFFEFC00FFFAF500FFF5EB00FFF0DF00FFEAD200FFE4
      C600FFDEBB00FFD9B000FFE4BE00CA5D00000000000000000000BB420000BB42
      0000BB420000FFFFFF00FFFEFB00FFF8F200FFF2E500FFEBD500FFE3C500FFDC
      B600FFD4A900FFCE9C00FFDCAC00BB42000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFCFB00FFF8F400FFF6EA00FFEFDD00FEEAD100FFE5C600FEDDBA00FED8
      AF00FED3A400FECE9C00FFD7A6000000000000000000FFFFFF00FFEEDC00FFE6
      C900FEDDB800FED7AC00FFE4B9000000000000000000FFFFFF00FFEEDC00FFE6
      C900FEDDB800FED7AC00FFE4B900000000000000000000000000CA5D0000FFFF
      FF00CA5D0000FFFFFF00FFFFFF00FFFFFE00FFFBF700FFF6ED00FEF0E100FFEB
      D500FEE5C800FEDFBC00FFE8C500CA5D00000000000000000000BB420000FFFF
      FF00BB420000FFFFFF00FFFFFF00FFFFFE00FFFAF400FFF3E700FEEBD800FFE5
      C900FEDDB800FED5AA00FFE1B500BB42000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFCFB00FFF8F300FEF3E700FEEEDD00FFE7D000FEE1
      C500FEDCB700FED7AD00FFDDB1000000000000000000FFFFFF00FFF3E500FEEA
      D300FEE1C100FED9B000FFE4B9000000000000000000FFFFFF00FFF3E500FEEA
      D300FEE1C100FED9B000FFE4B900000000000000000000000000CA5D0000FFFF
      FF00CA5D0000FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFCF800FEF6ED00FEF2
      E200FFECD600FEE5C900FFEDD100CA5D00000000000000000000BB420000FFFF
      FF00BB420000FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFBF600FEF3E700FEEE
      D900FFE6CA00FEDDBA00FFE7C400BB42000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCF600FFF7
      EB00FFF0DD00FFEAD100FFEFD5000000000000000000FFFFFF00FFF7ED00FFEE
      DB00FFE4C900FEDCB800FFE5BA000000000000000000FFFFFF00FFF7ED00FFEE
      DB00FFE4C900FEDCB800FFE5BA0000000000CA5D0000CA5D0000CA5D0000FFFF
      FF00CA5D0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCF900FFF7
      EF00FFF1E400FEEBD600FFF3E000CA5D0000BB420000BB420000BB420000FFFF
      FF00BB420000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFBF700FFF4
      EA00FFEDDC00FEE5CA00FFEFD700BB4200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFAF400FFF3
      E400FFE9D200FEE1C000FFE7BE000000000000000000FFFFFF00FFFAF400FFF3
      E400FFE9D200FEE1C000FFE7BE0000000000CA5D0000FFFFFF00CA5D0000FFFF
      FF00CA5D0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFBF300FFFFFF00CA5D0000BB420000FFFFFF00BB420000FFFF
      FF00BB420000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFAEF00FFFFFF00BB420000FF00FF00C24D0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C24C0000FF00FF0000000000FFFFFF00FFFCFA00FFF5
      ED00FEECDA00FEE3C700FFE9C5000000000000000000FFFFFF00FFFCFA00FFF5
      ED00FEECDA00FEE3C700FFE9C50000000000CA5D0000FFFFFF00CA5D0000FFFF
      FF00CA5D0000EEB67C00ECB07400ECB07400ECB07400ECB07400ECB07400ECB1
      7400ECB07100ECAE6D00EEB37300CA5D0000BB420000FFFFFF00BB420000FFFF
      FF00BB420000E9A36200E69C5900E69C5900E69C5900E69C5900E69C5900E69D
      5900E69C5600E6995200E99F5800BB4200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFEFE00FFFA
      F500FEF1E300FFE9D000FFEDCD000000000000000000FFFFFF00FFFEFE00FFFA
      F500FEF1E300FFE9D000FFEDCD0000000000CA5D0000FFFFFF00CA5D0000FFFF
      FF00FFFFFF00CA5C0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D
      0000CA5D0000CA5D0000CA5D000000000000BB420000FFFFFF00BB420000FFFF
      FF00FFFFFF00BB410000BB420000BB420000BB420000BB420000BB420000BB42
      0000BB420000BB420000BB4200000000000000000000FFFFFF00FFFFFF00FFFE
      F700FFF7E900FFF2DC00FFEACF00FFE5C200FFDEB700FFD9AF00FFD7A700FFD5
      A400FFD5A400FFD5A400FFE1B5000000000000000000FFFFFF00FFFFFF00FFFC
      FA00FEF6EB00FEEED900FFF1D5000000000000000000FFFFFF00FFFFFF00FFFC
      FA00FEF6EB00FEEED900FFF1D50000000000CA5D0000FFFFFF00CA5D0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFB
      F300FFFFFF00CA5D00000000000000000000BB420000FFFFFF00BB420000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFA
      EF00FFFFFF00BB420000000000000000000000000000FFFFFF00FFFCFC00FFFB
      F400FFF4EA00FFF0E000FEEAD400FFE3C700FEDEBC00FED9B100FED3A500FECE
      9D00FECB9700FECB9500FFD4A4000000000000000000FFFFFF00FFFFFF00FFFE
      FE00FFF9F300FEF0E100FFF6DF000000000000000000FFFFFF00FFFFFF00FFFE
      FE00FFF9F300FEF0E100FFF6DF0000000000CA5D0000FFFFFF00CA5D0000EEB6
      7C00ECB07400ECB07400ECB07400ECB07400ECB07400ECB17400ECB07100ECAE
      6D00EEB37300CA5D00000000000000000000BB420000FFFFFF00BB420000E9A3
      6200E69C5900E69C5900E69C5900E69C5900E69C5900E69D5900E69C5600E699
      5200E99F5800BB420000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFCFB00FFF8F400FFF6EA00FFEFDD00FEEAD100FFE5C600FEDDBA00FED8
      AF00FED3A400FECE9C00FFD7A6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFCF800FFF4E900FFFAE7000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFCF800FFF4E900FFFAE70000000000CA5D0000FFFFFF00FFFFFF00CA5C
      0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D
      0000CA5D0000000000000000000000000000BB420000FFFFFF00FFFFFF00BB41
      0000BB420000BB420000BB420000BB420000BB420000BB420000BB420000BB42
      0000BB42000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFCFB00FFF8F300FEF3E700FEEEDD00FFE7D000FEE1
      C500FEDCB700FED7AD00FFDDB1000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FFF9F300FFFFF4000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FFF9F300FFFFF40000000000CA5D0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFBF300FFFFFF00CA5D
      000000000000000000000000000000000000BB420000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFAEF00FFFFFF00BB42
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCF600FFF7
      EB00FFF0DD00FFEAD100FFEFD5000000000000000000FFFFFC00FFFFFB00FFFF
      FB00FFFFFC00FFFFFA00FFFFFB000000000000000000FFFFFC00FFFFFB00FFFF
      FB00FFFFFC00FFFFFA00FFFFFB0000000000CA5D0000EEB67C00ECB07400ECB0
      7400ECB07400ECB07400ECB07400ECB17400ECB07100ECAE6D00EEB37300CA5D
      000000000000000000000000000000000000BB420000E9A36200E69C5900E69C
      5900E69C5900E69C5900E69C5900E69D5900E69C5600E6995200E99F5800BB42
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E58D3D00E4893C00E489
      3C00E4893C00E4883C00E58B3B000000000000000000E58D3D00E4893C00E489
      3C00E4893C00E4883C00E58B3B000000000000000000CA5C0000CA5D0000CA5D
      0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D00000000
      00000000000000000000000000000000000000000000BB410000BB420000BB42
      0000BB420000BB420000BB420000BB420000BB420000BB420000BB4200000000
      000000000000000000000000000000000000FF00FF00C24D0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C24C0000FF00FF00FF00FF0000000000000000000000
      0000000000000000000000000000FF00FF00FF00FF0000000000000000000000
      0000000000000000000000000000FF00FF000000000000000000000000000000
      00000000000000000000000000000000000000000000B9838500B9838500B983
      8500B9838500B9838500B9838500B98385000000000000000000000000000000
      0000000000000000000000000000000000000156030000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9838500F6DDB700F4D7
      AC00F3D3A100F1CF9800F0CA8F00B98385000000000000000000000000000000
      0000000000000000000000000000015603000156030000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000286
      BD0030A4D70045B0E1003AAADA00269ED10034A6D80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BA8E8500F8E5C9008A94
      D9001E47F600888ECD00F2D19C00B98385000000000000000000000000000000
      00000000000000000000015603005BF791000156030001560300015603000156
      0300015603000156030000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007A2D06007A2D06007A2D
      06007A2D06007A2D06007A2D06007A2D06000000000000000000038AC000058F
      C40065C5ED0089D5FE007FCFFA007ACEF80062BFEA0058BBE9002FA4D7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CB9A8200FAEDD9001E49
      F9000033FF001E48F600F4D8AB00B98385000000000000000000000000000000
      000000000000015603005BF791005BF7910054EF870041DA69002AC0460016A6
      2800099213000156030000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007A2D060013FFFF0020E9
      FF003FD7E50051C5C0003DD7D5007A2D060000000000000000000892C7000E9A
      CC0069CCE90089DAFA007ACFF70068C2EE003FA9D70076CBF40082D1FA005BBC
      EB00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCA88700FCF5E9008D9D
      ED001E49FA008B97E000F6E0BD00B98385000000000000000000000000000000
      00000000000000000000015603005BF791000156030001560300015603000156
      0300015603000156030000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007A2D0600BCCBA100BCA1
      6C00D9833600D96D1A00CB620F007A2D06000000000000000000109ACC001AA4
      D4007BD5EA009DE9F8008BE0FC00499EC4002083AF0054B7E5007DCFFA0082D1
      FA001F9DCF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3B18E00FEFBF600FCF7
      ED00FBF2E400FAEDDA00F8E8CE00B9838500000000000D5DC9000D5DC9000D5D
      C9000D5DC9000D3F7E000000000001560300015603000000000000000000DCEB
      FB000D5DC9000D5DC9000D5DC9000D5DC9000000000000000000000000000000
      000000000000000000000000000000000000000000007A2D0600EFBB6F00E090
      3D00DE7B2800D3681500CC5603007A2D0600000000000000000019A1D30028AC
      DC009DDDED00C1F6FC00A3F0FF0069BAD40016658A004EABD7007BD0FB007DCF
      F8001E9CCE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDBD9200FFFFFF00FEFC
      FA00FDF9F200B9838400B9838400BE8675000D5DC90068B6F7003DAAFF0035A1
      FF0034A0FF000D3F7E000000000000000000015603000000000000000000DCEB
      FB00177DFF002083FF002184FF000D5DC9000000000000000000000000000000
      000000000000000000000000000000000000000000007A2D06002AC4450050A1
      3800E7A66B00E19A5900E1964E007A2D0600000000000000000023A9DA002FB0
      E100B5E1F000E6F8FC00BBF2FA009FE6F2004893AD0072C1E10081D5FE007BCC
      F8001E9CCE00000000000000000000000000B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B781830000000000EDBD9200FFFFFF00FFFF
      FF00FEFDFC00B9838400D3976900000000000D5DC90063B2F4003CAAFF0035A0
      FE00349FFF000D3F7E000000000000000000000000000000000000000000DCEB
      FB00167AFF001F81FF001F82FF000D5DC9000000000000000000000000000000
      000000000000000000000000000000000000000000007A2D06002DEA7300BBF6
      D100FFFFFF00FFFFFF00FFFFFF007A2D060000000000000000001A9FD0002CB0
      D90043AFD00051B8D70047B8D90045B7D90053C1E0006CCCE90086D9F7008BD8
      FE001F9DCF00000000000000000000000000B7818300EED1B100E1B89400E1B6
      8C00DFB18000DCAB7500EFC68600B781830000000000EDBD9200DCA88700DCA8
      8700DCA88700B983840000000000007404000D5DC90066B6F70041B0FF0039A7
      FF0038A5FF000D3F7E000000000000000000000000000000000000000000DCEB
      FB000F75FF00187DFF00187EFF000D5DC9000000000000000000000000000000
      000000000000000000000000000000000000000000007A2D06007A2D06007A2D
      06007A2D06007A2D06007A2D06007A2D06000000000000000000189DCC003EBF
      DC0028A5CB002DACD0002DB1D50021A4CE0031B1D90050C1E30082D8F6006CC7
      F0001395C700000000000000000000000000B7818300CA8F6B00952B00009A34
      01009934010099330000E4B57C00B7818300000000000000000045812C000000
      0000000000000000000000000000057E0E000D5DC90066B6F70041B0FF0039A7
      FF0038A5FF000D3F7E000000000000000000000000000000000000000000DCEB
      FB00DCEBFB00DCEBFB00DCEBFB00DCEBFB007A2D06007A2D06007A2D06007A2D
      06007A2D06007A2D06007A2D0600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000169DCB0041BD
      D5000483B40025A3C40070F2FA003BCBE60013A3CF000186BB001396C50038AF
      D7000F91C500000000000000000000000000BA8E8500F8EEE500A1421300972E
      000094290000BD764900FDE5B300B78183000000000001780900109726000000
      0000000000000000000004901200087F10000D5DC9004786C1001F6FC1001F6F
      C1001F6FC1000D3F7E000D3F7E000D3F7E000D3F7E000D3F7E000D3F7E000000
      0000000000000000000000000000000000007A2D060013FBFF0019EAFF0028E1
      FF0038D4E5002CE7F0007A2D0600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000047B
      B0000078AD001B99C1006DEBF6005FE6F6002EB1D100047EAF000786B4000D93
      C20000000000000000000000000000000000CB9A8200FFFFFF00D5A992009226
      0000A0411200ECCCAE00FFEFC500B781830003750F0049CC72002EA848000370
      0800097B11000C9116000D9C190005730B000D5DC9006CBDF7004ABCFF0042B2
      FF0041B4FF001F6FC10039A7FF0039A7FF0035A0FF0034A0FF000D5DC9000000
      0000000000000000000000000000000000007A2D060090D4BC008AB29500BB92
      5400CC782B00BF6F23007A2D0600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000481B6000C83B2000000000023ADD7001091BF00037DAF00057EB1000000
      000000000000000000000000000000000000DCA88700FFFFFF00FCF7F500AE5B
      3300CD957400FBF1DE00DECBB400428A3E0044D273005CE78E003ECA600027B8
      400014AB25000EA31B0007800F00000000000D5DC9006ABAF4004ABBFF0043B2
      FE0043B4FF001F6FC10039A7FF003AA7FF0035A0FE0035A0FF000D5DC9000000
      0000000000000000000000000000000000007A2D0600FFBC7700FC954600EA7F
      2B00DA6C1800D95B05007A2D0600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000035B2DE001786B600000000000000000000000000037BAD000470A1000000
      000000000000000000000000000000000000E3B18E00FFFFFF00FFFFFF00EDDB
      D100F9F2EA00B7818300B7818300B784750030AB4A0038C6580026AF3D000D8A
      180009861100077B0D0000000000000000000D5DC9006BBCF60049BCFF0043B6
      FF0043B7FF001F6FC10039A7FF003BABFF0036A4FF0036A4FF000D5DC9000000
      0000000000000000000000000000000000007A2D060052C756004F9D2F00CE96
      4900DE873F00D97F2E007A2D0600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002490B6005CD4E9002695B800000000000970A3000486B800000000000000
      000000000000000000000000000000000000EDBD9200FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00B7818300DC9D64000000000000000000138E2100199F29000000
      0000000000000000000000000000000000000D5DC90087C1F20079CBFC006EC5
      FB0073C9FC004786C1006BC0FC006BC0FC0066BAFB006ABCFC000D5DC9000000
      0000000000000000000000000000000000007A2D060016E55F0077E39800FFFF
      FF00FFFFFF00FFFFFF007A2D0600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031A1BF0060D7E60050C4DE0031AAD7000B80B200000000000000
      000000000000000000000000000000000000EDBD9200DCA88700DCA88700DCA8
      8700DCA88700B7818300000000000000000000000000000000000A7D12000000
      000000000000000000000000000000000000000000000D5DC9000D5DC9000D5D
      C9000D5DC9000D5DC9000D5DC9000D5DC9000D5DC9000D5DC900000000000000
      0000000000000000000000000000000000007A2D06007A2D06007A2D06007A2D
      06007A2D06007A2D06007A2D0600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEC0B200DABFB200D5BCB100D0B7AC00D1B4A600DDBAA9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C0000BD4C0000BD4C0000BD4C0000BD4C
      0000BD4C0000BD4C0000BD4C0000BD4C0000893615007D3213007B3113007B31
      13007B3113007B3113007B3113007B3113007B3113007B3113007B3113007B31
      13007B3113007B3113007E3313008A3715007B3113007B3113007B3113007B31
      13007B3113007B3113007B3113007B3113007B3113007B3113007B3113007B31
      13007B3113007B3113007B3113007B311300000000000000000000000000E1BF
      B000E6D7D000E3E5E600DCE0E600CEC7C700C4BDBF00BCBCC000B7AFAD00B8A4
      9D00DDBAA9000000000000000000000000000000000000000000000000000000
      0000BD4C0000FFFFFF00FFF3E300FFEDD000FFE3C100FFDCB200FFD5A500FFD3
      A100FFD5A500FFD5A500FFE1B600BD4C0000692A1100FFF3E700FFEFE0006E6C
      6A00FBE7CF00FCE5C9006E6C6A00FFDEBB00FFDEBB006E6C6A00FED4A700FBCE
      9C006E6C6A00FCCB9700FCCB970078301200692A1100FFF3E700FFEFE000FEED
      D900FEE9D000FAE1C600CEB69D00BDA58B00BCA18700C9A98900EDC69D00FED1
      A300FECF9D00FFCC9800FECB9600762F12000000000000000000E3C1B200F0ED
      E900F0F8FC00DEBFB100CB7E5900C9734A00C7724900C2765300C09C8E00B1AF
      B100B4A4A000D1B2A4000000000000000000BD814F00BD814F00BD814F00BD81
      4F00BD4C0000E09D6500E09D6500E09D6500E09D6500E09D6500E09D6500E09D
      6500FCC99200FECB9600FFD5A500BD4C000065281000EFE7DD006E6C6A006E6C
      6A006E6C6A006E6C6A006E6C6A006E6C6A006E6C6A006E6C6A006E6C6A006E6C
      6A006E6C6A006E6C6A006E6C6A00762F1200692A1100FFF6EB00FFF2E500FFEF
      DD00C6B4AF0070514800653E3D00673F3D0066403D006E4D47007E6C5400B899
      7900FED0A000FECF9A00FECC9700762F120000000000E1BDAD00F6F0EF00FAFF
      FF00D38B6900BC461600BF4A1A00F3D8C900EEC7B500BD461600BF491800C17E
      5E00B7B4B700B8AAA600DDBAA90000000000BD814F00E1F0FE00DEE9F000DDE2
      E500DE9F6600FFF8EA00FFE9CF00FFE3C400FFDEBA00FFDAB200FFE0B600E09D
      6500FBC69000FECB9600FFD5A400BD4C0000662810006E6C6A006E6C6A00FFF2
      E2003A55DC0000139D00FFEAD3000A6B0B000D4B0C00FFE2C400AD5858007D2C
      2C00FFDCB700428EE30010478F00762F1200692A1100FEF8EF00FFF4E900AFA5
      C90040246200B75D5400BB595A00B14D4F00A14545009640440039431E005060
      3500BA9A7800FECF9F00FECE9900762F120000000000F0E1D900FFFFFF00DA9A
      7A00BA411100BD4B1B00BF4E1F00E2AA8E00DE9F8100BD4C1C00BD4C1C00BF45
      1500C5836500BFBDC100CCB5AC0000000000BD814F00DEE9F000DCE1E300DADA
      D800DE9F6600FFF6EA00FEE9D000FEE2C500FEDDB700FED7AF00FFDAB100E09D
      6500FBCA9700FECB9700FFD5A400BD4C000066281000FEF3E7006E6C6A00FEF3
      E7003754DD000115A000FFEAD300096C0A000D4B0C00FFE2C400AD5858007D2C
      2C00FFDCB700428EE30010478F00762F1200692A1100FFFAF300FFF7ED002D2F
      A1006563BD00F68A9600FF7F7A00EB6D6E00D8575B00BB575000288F2B000363
      070069674500FED1A100FECF9D00762F1200E3C1B200FEFCFC00F4DED100C255
      2400BF4C1D00BD4A1C00C2572800DE9F8000D78B6700BD4A1A00BF4E1E00BF4C
      1C00BF4F1F00CAB1A600C9C4C400DDBAA900BD814F00DEE9F000DCE1E300DADA
      D800DE9F6600FFFBF300FFEEDC00FFE7D100FEE2C200FEDCB500FFDEB600E09D
      6500FCCE9F00FFCE9C00FFD7A500BD4C000065280F006E6C6A006E6C6A00FEF6
      EB003754DD000115A000FFEAD3000C6D0C000D4B0C00FFE2C400F8D8B600F8D8
      B600FFDCB700428EE30010478F00762F1200692A1100FFFAF700FFF7F000686B
      C4009DBFFC006E88E600C07AA000FF807E00F27973005DA957001BB736000D97
      190028631C00FED4A500FFD09F00762F1200EACEC200FFFFFF00E2A78700C457
      2300C55A2900BF4F1E00C65D2F00FEF8F400F8EBE500C1542500BB461600BF4F
      1F00BD451600CB896B00D5D8DD00DCBCAF00BD814F00DEE9F000DCE1E300DADA
      D800DE9F6600FFFFFC00FEF3E700FFEEDD00FFE7CF00FFE2C200FFE2BF00E09D
      6500FCD3A900FFD3A400FFD8A900BD4C000065280F00FFF7EE006E6C6A00FFF7
      EE003754DD000115A000FFEAD3000D6E0D000D4B0C00FFE2C400F8D8B600F8D8
      B600FFDCB700428EE30010478F00762F1200692A1100FFFCFA00FFFAF4006565
      BC00C7D8FA007EA5F8004970ED009669B20070A7970028DD7B0021C15A0014A7
      350023832800FFD4A900FED1A300762F1200EED7CE00FFFFFF00DC976D00CA66
      2D00CA663100C75E2B00C1542300E7B79F00FFFFFF00EBC9B700C2592B00BC49
      1900BC471700CA754D00E1E6ED00DDC2B600BD814F00DEE9F000DCE1E300DADA
      D800DE9F6600FFFFFF00FEF6F000FEF3E700FFEEDA00FEE7CE00FFE7CB00E09D
      6500FBD8B200FFD8AD00FFDAB100BD4C0000662810006E6C6A006E6C6A00FFFA
      F3003753DD0000139F00FFEAD3000D6E0D000D4B0C00FEE5C700FFE1C000FADD
      BD00FFDCB700FED8B000FED8B000762F1200692A1100FFFEFC00FFFCF800B0AC
      D5005A5DBC00ABC6FB006A92F600355DEE001858EB000D7EF20005ADEE0002C5
      E3002DA3A100FED8AC00FED4A600762F1200EED7CC00FFFFFF00E1A37500D074
      3900D0723B00CB693300C9632E00C65C2900E6B69C00FFFFFF00F4E0D500C45A
      2C00BA411200CC785000EDF3F800E1C5BA00BD814F00DEE9F000DCE1E300DADA
      D800DE9F6600FFFFFF00FFFBF700FFF8F000FFF3E700FEEDDA00FFEED800E09D
      6500FBDDBC00FFDCB700FFDEB700BD4C000065280F00FFFCFA006E6C6A00FFFB
      F700FFFCFA00FFF2E200FFEAD3000E6D0E000D4B0C00FEE7CE00FFE2C600FFE0
      BF00FFDCB700FED8B000FED8B000752E1100692A1100FFFEFE00FFFCFB00FFFB
      F700D5CFE0005757B5005B70D4004668E3002A42DC002538CE001C3BC1001F59
      B700C2CFBC00FED8B000FED5AB00762F1200E9CCC000FFFFFF00EBC09C00D57E
      4100D7834C00D8875400CF723B00CB673100C55A2600E6B59900FFFFFF00DC9A
      7900B73B0C00D7967600F3FAFF00E2C4B600BD814F00DEEBF600DCE3E900DADD
      DD00DE9F6600FFFFFF00FFFFFF00FFFEFC00FFFCF600FEF6ED00FFF7EB00E09D
      6500FCE2C600FEE1C100FFE5C200BD4C00006B2D12006E6C6A006E6C6A00FFFC
      FA00FFFCFA00FFF2E200FFEAD300FFEAD300FFEAD300FFEAD300FEE6CB00FEE3
      C400FEDEBC00FEDAB500FED8AD007B341600692A1100FFFFFF00FFFFFC00FFFC
      FA00FFFAF300D7D0E0007A77BF004750BB003341C0002D37B500514AA700B5A4
      B500FEDEBC00FEDAB500FED8AD00762F1200E9CCC000FCFAFA00FAEEE000DC8E
      4F00F2D1B700FFFFFE00E1A37700CE6B3000C75E2500DD997200FFFFFF00E2A9
      8A00C04D1C00EED9CE00F3F0EF00E2C4B600BD814F00DDDED900DAD8CE00D9D1
      C200D5792700FFF8ED00FEF6E900FEF6E900FEF6E900FEF4E500FFF6E700E09D
      6500FCE7D100FEE7CE00FFEBD000BD4C00009E512300CB934600C68C4200C68C
      4100C68C4100C68C4100C68C4100C68C4100C68C4100C78E4200CC995200CB93
      4700CE995100C1914E00BB955C00A15222009E512300C68C4100C68C4100C68C
      4100C68C4100C68C4100C68C4100C68C4100C68C4100C68C4100CC995200C68C
      4100CE995100C68C4100BB955C00A152220000000000F0E0D700FFFFFF00EEC5
      9F00E9B28200FFFFFF00FCF7F300EABB9C00E9BA9800FCF6F200FEFAF700D37B
      4A00DEA07F00FFFFFF00EAD4CA0000000000BD814F00BD814F00BD814F00BD81
      4F00C04A0000E7AF7800E3A66D00E3A56D00E3A56C00E3A56B00E5A56A00E1A3
      6800FEF0E300FEEDD800FFF0DA00BD4C000099411500CC641400D0651400CF65
      1400CF651400CF651400CF651400CF651400CF651400D1681800F3A96600E070
      1100F3A966009F6339003553C700A6420C0099411500D0651400D0651400D065
      1400D0651400D0651400D0651400D0651400D0651400D0651400F3A96600D065
      1400F3A966009F6339003553C700A6420C0000000000E6C7BA00F8EEEA00FFFF
      FF00EDC29800EBC09200F8E9D900FCF7F200FCF6EF00F6E0CF00E19E7200E3AB
      8400FFFFFF00F3E7E200EAD4CA000000000000000000BD814F00BD814F00BD81
      4F00C04A0000E09D6500E09D6500E09D6500E09D6500E09D6500E09D6500F7E5
      D500FFFBF600FFF2E300FFF7E600BD4C00000000000093401A0095401B009540
      1B0095401B0095401B0095401B0095401B0095401B0095411B0099441D00953E
      15009A451C008C3C1A00843D2400000000000000000095401B0095401B009540
      1B0095401B0095401B0095401B0095401B0095401B0095401B0095401B009540
      1B0095401B0095401B0095401B00000000000000000000000000E6C7BA00F7ED
      E900FFFFFF00F7E3CF00EFC7A000EDC29900EABB9300EAB89200F4D9C500FFFF
      FF00F4E9E300E2C1B10000000000000000000000000000000000000000000000
      0000BD4C0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFE
      FB00FFFAF300FFF8EF00FFFAF200BD4C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6C7
      BA00F3E6E000F8F3F200FEFCFB00FFFEFC00FEFCFB00FCFBFB00FAF3F200F2E0
      D700F2E0D7000000000000000000000000000000000000000000000000000000
      0000BD4C0000C9580300C7570300C7570300C7570300C7570300C7570300C757
      0300C7570300C7570300C9580300C15101000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5C6B800E5C6B800E9CCC100E9CBBF00E6C7BA00E6C7BA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC4C0100BC4C0100BC4C0100BC4C0100BC4C0100BC4C0100BC4C
      0100BC4C0100BC4C0100BC4C0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000824B4B004E1E1F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6696B00A6696B00A669
      6B00A6696B00A6696B00A6696B00A6696B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4676900A4676900A4676900A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A46769000000000000000000000000000000000000000000000000000000
      0000824B4B00824B4B00A64B4B00A94D4D004E1E1F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6696B00F3D3A400F0CB
      9700EFC68A00EDC18000EBBB7600A6696B000000000039393B0039393B003939
      3B0039393B0039393B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4676900FCEACE00F0D8BA00DCC1
      A000C4AA8900BFA48000CFAF8200DCB58100E2B87E00E7BC7E00E9BD7F00EFC4
      8100A46769000000000000000000000000000000000000000000824B4B00824B
      4B00B64F5000C24F5000C54D4E00B24D4E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7756B00F6DDBA00707B
      CE000F2EF3006E75BF00EEC48400A6696B000000000039393B00000000000000
      000000000000000000001F1F2100606060000000000060606000606060006060
      600000000000000000000000000000000000A0675B00FEEFDA00F6E0C600302D
      2D00212527003745460099846800AD926F00C2A07400DCB27A00E7BC7E00EFC4
      8100A46769000000000000000000000000000000000000000000824B4B00D458
      5900CB555600C9545500C9525300B74F52004E1E1F00FE8B8C00FB9A9C00F8AA
      AB00F7B5B600F7B5B600824B4B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BC826800F8E7CE000F30
      F700001EFF000F2FF300F0CC9600A6696B000000000000000000353536005654
      560073707200828081001F1F2100AAA7A9004745470060606000C4C1C200D1D0
      CF00C6C4C400606060000000000000000000A0675B00FFF4E500F7E5CF009C8F
      80000D466300036292000B3B54004B474100917B5E00B5976C00D1AB7400E9BF
      7D00A46769000000000000000000000000000000000000000000824B4B00D75C
      5D00D05A5B00CF595A00CF575800BD5356004E1E1F0023B54A0013C1480016BD
      48000CBC4100F7B5B600824B4B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D1926D00FBF2E2007486
      E7000F30F800727FD700F3D7AB00A6696B00000000000000000060606000ABA9
      AA00B8B6B600817E7F00C6C4C400B5B1B2005D5C5E002F2F31002E2D2F004847
      48008E8C8E00B5B2B4006060600000000000A7756B00FFFBF000F8EADC00EEDD
      CA0022576C00165E8200745D65007D5254005E3F390086725800A78C6600CEAA
      7300A06567000000000000000000000000000000000000000000824B4B00DD63
      6400D75F6000D55E5F00D55C5D00C2575A004E1E1F002AB44D001CBF4C001EBC
      4C0013BC4500F7B5B600824B4B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DA9D7500FEFAF300FBF4
      E700FAEEDC00F8E7CF00F6E1C000A6696B000000000060606000BBB8BA006060
      6000CECCCC00EFEEEE0060606000C9C7C700CAC9C900B5B1B200908E8F005B5A
      5B003C3C3D00606060000000000000000000A7756B00FFFFFC00FAF0E600F8EA
      DA008F9F9D0062555D00DD908C00B87979008E5757005B3D37007D6B51009A81
      5D00925C5E000000000000000000000000000000000000000000824B4B00E368
      6900DD656600DA636400DE666700C6595B004E1E1F0026B1490016BC48001BBB
      490010BB4300F7B5B600824B4B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7AB7900FFFFFF00FEFB
      F800FCF7EE00A6696A00A6696A00AC6C5A0060606000AAA6A70060606000C6C5
      C500EAE9E70060606000CCCBCB00C0BDBF00CECBCC00E0DCDD00E5E0E100D3CF
      CF00B8B7B700606060000000000000000000BC826800FFFFFF00FEF7F200FAEF
      E600F0E5D5006B5D6200E9A4A100CF909000B275750087535300583C35007A69
      5000815354000000000000000000000000000000000000000000824B4B00EB6D
      6E00E2676800E67E7F00FAD3D400CC6E70004E1E1F00A5D8970050D16F0042C9
      66002DC75800F7B5B600824B4B0000000000A4676900A4676900A4676900A467
      6900A4676900A4676900A4676900A467690000000000E7AB7900FFFFFF00FFFF
      FF00FEFCFB00A6696A00C67F4E00000000006060600060606000CACACA00E3E3
      E30060606000DDDADA00C9C7C7007D7879008F959100606060008EAB9E00A7B8
      B100D3D3D300606060000000000000000000BC826800FFFFFF00FFFEFC00FCF6
      F000FAEFE600EBDCCE008C5E5D00E2A1A100CE8F8F00B4767600865252005C3F
      3800764C4E000000000000000000000000000000000000000000824B4B00F273
      7400E96C6D00EB818200FCD1D300CF6E70004E1E1F00FFF2CC00FFFFD700FFFF
      D400E6FCC700F7B5B600824B4B0000000000A4676900E9C49D00D8A57B00D8A3
      7300D59D6600D1965A00EAB66C00A467690000000000E7AB7900D1926D00D192
      6D002A702700A6696A00000000000000000060606000CCCBCC00D9D9D9006060
      6000CECCCC00F0F0F000B8B8B800BBBABA00C4C7C5009DB2A9008BAD9F007FA0
      920060606000000000000000000000000000D1926D00FFFFFF00FFFFFF00FFFE
      FC00FEF7F000FAEFE500E1CEC00087595800E1A1A100CC8E8E00B07474008651
      5100633B3C000000000000000000000000000000000000000000824B4B00F878
      7900F0757600EE727300F0737400D16566004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD700F7B5B600824B4B0000000000A4676900BB7650007D180000821F
      0000811F0000811E0000DCA16200A4676900000000000000000000000000015A
      06002CC558001C96310000000000000000006060600060606000606060000000
      000060606000FFF6F200D9D0CB00DAD7D700E7E5E600DAD8D900606060006060
      600000000000000000000000000000000000D1926D00FFFFFF00FFFFFF00FFFF
      FF00FFFEFC00FCF7F000FAEFE500D7C1B5008A5B5B00E6A6A600CA8B8B00B675
      75007E4442003E41450000000000000000000000000000000000824B4B00FE7F
      8000F77A7B00F6797A00F7777900D76B6B004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000A7756B00F6E9DD008A2A08007F1A
      00007B160000AB5B3000FCDD9F00A46769000000000000000000005D030030BD
      570041E0750022B63E0008751100000000000000000000000000000000000000
      0000AD807D00F0CBC000FFD4C200FFC5B100FCC2B100BB878100000000000000
      000000000000000000000000000000000000DA9D7500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFEFC00FCF6EF00FCF3E600CFB5AA0097666600EFAAA9008C6D
      73001E799F000C98BD000C98BD00000000000000000000000000824B4B00FF83
      8400FC7F8000FB7E7F00FE7F8000DA6E6F004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000BC826800FFFFFF00C99379007914
      000089290700E6BD9900FFEAB500A4676900000000002D671800067F14001A92
      2F0027BB4500149A26000C881600036307000000000000000000000000000000
      0000AD807D00FFE2D500FFCFBF00FEC4B000FFB69F00AD807D00000000000000
      000000000000000000000000000000000000DA9D7500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFEFB00FFFEF700DAC1BA00955F56009E5D58002D84
      A70006BBF000008EDE00000F9500000081000000000000000000824B4B00FF88
      8900FF828300FF818200FF828300E07374004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000D1926D00FFFFFF00FBF4F2009941
      1E00BF7D5900FAEDD400D4BCA000A46769000000000000000000000000000155
      030015A5280005700B0000000000000000000000000000000000000000000000
      0000D3AAA500FFE1D300FFCFBF00FEC4B000FFB8A300AD807D00000000000000
      000000000000000000000000000000000000E7AB7900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCC7C500A56B5F00D1914F00068F
      C1000393DE000320BA000318B200010B99000000000000000000824B4B00824B
      4B00E2757600FE818200FF868700E57677004E1E1F00FAEBC500FCFBD100FCFB
      CF00FCFBD100F7B5B600824B4B0000000000DA9D7500FFFFFF00FFFFFF00E7D0
      C400F7EEE300A4676900A4676900A46A5A000000000000000000000000000360
      070009961300036C07000000000000000000000000000000000000000000AD80
      7D00FEE6DC00FFE0D300FFD1C100FFC7B200EAA7990000000000000000000000
      000000000000000000000000000000000000E7AB7900FBF4F000FBF4EF00FAF3
      EF00FAF3EF00F8F2EF00F7F2EF00F7F2EF00D8C2C000A56B5F00C1836C000000
      00000263BF002F45ED001031D300010A95000000000000000000000000000000
      0000824B4B009C565700CB6C6D00CF6E6E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B0000000000E7AB7900FFFFFF00FFFFFF00FFFF
      FF00FCFFFF00A4676900D1864900000000000000000000000000036E07000478
      0A00058C0D00026005000000000000000000000000000000000000000000AD80
      7D00AD807D00AD807D00AD807D00AD807D00AD807D0000000000000000000000
      000000000000000000000000000000000000E7AB7900D1926D00D1926D00D192
      6D00D1926D00D1926D00D1926D00D1926D00D1926D00A56B5F00000000000000
      0000000000002732D0000C19B400000000000000000000000000000000000000
      00000000000000000000824B4B00824B4B004E1E1F0000000000000000000000
      000000000000000000000000000000000000E7AB7900D1926D00D1926D00D192
      6D00D1926D00A467690000000000000000000266060002660600017707000584
      0C00026606000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E80AA000E80AA00000000000000
      00000000000000000000000000000E80AA000E80AA000E80AA000E80AA000E80
      AA000E80AA000E80AA0000000000000000000566950005669500000000000566
      9500056695000566950000000000000000000000000000000000000000000566
      95000566950005669500000000000000000093460F0093460F0093460F009346
      0F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B78183000000000000000000000000000E80AA004FB3DF001B89B1000000
      0000283F490000000000283F4900277A9900B3DEF200B5DCF000067CA60078BB
      D700BEE1F4000E80AA000000000000000000056695002F98CE000D6F9D002280
      AA008BC4E2000566950000000000162830000000000016283000000000000566
      95008CC5E30005669500000000000000000093460F00EEBF8200E98E35009346
      0F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7818300FDEFD900F4E1C900E4CF
      B400D1BCA000CDB79800DAC09A00E4C59900E9C89600EDCB9600EECC9700F3D1
      9900B78183000000000000000000000000000E80AA008CCEED004EABCF006982
      8B0053717C002F5F7300446A7B002895BF00C6E5F400CCE8F600047AA60097CA
      E000EDF9FE000E80AA0000000000000000000566950060B7E3002B88B200348C
      B100C7E5F400056695004E687200415966002A51660029485900294859000566
      9500F0FBFF0005669500000000000000000093460F005DD27000F7DAB7009346
      0F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4817600FEF3E300F8E7D3004946
      4500373C3E0051606100AE9C8200BFA88900D0B48D00E4C39300EDCB9600F3D1
      9900B78183000000000000000000000000000E80AA00BBDDEC000E80AA00283F
      490000000000283F4900000000000D83AF007AC5E7000E80AA00077CA6000E80
      AA008CD0F0000E80AA00000000000000000005669500C0E1F2001978A3000F72
      9F006DBCE3000566950016283000000000001628300000000000162830000566
      950083CBEF0005669500000000000000000093460F0093460F0093460F009346
      0F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4817600FFF7EB00F9EBDA00B0A5
      98001B617D00097CA80018556F0066625B00A7947900C5AC8600DCBD8D00EECD
      9500B78183000000000000000000000000000E80AA00057BA600000000000000
      00000000000000000000208EB80064B5D7000E80AA0000000000000000000000
      00000E80AA0060B4D8000E80AA00000000000566950008689600096A99003D99
      C500298EBD000566950000000000000000000000000000000000000000000668
      9700258BBC003C9AC90005669500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BA8E8500FFFCF400FAEFE400F2E5
      D6003872860029799A008D787F00956D6F00795953009D8B7300BAA38000D9BC
      8C00B47F81000000000000000000000000000000000000000000000000000000
      0000000000000E80AA00B9DEED000E80AA000000000000000000000000000000
      0000000000000E80AA00B1DAEC000E80AA0000000000056695008AC4DE004197
      BD00000000000000000000000000000000000000000000000000000000000000
      0000046492002987B20082C1DD000566950093460F0093460F0093460F009346
      0F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BA8E8500FFFFFD00FBF4EC00FAEF
      E300A5B3B1007C707800E5A6A300C8929200A47272007657510095856C00AF99
      7800A87779000000000000000000000000000000000000000000000000000000
      0000000000000E80AA00D6EBF2000E80AA0000000000B7818300B7818300B781
      830000000000007EAC00DCEEF4000E80AA000000000005669500CFE7F0000566
      950000000000A4676900A4676900A4676900A4676900A4676900A4676900A467
      69000000000005669500D4EAF2000566950093460F00EEBF8200E98E35009346
      0F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB9A8200FFFFFF00FEF9F500FBF3
      EC00F4EBDF0085787C00EEB7B500DAA6A600C38E8E009E6E6E0073564F009383
      6B00996E6F000000000000000000000000000000000000000000000000000000
      0000000000000E80AA00C3E4EF000E80AA0000000000B7818300F1D4AA00B781
      8300000000000280AD00CCE8F1000E80AA000000000005669500B7DDEA000566
      950000000000A4676900FFEFCB00F6DAB000F3D09C00EEC78800F8D08200A467
      69000000000005669500C1E2EE000566950093460F005DD27000F7DAB7009346
      0F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB9A8200FFFFFF00FFFEFD00FDF8
      F400FBF3EC00F0E4D900A3797800E9B5B500D9A5A500C48F8F009D6D6D007759
      52008F6769000000000000000000000000000000000000000000000000000000
      0000000000000E80AA00B7E0EC000E80AA0000000000B7818300FAE7BF00B781
      8300000000000280AD00BEE3EF000E80AA000000000005669500A5D7E7000566
      950000000000A4676900FFEFCB00F6DAB000F3D09C00EEC78800F8D08200A467
      69000000000005669500AFDAEA000566950093460F0093460F0093460F009346
      0F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCA88700FFFFFF00FFFFFF00FFFE
      FD00FEF9F400FBF3EB00E8D9CE009E747300E8B5B500D8A4A400C18D8D009D6C
      6C007D5556000000000000000000000000000000000000000000000000000000
      0000000000000E80AA00BFE4F0000E80AA0000000000BA8E8500FCECCE00B781
      8300000000000180AD00C1E5F0000E80AA000000000005669500AADAEA000566
      950000000000A7756B00FCEFD900F3DDC100F0D4AD00EDCA9900F4CE8A00A467
      69000000000005669500AFDCEA00056695000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCA88700FFFFFF00FFFFFF00FFFF
      FF00FFFEFD00FDF9F400FBF3EB00E0CFC500A1767600ECB9B900D6A2A200C68E
      8E00965F5D00585C600000000000000000000000000000000000000000000000
      0000000000000E80AA0077BCD3000E80AA0000000000CB9A8200FFF3E000B781
      8300000000000683B0009BCFE1000E80AA00000000000768970077BBD3000566
      950000000000BC826800FFF8F200F8E7D700F4DDC100F2D3AD00FBD9A000A467
      6900000000000566950096CEE0000566950093460F0093460F0093460F009346
      0F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3B18E00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFEFD00FDF8F300FDF6EC00DAC5BC00AC808000F3BCBB00A387
      8C003392B30019ADCC0019ADCC00000000000000000000000000000000000000
      000000000000000000000E80AA000E80AA0000000000DCA88700FFFDF200B781
      8300000000000D81AC001585AE00000000000000000000000000056695000566
      950000000000D1926D00FFFFFF00FCF3ED00F8E7D400FAE3C600F0D9B100A467
      69000000000005669500056695000000000093460F00EEBF8200E98E35009346
      0F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3B18E00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFEFC00FFFEF900E3CFC900AA7A7100B2787300469C
      BA000FCAF40000A4E600021EAA00000099000000000000000000000000000000
      00000000000000000000000000000000000000000000E3B18E00F5EDE800B885
      7A00000000000000000000000000000000000000000000000000000000000000
      000000000000DA9D7500FFFFFF00FFFFFE00FEF8F200A56B5F00A56B5F00A56B
      5F000000000000000000000000000000000093460F005DD27000F7DAB7009346
      0F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDBD9200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4D4D200B8857A00DCA76A0010A5
      CF0004A8E6000936C900092CC3000318AE000000000000000000000000000000
      00000000000000000000000000000000000000000000EDBD9200CE9164000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7AB7900FFFFFF00FFFFFF00FFFFFF00A56B5F00C07849000000
      00000000000000000000000000000000000093460F0093460F0093460F009346
      0F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDBD9200FCF7F400FCF7F300FBF6
      F300FBF6F300FAF5F300F9F5F300F9F5F300E1D0CE00B8857A00CF9B86000000
      0000077DCD004860F100204ADD000416AA000000000000000000000000000000
      00000000000000000000000000000000000000000000DCA88700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7AB7900D1926D00D1926D00D1926D00A56B5F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDBD9200DCA88700DCA88700DCA8
      8700DCA88700DCA88700DCA88700DCA88700DCA88700B8857A00000000000000
      0000000000003E4BDB00192DC400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000262FA3001D20
      B500000000004B4B4B005B5B5B0087817B0087817B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002B90EF00278DE70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082776F005F61BC002126
      B20066605900A3A3A400FAFAFA00E3E0DC00D1CEC9009A97950082807E007874
      71005D5A58000000000000000000000000000000000000000000000000000000
      000000000000000000002A8FEC00278CED002489E4002388DD001E84D5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000975A700075C84000C6F9D00000000000000
      00000000000000000000000000000000000000000000AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A000000000000000000A89381007B75C4002024
      B200BA977500A3A3A400FFFFFF00FFFFFF00FFFFFD00D6D0CA00C8C0B800F6EB
      DD00EDE0D100A59B91006B686400000000000000000000000000000000000000
      000000000000298FD6003DA2EB003EA3F000379CEA002186DA001A81D100187E
      CA00157CC4001177BB0000000000000000000000000000000000000000000000
      000000000000000000000670A4003F9AB8006E533B001521260018769F000000
      000000000000000000000000000000000000DAA03900FFD19500EAB77700E4AE
      6700FFBD6000F1AE4F00DC9C3E00FCAA3200FFA92200FB9F1400FB9A0500FB98
      0000FB980100FC990000FF9F0000AE602A0000000000A89381007873C3002024
      B200B99B7E00A3A3A400FEFFFF00FFFFFF009F9FA00073717100353537007E7B
      7600FFF5E700FFF2E10087868500000000000000000000000000000000000000
      0000000000003CA2E10058BDF20060C4F9003D9EE50057BCF7003398DF001E83
      CD001076BC000B73B4000B72AF00086FAA000000000000000000000000000000
      0000000000000670A40031CDFF0050A8BF00FFDAA0007C5F45001B3B4C000000
      000000528600005286000000000000000000E7AC1D00EEC09300584E4400534A
      4100D39D5B00866A4600433E3900BA833800D5902F005043300054452F005243
      300055442B00624A2800F6970200AE602A0000000000A89483007873C5002024
      B300BAA18A00A3A3A400FEFFFF00FFFFFF00CACACC00F5F3F200FFFDF9003535
      3700F3EAE000FDF0E20087868500000000000000000000000000000000000000
      0000046B16004AB0F90053B7F7002F87D10063C7FB003D9EE5005BBFFB0055BA
      FA003499DE002D93D8000F76B300066DA7000000000000000000000000000670
      A4002FBFF00028ACDF0059D2FE0078C9E700E3BB8F00D7A87900283239001D7B
      AB0000528600005286000A587E0000000000E7AC1D00FFD0A000CAA27600C097
      6800FBBD6D00D69F5800B9884700EDA54000E9A14200AF7F5600C5853800E08D
      1200B6793700B97B3700FE9D0200AE602A0000000000A8978B007876CA002024
      B200BBA89600A3A3A400FEFFFF00FFFFFF00B3B3B40082828300A2A1A2003535
      3700F8F2EB00FDF2E9008786850000000000000000000000000000000000187D
      5F002B7A8300046B16002884DE003C99D900227BCE0040A0EA005ABEFE004FB2
      F50056B9FF0056B9FF0046AAF3000000000000000000000000000670A40043D0
      FE006CDEFF005CB4DB00AEDDF300F1FFFF00DEDBD5009B8873002C5F76005FBD
      E60065BFE000837561001716150004557F00E7AC1D00EDC2990060554C005C51
      4700D2A268008B704F004F463C00B5843F00977D92002E42DE006D64A100CA8A
      48003047D3003649CC00EB931700AE602A0000000000918984007779CF002024
      B200BCADA000A3A3A400FEFFFF00FFFFFF009A9A9B00353537007C7C7E00CCCC
      CB00FFFEFB00FCF6EF00878685000000000000000000000000000F7D15003CBE
      610031C6480031C6480031C64800046B1600046B16002D87B6003998E80044A5
      F00052B6FF0052B5FF0000000000000000000C7BAE002998C80077DDFF00A3E5
      FF00CFF1FF00DBF0F9005AA9C800B1D8E9008BCAE500379AC6001AABDA004AD0
      FF002EB8E700D0BE9D007C563900023B5700E7AC1D00FED1A200BC9B7800B391
      6C00FDC47F00D3A16500A17B4D00EFAA4D00E9A6570088739400C78D5500FEA3
      17009C746900A1745F00FE9D0100AE602A00000000008E888800787BD4002024
      B100BDB2A900A3A3A400FEFEFF00FFFFFF00BCBCBD0035353700353537003535
      3700FFFEFD00FCF9F5008786850000000000000000001587220031AF4A0062F9
      920050EB6F0031C648001DA746002398760031C6480031C64800046B1600046B
      160000000000000000000000000000000000086C9F000670A400CDEBF900FAFF
      FF00F2FCFF00DBF5FF0060BDE0000697C600008EBC000089B8000BA9D50034C7
      FA0033CFFF007EB8BF008B6B4C0001426200E7AC1D00E9BF970063584D005A51
      4900CDA574008A71550047413C00B38649009D839700263EE3006E66A500CE90
      4B003148D2003448CC00E3911E00AE602A00000000008E8C8E00787EDA002024
      B100B4B3B900A3A3A400FEFEFE00E9E9E900E2E2E200BCBCBC00A2A2A300DFDF
      E000FFFFFF00FCFBFB0087868500000000000000000030AD48002BA641004FE7
      780037D053001AB42700029D0100009B000010A41E0032B9720046A7AC000000
      0000000000000000000000000000000000000670A400BCDBEA000670A400A1D2
      E60093D9F70072DBFF0053D6FF0033C0F100189CCE00058CBC0000A0CB001FB5
      E40037CBFC0023B1E5001A668700025F8F00E7AC1D00FFD4A500FCC79400F5C1
      9000FFCF9200FEC07D00EFB06A00FFBD6100FFB74F00E3A45B00FCAB3C00FFAC
      2400EE9B2C00F2981B00FF9F0000AE602A00000000008E8F94007880DE002023
      B100B4B3B900A3A3A400FFFFFF00A5A5A500BBBBBB009F9FA000C6C6C700C5C5
      C600E2E2E300FEFEFE00878685000000000000000000000000000A7510002AAE
      3F0022BC3200049A0600009400000CA118000278040002780400000000000000
      000000000000000000000000000000000000000000000670A4000670A4000670
      A40026A1D20026ADE00031C2F50037C9FB0034C4F7002AB5E700128DBE000172
      A1000F7BAF00000000000000000000000000E7AC1D00F5CAA000E1DEC000E2E0
      C100DEDBBC00E1DCB900E3DAB100DED5A800E6D39F00FFBF5D00FCAB3C00F3A3
      3300F69F2000F89D1300FF9F0400AE602A00000000008E8F95007880DF002023
      B100B4B3B900A3A3A400FFFFFF00B9B9B900B3B3B400ACACAD00A8A8A900B9B9
      BA00E0E0E100FFFFFF0087868500000000000000000000000000259E390042DC
      64000B9F110000770000027804000B8717000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E85B8000C7EB2001393C5000B8DC000006C9F00000000000000
      000000000000000000000000000000000000E7AC1D00D4AF8C006BD3CA006CD7
      CE006CD7CE006CD7CF006CD7CF0066D7D1008DE0D900FCC57B00CA8D3D00B581
      3900AD7A3100C1822500FFA20B00AE602A0000000000909197007B83E2002023
      B000B6B5B600A3A3A400FFFFFF0079797900E1E2E200FBFBFC00EDEDED00B9B9
      B900DBDBDC00FFFFFF008786850000000000000000001D912C0044DE68000FA3
      1500006F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFB53E00F8C9A200D1AC8600D1AD
      8600D1AD8600D1AC8500D1AA7B00CFA46E00DCAB6B00FFBD6A00F6AF5200FCAF
      4600E79D3700F3A02800FFA71600AE602A000000000083848A00646AD2001D23
      BA006F7191009E9DAF00BBB9BC007F7D73008D8C8800EDEAE000E7E7E3006465
      620090909000FFFFFF00878685000000000013831D0043D9640012AB1C000073
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4A70A00EDB33900F0B8
      4D00EEB64D00E9B24D00F2BA6200F2B65A00EEB04F00EAA94500E9A43A00E79F
      3100E89B2700E6971F00D2851A00000000000000000000000000414163002E31
      7D00303483003F4393003A3D94004042960044446000565599006D689300736E
      88005E5B6100918D8A0061616100000000001C9A2A001AB12700007900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004B4B4B00000000003B3D62004B4B4B0037376500000000003333
      83003838650014147700000000000000000018A02400027F0400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004B4B4B004B4B4B0000000000000000004B4B4E004C4C
      4C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C260000602F0000723800007238000062300000502800000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000033140000451B00005722000057220000471C0000361600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000130020001410300025104000251040001430300013302000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000104C0000146000001872000018720000146200001150000000
      0000000000000000000000000000000000000000000000000000000000006431
      000064310000984B0000B85B0000BC5D0000BC5D0000BA5C00009C4D00006C35
      00006C350000000000000000000000000000000000000000000000000000491C
      0000491C000080320000A5410000AA420000AA420000A741000084340000511F
      0000511F00000000000000000000000000000000000000000000000000000145
      03000145030003780800039C0B00039F0C00039F0C00039D0C00027E0900014D
      0400014D04000000000000000000000000000000000000000000000000000015
      640000156400002098000026B8000027BC000027BC000027BA0000209C000016
      6C0000166C000000000000000000000000000000000000000000743900008843
      0000C05F0000C2600000BC5D0000B85B0000BC5D0000BC5D0000C05F0000C260
      00008A4400005028000000000000000000000000000000000000592300006E2B
      0000AF440000B1450000AA420000A5410000AA420000AA420000AF440000B145
      0000702C00003616000000000000000000000000000000000000034F09000365
      090004A30D0003A60C0003A00B00029E0A00039F0C0003A00C0003A50C0003A6
      0C0002690600013402000000000000000000000000000000000000187400001C
      88000028C0000028C2000027BC000026B8000027BC000027BC000028C0000028
      C200001D8A00001150000000000000000000000000007439000094490000D268
      0000C8630000BC5D0000B85B0000EDD6C000FFFFFF00CE8B4A00BA5C0000BC5D
      0000C26000008A4400006C3500000000000000000000592300007B300000C54D
      0000B8480000AA420000A5410000E7CAAF00FFFFFF00C0723100A7410000AA42
      0000B1450000702C0000511F00000000000000000000044F0900066B11000AAB
      1F0007A41500049E0D00029D0A00B1E6B600FFFFFF0036B84100039E0C0003A0
      0C0003A70C00026A0600024C0400000000000000000000187400001F9400002C
      D200002AC8000027BC000026B800C0C9ED00FFFFFF004A66CE000027BA000027
      BC000028C200001D8A0000166C00000000000000000074390000DE6E0000D86B
      0000CA640000BC5D0000BA5C0000EDD5BE00FFFFFF00CE8C4B00BA5C0000BA5C
      0000BC5D0000C26000006C350000000000000000000059230000D4530000CC50
      0000BB490000AA420000A7410000E7C9AC00FFFFFF00C0733200A7410000A741
      0000AA420000B1450000511F00000000000000000000044F090010AC30000DAB
      280009A41C00039E0F00039E0C00AFE5B400FFFFFF0037BA4200039E0C00039E
      0C00039F0C0003A70C00024C0400000000000000000000187400002EDE00002D
      D800002ACA000027BC000027BA00BEC8ED00FFFFFF004B67CE000027BA000027
      BA000027BC000028C20000166C00000000007A3C0000B4590000F0770000D86B
      0000C2600000BE5E0000BA5C0000EDD5BD00FFFFFF00CE8B4A00BA5C0000BA5C
      0000BA5C0000C05F00009C4D0000602F00005F250000A03F0000EB5C0000CC50
      0000B1450000AC430000A7410000E7C9AB00FFFFFF00C0723100A7410000A741
      0000A7410000AF44000084340000451B0000035706000D82230017B641000EA9
      2D0005A01300049F0D00039E0C00ADE5B200FFFFFF0036B84100039E0C00039E
      0C00039E0C0003A50C00037B08000142030000197A000025B4000032F000002D
      D8000028C2000027BE000027BA00BDC7ED00FFFFFF004A66CE000027BA000027
      BA000027BA000028C00000209C00001460007A3C0000E06F0000F0770000DE6E
      0000CA742000BE620800BE5E0000EED5BD00FFFFFF00CE8B4A00BA5C0000C372
      2200BE650E00BE5E0000B2580000602F00005F250000D7540000EB5C0000D453
      0000BB591000AC470300AC430000E9C9AB00FFFFFF00C0723100A7410000B257
      1100AC4A0500AC4300009E3E0000451B00000357060017A3410018B54A0011AB
      340019AB270007A01100049F0D00AFE5B200FFFFFF0036B84100039E0C0017AA
      22000AA3140003A10C0003960A000142030000197A00002FE0000032F000002E
      DE002043CA00082EBE000027BE00BDC7EE00FFFFFF004A66CE000027BA002244
      C3000E33BE000027BE000025B2000014600090470000F87B0000FA7C0000FA7C
      0000FCEDDE00F3C49600EA740000F9D9B900FFFFFF00C9823C00CE8B4900FCF9
      F500E8C9AA00BC5D0000BC5D00006A340000772E0000F6600000F8620000F862
      0000FBE7D400EFB47E00E3590000F7CEA600FFFFFF00BA682500C0723000FBF7
      F200E1BA9500AA420000AA4200004F1F000006680D0021B151001EB7510020B5
      4F00DCF4E2008FDCA10017AF3900B5E9C200FFFFFF0029B2340035B84000F2FB
      F30098DD9E0003A00C00039F0C00014A0400001E90000034F8000034FA000034
      FA00DEE4FC0096A9F3000031EA00B9C6F900FFFFFF003C59C9004965CE00F5F7
      FC00AAB7E8000027BC000027BC0000166A00A04F0000FF912500FF840B00FC7D
      0000FFF6ED00FFFFFF00FFC38900FFDDBC00FFFFFF00DFAF8000F7EDE300FFFF
      FF00E2BA9300BE5E0000BC5D00007238000089350000FF781300FF6A0400FB63
      0000FFF3E700FFFFFF00FFB26F00FFD3AA00FFFFFF00D59A6600F4E7DA00FFFF
      FF00D9A77A00AC430000AA42000057220000087412003EBD69002ABA5C0021B5
      5300EDFAF200FFFFFF008CDDAB00BCEBCF00FFFFFF006BCE7500DCF4DE00FFFF
      FF007FD4870003A00C00039F0C00025205000021A0002552FF000B3EFF000034
      FC00EDF1FF00FFFFFF0089A2FF00BCCAFF00FFFFFF008093DF00E3E7F700FFFF
      FF0093A4E2000027BE000027BC0000187200A04F0000FF9F4100FF983300F479
      0000FDAC5D00FFFBF700FFFEFD00FFFBF800FFFEFD00FEFCFA00FFFFFF00E9B9
      8A00D16A0500C8630000B85B00006632000089350000FF882900FF801E00F05E
      0000FC974200FFFAF400FFFEFC00FFFAF600FFFEFC00FEFBF800FFFFFF00E2A6
      7000C44F0100B8480000A54100004B1D000006780E0054C57A0044C674001CB2
      4E0066CF8C00F7FCF800FCFFFE00F7FCFA00FCFEFE00FAFEFA00FFFFFF007DD4
      8E000EA6260007A51800039D0C00014603000021A0004168FF00335DFF000033
      F4005D7EFD00F7F9FF00FDFDFF00F8F9FF00FDFDFF00FAFBFE00FFFFFF008A9E
      E900052FD100002AC8000026B80000156600A04F0000FF983300FFBF8100FF7E
      0000F2780000FDA85400FFFAF600FFFFFF00FFFFFF00FFFFFF00EFC09200DA6D
      0200D2680000CA640000AA5400006632000089350000FF801E00FFAD6700FF64
      0000EE5D0000FC923A00FFF8F300FFFFFF00FFFFFF00FFFFFF00EAAF7900CF52
      0000C54D0000BB490000953A00004B1D000006780E004CBD690083DDA70022B6
      55001CB24E005FCC8700F6FCF800FFFFFF00FFFFFF00FFFFFF0088D99D0010AB
      2F000CA6270006A71600038C0A00014603000021A000335DFF00819BFF000035
      FF000032F2005477FD00F6F8FF00FFFFFF00FFFFFF00FFFFFF0092A5EF00022F
      DA00002CD200002ACA000023AA000015660000000000EC750000FFD3A900FFAD
      5D00E8730000F0770000FDA75200FFF8F200FFFFFF00F6CCA300DA6D0200D66A
      0000CE660000D46900008E4600000000000000000000E65A0000FFC69300FF98
      4200E1580000EB5C0000FC913800FFF6EE00FFFFFF00F3BD8C00CF520000CA4F
      0000C04B0000C74E0000752D0000000000000000000021A33600AAE7C50068D0
      8E0016AF48001BB14C005DCC8600F2FBF600FFFFFF009DE1B20011AA32000EA7
      29000BA4200009AF1C00036B0A0000000000000000000031EC00A9BBFF005D7F
      FF000030E8000032F0005275FD00F2F5FF00FFFFFF00A3B4F600022FDA00002C
      D600002BCE00002CD400001E8E000000000000000000EC750000FFA04300FFE3
      C700FFAC5B00FA7C0000EE760000FCB26A00FEDCBA00EC811800E2700000DE6E
      0000E06F0000C46100008E4600000000000000000000E65A0000FF892B00FFDA
      B700FF974100F8620000E95B0000FB9E4F00FED1A700E6670B00D9550000D453
      0000D7540000B4460000752D0000000000000000000021A3360056C57300C5F0
      D80066CF8C0020B4520019B14C0070D39500BAEACC0026B7540013AC3C0012AA
      34000FB02D000A991F00036B0A0000000000000000000031EC00436AFF00C7D3
      FF005B7DFF000034FA000031EE006A88FC00BAC8FE001844EC00002FE200002E
      DE00002FE0000029C400001E8E00000000000000000000000000D2680000FFAD
      5D00FFE9D300FFCA9700FF9E3F00FF8E1F00FF850D00FF881300FF881300FF81
      0500D66A00008A44000000000000000000000000000000000000C54D0000FF98
      4200FFE2C600FFBB7F00FF872800FF750F00FF6B0500FF6E0800FF6E0800FF67
      0100CA4F0000702C000000000000000000000000000000000000139923006ACC
      8800D0F4E3009AE1B60050C77A0038BD67002CBA5D0030BB60002FBC5D0023BC
      4F0011A3300006620F0000000000000000000000000000000000002CD2005D7F
      FF00D3DCFF0097ADFF003F67FF001F4EFF000D3FFF001344FF001344FF000539
      FF00002CD600001D8A000000000000000000000000000000000000000000FF98
      3300FF983300FFC99500FFDFBF00FFD2A700FFC58D00FFB87300FF9B3900E06F
      0000E06F0000000000000000000000000000000000000000000000000000FF80
      1E00FF801E00FFBA7D00FFD5AD00FFC59100FFB57400FFA55800FF832300D754
      0000D75400000000000000000000000000000000000000000000000000004BBF
      67004BBF670098E1B500BDEED400A7E7C40090E0B10078D99F0049C779001B9D
      3D001B9D3D00000000000000000000000000000000000000000000000000335D
      FF00335DFF0095ABFF00BFCCFF00A7B9FF008DA5FF007390FF003962FF00002F
      E000002FE0000000000000000000000000000000000000000000000000000000
      000000000000E8730000FF8A1700FF952D00FF912500FC7D0000C66200000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1580000FF700A00FF7D1900FF781300FB630000B64700000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001DA4350038B4540046BC660042B863002BA64900138C2A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000030E8001747FF002D59FF002552FF000034FC000029C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000427000003320000023F0000023F0000033300000429000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000033140000451B00005722000057220000471C0000361600000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000104C0000146000001872000018720000146200001150000000
      0000000000000000000000000000000000000000000000000000000000000004
      390000043900000164000000870000008C0000008C0000008900000066000003
      3B0000033B00000000000000000000000000000000000000000000000000491C
      0000491C000080320000A5410000AA420000AA420000A741000084340000511F
      0000511F00000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000000015
      640000156400002098000026B8000027BC000027BC000027BA0000209C000016
      6C0000166C000000000000000000000000000000000000000000000344000002
      5400000091000000930000008C000000870000008C0000008C00000091000000
      9300000154000003260000000000000000000000000000000000592300006E2B
      0000AF440000B1450000AA420000A5410000AA420000AA420000AF440000B145
      0000702C000036160000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D06000000000000000000000000000000000000187400001C
      88000028C0000028C2000027BC000026B8000027BC000027BC000028C0000028
      C200001D8A0000115000000000000000000000000000000A560000015F000000
      A70000009A0000008C0000008700000087000000890000008900000089000000
      8C00000093000001540000033B000000000000000000592300007B300000C54D
      0000B8480000AA420000A5410000A5410000A7410000A7410000A7410000AA42
      0000B1450000702C0000511F000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C00000000000000000000187400001F9400002C
      D200002AC8000027BC000026B8000026B8000027BA000027BA000027BA000027
      BC000028C200001D8A0000166C000000000000000000000A56000000B6000000
      AE0000009D0000008C002C45B000E7EBF800D4DAF300000C9400000089000000
      890000008C000000930000033B00000000000000000059230000D4530000CC50
      0000BB490000AA420000B2551000F3E3D400F8EFE700C67F4200A7410000A741
      0000AA420000B1450000511F000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000000000000000187400002EDE00002D
      D800002ACA000027BC002042C300DEE3F600EDF0FA005D76D3000027BA000027
      BA000027BC000028C20000166C0000000000000A5A00000489000000CD000000
      AE00000093001F38AB00F4F6FC00FFFFFF007385CF0000008C00000089000000
      8900000089000000910000006600000435005F250000A03F0000EB5C0000CC50
      0000B1450000AC430000AA460300DAAA7E00FFFFFF00FCF8F400C4793A00A741
      0000A7410000AF44000084340000451B0000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D090000197A000025B4000032F000002D
      D8000028C2000027BE00082EBC0096A6E300FFFFFF00F7F8FD00546ED1000027
      BA000027BA000028C00000209C0000146000000142000000B9000000CD000000
      B6001C36AE00F3F4FC00FCFCFE006175C9000000890000008900000089000000
      89000000890000008E0000008000000332005F250000D7540000EB5C0000D453
      0000B1450000AA420000AC430000AA420000D5A06F00FEFEFC00FCF7F300C277
      3800A7410000AC4300009E3E0000451B0000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D090000197A00002FE0000032F000002E
      DE000028C2000027BC000027BE000027BC00899BDF00FDFDFE00F6F7FD00526C
      D0000027BA000027BE000025B20000146000000059000001D8000002DB00405F
      EC00EEF0FE00FFFFFF00F6F7FE00A8B8F500A4B4F400A9B5E500A9B5E500ABB7
      E600AEBAE80000008C0000008C0000033900772E0000F6600000F8620000FED5
      AF00F8D1AC00F4CFAB00F8D0AB00F7CEA600F6CFAA00FCF8F600FFFFFF00FAF4
      EE00CB894F00AA420000AA4200004F1F00000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00001E90000034F8000034FA00C0CD
      FE00BECAFA00BDC9F700BDCAFA00B9C6F900BCC8F800F8F9FD00FFFFFF00F2F4
      FB006A81D7000027BC000027BC0000166A0000006B00011BE2000009E1009CAD
      F300FFFFFF00FFFFFF00FCFCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000008E0000008C0000023F0089350000FF781300FF6A0400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFC00FFFFFF00FFFF
      FF00E6C6A700AC430000AA42000057220000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000021A0002552FF000B3EFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFE00FFFFFF00FFFF
      FF00BAC5EC000027BE000027BC000018720000006B00193DEF000125E200000F
      D4007D94EF00FFFFFF00F8FAFF006682FB000A2AC7001835BE001835BC001531
      B7001431B70000009A00000087000003360089350000FF882900FF801E00F489
      3100FC8C3200FC8C3100FC8C3100F8822500EDA56600FEFBF800FFFFFF00E9B8
      8C00C75A0B00B8480000A54100004B1D00000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000021A0004168FF00335DFF004A6E
      F7004B70FD004A6FFD004A6FFD003C64FA008097F100FAFBFE00FFFFFF00A3B3
      EE00183FD400002AC8000026B8000015660000006B001539F6006581FD000007
      E7000001D0006881ED00FFFFFF00DAE2FF001839D7000000B6000000B1000000
      B1000000A70000009D000000770000043A0089350000FF801E00FFAD6700FF64
      0000EE5D0000FB630000FB630000FC8B3000FCEBDA00FFFFFF00EAAF7900CF52
      0000C54D0000BB490000953A00004B1D00000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000021A000335DFF00819BFF000035
      FF000032F2000034FC000034FC00496EFD00E3E8FD00FFFFFF0092A5EF00022F
      DA00002CD200002ACA000023AA0000156600000000000007CF0093A9FF00385B
      F5000000C3000001CD005D78EB00FFFFFF00F2F4FF000015C4000000B1000000
      AC000000A2000000A900000159000000000000000000E65A0000FFC69300FF98
      4200E1580000EB5C0000FB751100FFF8F200FFFFFF00F0AC7000CF520000CA4F
      0000C04B0000C74E0000752D0000000000000000000037B65000BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000031EC00A9BBFF005D7F
      FF000030E8000032F000224FFC00F5F7FF00FFFFFF008AA0F400022FDA00002C
      D600002BCE00002CD400001E8E0000000000000000000009D2001C40F000B7C6
      FF003355F1000004DD000001CB006982EB0091A5FA000007C7000000BB000000
      B6000000B90000009600000159000000000000000000E65A0000FF892B00FFDA
      B700FF974100F8620000EA640500FCC69500FEB87A00E35C0100D9550000D453
      0000D7540000B4460000752D0000000000000000000037B6500071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000031EC00436AFF00C7D3
      FF005B7DFF000034FA000E3CEF00AABBFD0093A9FE000535EA00002FE200002E
      DE00002FE0000029C400001E8E000000000000000000000000000000A8003255
      EF00C6D1FF007992F9000C30E3000017E100010FE6000113E6000113E600000A
      E6000000AC000001540000000000000000000000000000000000C54D0000FF98
      4200FFE2C600FFBB7F00FF872800FF750F00FF6B0500FF6E0800FF6E0800FF67
      0100CA4F0000702C00000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000002CD2005D7F
      FF00D3DCFF0097ADFF003F67FF001F4EFF000D3FFF001344FF001344FF000539
      FF00002CD600001D8A000000000000000000000000000000000000000000082C
      E900082CE9007790F900ADBDFF008CA1FA006782F2004362EA000529E1000000
      B9000000B900000000000000000000000000000000000000000000000000FF80
      1E00FF801E00FFBA7D00FFD5AD00FFC59100FFB57400FFA55800FF832300D754
      0000D754000000000000000000000000000000000000000000000000000066CD
      810066CD8100ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB15700000000000000000000000000000000000000000000000000335D
      FF00335DFF0095ABFF00BFCCFF00A7B9FF008DA5FF007390FF003962FF00002F
      E000002FE0000000000000000000000000000000000000000000000000000000
      0000000000000000C3000010E1000021E100001AE1000001DD00000098000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1580000FF700A00FF7D1900FF781300FB630000B64700000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0052C46F0061CB80005DC87D0043B9640024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000030E8001747FF002D59FF002552FF000034FC000029C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000130020001410300025104000251040001430300013302000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000104C0000146000001872000018720000146200001150000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C260000602F0000723800007238000062300000502800000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000145
      03000145030003780800039C0B00039F0C00039F0C00039D0C00027E0900014D
      0400014D04000000000000000000000000000000000000000000000000000015
      640000156400002098000026B8000027BC000027BC000027BA0000209C000016
      6C0000166C000000000000000000000000000000000000000000000000006431
      000064310000984B0000B85B0000BC5D0000BC5D0000BA5C00009C4D00006C35
      00006C3500000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000034F09000365
      090004A30D0003A60C0003A00B00029E0A00039F0C0003A00C0003A50C0003A6
      0C0002690600013402000000000000000000000000000000000000187400001C
      88000028C0000028C2000027BC000026B8000027BC000027BC000028C0000028
      C200001D8A000011500000000000000000000000000000000000743900008843
      0000C05F0000C2600000BC5D0000B85B0000BC5D0000BC5D0000C05F0000C260
      00008A44000050280000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000044F0900066B11000AAB
      1F0007A41500049E0D00029D0A0054C45C00AAE3B00010A61B00039E0C0003A0
      0C0003A70C00026A0600024C0400000000000000000000187400001F9400002C
      D200002AC8000027BC000026B8006A80D600BAC5EC00183BC0000027BA000027
      BC000028C200001D8A0000166C0000000000000000007439000094490000D268
      0000C8630000BC5D0000B85B0000B85B0000BA5C0000BA5C0000BA5C0000BC5D
      0000C26000008A4400006C35000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C000000000000000000044F090010AC30000DAB
      280009A41C00039E0F003EBC4800EEFAEF00FFFFFF0090DA9700049F0D00039E
      0C00039F0C0003A70C00024C0400000000000000000000187400002EDE00002D
      D800002ACA000027BC00526CD000F2F4FB00FFFFFF00A3B1E6000229BB000027
      BA000027BC000028C20000166C00000000000000000074390000DE6E0000D86B
      0000CA640000BC5D0000D3975D00FAF3ED00F6EADE00C3702000BA5C0000BA5C
      0000BC5D0000C26000006C35000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0063CE6D00EEFAEF00DFF5E10028BC360009B2190009B2
      190009B3190009BA1A0006670C0000000000035706000D82230017B641000EA9
      2D0005A0130041BD4B00F3FBF400FFFFFF00FFFFFF00FFFFFF007ED48600049F
      0D00039E0C0003A50C00037B08000142030000197A000025B4000032F000002D
      D8000028C200546ED300F6F7FD00FFFFFF00FFFFFF00FFFFFF0092A3E2000229
      BB000027BA000028C00000209C00001460007A3C0000B4590000F0770000D86B
      0000C2600000D3935400FDFAF700FFFFFF00E3BC9600BC610800BA5C0000BA5C
      0000BA5C0000C05F00009C4D0000602F0000087210001B9A3A002AC65B001DBB
      45000EB425005BCC6600F7FDF800FFFFFF009ADFA00011B4200009B2190009B2
      190009B2190009B81A0008941300045D09000357060017A3410018B54A0011AB
      34004CC15800F4FCF600FCFEFC00F6FCF700FCFEFC00F8FCF800FFFFFF0075D1
      7D0005A00F0003A10C0003960A000142030000197A00002FE0000032F000002E
      DE005D76D800F7F8FD00FDFDFE00F8F9FD00FDFDFE00FAFBFE00FFFFFF008A9C
      DF00052BBB000027BE000025B200001460007A3C0000E06F0000F0770000DE6E
      0000D6935200FDF9F600FEFEFD00E0B48900BA5C0000BA5C0000BA5C0000BA5C
      0000BA5C0000BE5E0000B2580000602F0000087210002AB65B002CC5650022BD
      4D005CCC6900F6FCF700FDFEFD008EDB950009B21A0009B2190009B2190009B2
      190009B2190009B51A0008AB1700045D090006680D0021B151001EB7510020B5
      4F00EBF8EF00FFFFFF0084D99A00B7E9C500FFFFFF0069CC7200DCF4DE00FFFF
      FF007FD4870003A00C00039F0C00014A0400001E90000034F8000034FA000034
      FA00EDF0FE00FFFFFF0089A0F500BCC9F900FFFFFF008093DC00E3E7F700FFFF
      FF0093A4E2000027BC000027BC0000166A0090470000F87B0000FA7C0000FCB2
      6A00FEF8F200FFFFFF00FEFBF800F9DABC00F8D8B900EDD5BD00EDD5BD00EDD5
      BE00EED7C000BC5D0000BC5D00006A3400000F821C0037C26C0033C76C008ADD
      A800F4FCF600FFFFFF00F9FDFA00C7EED200C4EDCC00BFEBC300BFEBC300C0EB
      C400C2ECC60008B4190009B3190005650B00087412003EBD69002ABA5C0021B5
      5300DEF6E70098E1B40022B65500BAEBCE00FFFFFF002CB5370035B84100F2FB
      F30098DD9E0003A00C00039F0C00025205000021A0002552FF000B3EFF000034
      FC00DEE5FF0096ACFF000035FF00B9C8FF00FFFFFF003C5ACD004965CE00F5F7
      FC00AAB7E8000027BE000027BC0000187200A04F0000FF912500FF840B00FEDC
      BA00FFFFFF00FFFFFF00FFFEFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BE5E0000BC5D000072380000138D230058CC830042C97700C9EF
      D800FFFFFF00FFFFFF00FDFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000AB41A0009B31900066D0D0006780E0054C57A0044C674001CB2
      4E0036BD660026B7580022B55400BBEBCC00FFFFFF0041C05B000CA6270021B0
      390013AA2C0007A51800039D0C00014603000021A0004168FF00335DFF000033
      F400204DFC00083AFC000034FC00BDCAFD00FFFFFF004A69E000002CD2002247
      D6000E37D300002AC8000026B80000156600A04F0000FF9F4100FF983300F586
      1800FED0A300FFFFFF00FFFCFA00FCBD8000E9923C00E0954A00DF944A00DE94
      4B00DE934A00C8630000B85B0000663200000F911D006FD293005FD38D0044C9
      7700B7EACB00FFFFFF00FBFEFC009AE2B40058CD79005CCE76005CCD76005CCD
      73005BCD720011B82B0008B1190005610A0006780E004CBD690083DDA70022B6
      55001CB24E0022B5540022B55400BCEBCE00FFFFFF0046C267000FAA30000FAA
      2E000CA6270006A71600038C0A00014603000021A000335DFF00819BFF000035
      FF000032F2000034FC000034FC00BDCAFE00FFFFFF004A6BE800002DDA00002D
      DA00002CD200002ACA000023AA0000156600A04F0000FF983300FFBF8100FF7E
      0000F2790200FEC79200FFFFFF00FFF1E300F39D4900DE6E0000DA6C0000DA6C
      0000D2680000CA640000AA540000663200000F911D0067CC83009BE5BA0038C6
      700032C36A00AAE6C100FFFFFF00E9F9EF006AD38E0021BD4D001EBC49001EBC
      47001AB93E0010BA290008A3170005610A000000000021A33600AAE7C50068D0
      8E0016AF48001BB14C0022B55400BDEBCF00FFFFFF004CC56F0010A931000EA7
      29000BA4200009AF1C00036B0A0000000000000000000031EC00A9BBFF005D7F
      FF000030E8000032F0000034FC00BECBFE00FFFFFF004B6DED00002DDA00002C
      D600002BCE00002CD400001E8E000000000000000000EC750000FFD3A900FFAD
      5D00E8730000F0780200FEC38A00FFFFFF00FFFAF500E9852200DA6C0000D66A
      0000CE660000D46900008E460000000000000000000037B65000BCEDD20082DB
      A40028C0630031C26800A4E4BD00FFFFFF00F7FDF90045C86E0020BB4A001DBA
      410018B7360014C030000A851700000000000000000021A3360056C57300C5F0
      D80066CF8C0020B4520019B14C00BFEDD000FFFFFF004CC6750013AC3C0012AA
      34000FB02D000A991F00036B0A0000000000000000000031EC00436AFF00C7D3
      FF005B7DFF000034FA000031EE00C0CDFE00FFFFFF004A6DF000002FE200002E
      DE00002FE0000029C400001E8E000000000000000000EC750000FFA04300FFE3
      C700FFAC5B00FA7C0000EE790500FDC89300FED4AA00EB7C0E00E2700000DE6E
      0000E06F0000C46100008E460000000000000000000037B6500071D28C00D2F4
      E10080DAA30036C46D0031C36A00AAE6C100BDECCF0035C4690024BE560023BC
      4D001FC1460016AE34000A851700000000000000000000000000139923006ACC
      8800D0F4E3009AE1B60050C77A0038BD67002CBA5D0030BB60002FBC5D0023BC
      4F0011A3300006620F0000000000000000000000000000000000002CD2005D7F
      FF00D3DCFF0097ADFF003F67FF001F4EFF000D3FFF001344FF001344FF000539
      FF00002CD600001D8A0000000000000000000000000000000000D2680000FFAD
      5D00FFE9D300FFCA9700FF9E3F00FF8E1F00FF850D00FF881300FF881300FF81
      0500D66A00008A4400000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000000000004BBF
      67004BBF670098E1B500BDEED400A7E7C40090E0B10078D99F0049C779001B9D
      3D001B9D3D00000000000000000000000000000000000000000000000000335D
      FF00335DFF0095ABFF00BFCCFF00A7B9FF008DA5FF007390FF003962FF00002F
      E000002FE000000000000000000000000000000000000000000000000000FF98
      3300FF983300FFC99500FFDFBF00FFD2A700FFC58D00FFB87300FF9B3900E06F
      0000E06F000000000000000000000000000000000000000000000000000066CD
      810066CD8100ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000000000000000
      0000000000001DA4350038B4540046BC660042B863002BA64900138C2A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000030E8001747FF002D59FF002552FF000034FC000029C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8730000FF8A1700FF952D00FF912500FC7D0000C66200000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0052C46F0061CB80005DC87D0043B9640024A342000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000E00000000100010000000000000700000000000000000000
      000000000000000000000000FFFFFF009FFF0000000000000FFF000000000000
      07FF00000000000083FF000000000000C1FF000000000000E10F000000000000
      F003000000000000F801000000000000F801000000000000F800000000000000
      F800000000000000F800000000000000F801000000000000FC01000000000000
      FE03000000000000FF0F0000000000008000F81FE07FFFFF0000E007C01F07FF
      0000C003C00F007F0000C003C007000000008001C007000000008001C0078000
      00008001C007C18100008001C007810100008001E00700000000C003FC070000
      0000C003FF9F00000000E007F39F00000000F00FF39F81810000FC3FF39FC3C3
      0000F81FF83FFFFF0000F81FFC7FFFFFC001FFBFFFFFC001C001FF9FFFFF8000
      C001F00F08008000C001F00708008000C001F00F08008000C001838008008000
      C00103A0FFFF8000C00103E0E7FF8000C00103E0C1F98000C00103E0C1F18000
      C001001F83E38000C001001F80078000C001001FE00F8000C003001FF01F8000
      C007001FFC3F8000C00F803FFFFFC001FDC7FDC7FFFFFFFFF003F003F03FF1FF
      C001C001E007E1FF00010001E003C3FF00010001C003860000010001C0038E00
      00010001C0030E0080018001C0031FC0C001C00380011F80E005E00780010F00
      F000F00F80010018F03FF03F80018038F021F03F8001C078F029F03F8001E0F8
      E02DE03FFF81FFFFE060E07FFFE3FFFFC7FFFFF9FFFFFE3F007FFFF1FE7FE007
      000FFFE1FC3FE007000FFFC3FC3F8003000F0000FC3F800100070000FC3F8001
      00000000C00380018000000080018001800100008001800180030000C003C003
      80070000FC3FE007800F0000FC3FF81FC01F0000FC3FF81FC03F0000FC3FF81F
      E07F0000FE7FF81FFFFF0000FFFFFC3FF000F000FFFFFFFFF000F00080018181
      F000F00080018181C000C00080018181C000C00080018181C000C00080018181
      00000000FFFF8181000000003FFC818100000000FFFF81810001000180018181
      000300038001818100030003800181810007000780018181000F000F80018181
      000F000FFFFF8181801F801F3FFC7E7EFF80FF7FFF80FFFFFF80FE7FFFFFE07F
      FF80FC03FF80C01FFF80F803FF80C00FFF80FC03FF80C007FF808260FF80C007
      FF800360FF80C007008103E00180C007008203E0FF80C00700DE03E001FFC007
      009C001F01FFE00F0000001F01FFF21F0001001F01FFF39F0003001F01FFF13F
      019F001F01FFF83F03DF803F01FFFFFFFFFFFFFFF81FF00000000000E007F000
      00000000C0030000000000008001000000000000800100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000080010000000000008001800080018001C003F000
      FFFFFFFFE007F000FFFFFFFFF81FF801FFFFFE7FFF80FFFF0007F07FFF8083FF
      0007C001FF80BC8F0007C001FF80C0030007C001FF80C0010007C001FF808003
      0007C001FF8000030007C001008100030007C001008300070007C00100E3100F
      0003C00100C1F03F0001C0010080F03F0000C00100E3F03F0000C00100E3E07F
      0010F00101C3E07F0039FC7F0307FFFFFFFFFFFFFFFFFFFF3E0323E30FFF0007
      140302A308010007000300030FFF00070A0301430FFF00073C7103E1FFFF0007
      F8F88FF00FFF0007F888880808010007F88888080FFF0007F88888080FFF0007
      F8888808FFFF0003F88888080FFF0001FC89C80908010000FF8FF80F0FFF0000
      FF9FF81F0FFF0010FFBFF83FFFFF0039FFFFFFFFC87FFE7FFFFFFFFF8007FC1F
      FE3F80018001F803FC1F00008001F800F81300008001F000E00100008001E001
      C00000008001C003000000008001800F000000008001801F000000008001C03F
      800700008001C0FFF83F0000800187FFFFFF000080010FFFFFFF8001C0011FFF
      FFFFFFFFFA233FFFFFFFFFFFFCCFFFFFF81FF81FF81FF81FE007E007E007E007
      C003C003C003C003800180018001800180018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080018001800180018001800180018001C003C003C003C003
      E007E007E007E007F81FF81FF81FF81FF81FF81FF81FF81FE007E007E007E007
      C003C003C003C003800180018001800180018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080018001800180018001800180018001C003C003C003C003
      E007E007E007E007F81FF81FF81FF81FF81FF81FF81FF81FE007E007E007E007
      C003C003C003C003800180018001800180018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080018001800180018001800180018001C003C003C003C003
      E007E007E007E007F81FF81FF81FF81F00000000000000000000000000000000
      000000000000}
  end
  object qTroca: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' PDV.ID_PDV,'
      ' PDV.NR_ORCAMENTO,'
      ' PDV.ID_LOJA,'
      ' PDV.ID_GRUPO,'
      ' PDV.DT_ORCAMENTO,'
      ' PDV.VL_ORCAMENTO,'
      ' PDV.VL_DESCONTO,'
      ' PDV.VL_LIQUIDO,'
      ' PDV.STATUS,'
      ' PDV.TRANSF,'
      ' PDV.NOME_CLIENTE,'
      ' PDV.CPF_CLIENTE,'
      ' PDV.ID_VENDEDOR,'
      ' PDV.ID_USUARIO,'
      ' PDV.CAIXA,'
      ' PDV.HR_ORCAMENTO,'
      ' PDV.MODALIDADE,'
      ' V.NOME'
      'FROM'
      ' TB_PDV PDV'
      'JOIN TB_VENDEDOR V ON (V.ID_VENDEDOR = PDV.ID_VENDEDOR)'
      'WHERE'
      ' PDV.STATUS = '#39'T'#39
      'AND PDV.CAIXA = :CAIXA')
    SQLConnection = DM.ConexaoLocal
    Left = 440
    Top = 231
    object qTrocaID_PDV: TIntegerField
      FieldName = 'ID_PDV'
      Required = True
    end
    object qTrocaNR_ORCAMENTO: TIntegerField
      FieldName = 'NR_ORCAMENTO'
      Required = True
    end
    object qTrocaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
      Required = True
    end
    object qTrocaID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Required = True
    end
    object qTrocaDT_ORCAMENTO: TDateField
      FieldName = 'DT_ORCAMENTO'
    end
    object qTrocaVL_ORCAMENTO: TFMTBCDField
      FieldName = 'VL_ORCAMENTO'
      Precision = 18
      Size = 2
    end
    object qTrocaVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qTrocaVL_LIQUIDO: TFMTBCDField
      FieldName = 'VL_LIQUIDO'
      Precision = 18
      Size = 2
    end
    object qTrocaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qTrocaTRANSF: TStringField
      FieldName = 'TRANSF'
      Size = 1
    end
    object qTrocaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qTrocaCPF_CLIENTE: TStringField
      FieldName = 'CPF_CLIENTE'
      Size = 14
    end
    object qTrocaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qTrocaCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qTrocaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 30
    end
    object qTrocaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qTrocaHR_ORCAMENTO: TTimeField
      FieldName = 'HR_ORCAMENTO'
    end
    object qTrocaMODALIDADE: TIntegerField
      FieldName = 'MODALIDADE'
    end
  end
  object dspTroca: TDataSetProvider
    DataSet = qTroca
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    OnGetTableName = dspTrocaGetTableName
    Left = 471
    Top = 231
  end
  object cdsTroca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    ProviderName = 'dspTroca'
    Left = 502
    Top = 231
    object cdsTrocaID_PDV: TIntegerField
      FieldName = 'ID_PDV'
      Required = True
    end
    object cdsTrocaNR_ORCAMENTO: TIntegerField
      DisplayLabel = 'N'#186' Or'#231'amento'
      FieldName = 'NR_ORCAMENTO'
      Required = True
    end
    object cdsTrocaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
      Required = True
    end
    object cdsTrocaID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Required = True
    end
    object cdsTrocaDT_ORCAMENTO: TDateField
      DisplayLabel = 'Data Troca'
      FieldName = 'DT_ORCAMENTO'
      EditMask = '##/##/####'
    end
    object cdsTrocaVL_ORCAMENTO: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VL_ORCAMENTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsTrocaVL_DESCONTO: TFMTBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'VL_DESCONTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsTrocaVL_LIQUIDO: TFMTBCDField
      DisplayLabel = 'Valor Liquido'
      FieldName = 'VL_LIQUIDO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsTrocaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsTrocaTRANSF: TStringField
      FieldName = 'TRANSF'
      Size = 1
    end
    object cdsTrocaNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsTrocaCPF_CLIENTE: TStringField
      FieldName = 'CPF_CLIENTE'
      Size = 14
    end
    object cdsTrocaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsTrocaCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object cdsTrocaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 30
    end
    object cdsTrocaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsTrocaHR_ORCAMENTO: TTimeField
      FieldName = 'HR_ORCAMENTO'
    end
    object cdsTrocaMODALIDADE: TIntegerField
      FieldName = 'MODALIDADE'
    end
  end
  object dsTroca: TDataSource
    DataSet = cdsTroca
    Left = 532
    Top = 231
  end
  object qItemTroca: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NR_ORCAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' PDV.ID_ITEM_PDV,'
      ' PDV.NR_ORCAMENTO,'
      ' PDV.ID_PRODUTO,'
      ' PDV.QUANT,'
      ' PDV.VL_UNIT,'
      ' PDV.VL_TOTAL,'
      ' PDV.DESC_ITEM,'
      ' PDV.PERC_DES,'
      ' PDV.TRANSF,'
      ' PDV.ID_LOJA,'
      ' PDV.STATUS,'
      ' p.cod_barra,'
      ' P.DESCRICAO,'
      ' P.UNIDADE'
      'FROM'
      ' TB_ITEM_PDV PDV'
      'LEFT OUTER JOIN TB_PRODUTO P ON (P.ID_PRODUTO = PDV.ID_PRODUTO)'
      'LEFT OUTER JOIN TB_LOJAS   L ON (L.ID_LOJA    = PDV.ID_LOJA)'
      
        'LEFT OUTER JOIN TB_PDV     PD ON (PD.NR_ORCAMENTO = PDV.NR_ORCAM' +
        'ENTO)'
      'WHERE'
      ' PDV.NR_ORCAMENTO = :NR_ORCAMENTO'
      'AND'
      ' PD.ID_LOJA       = :ID_LOJA'
      '')
    SQLConnection = DM.ConexaoLocal
    Left = 443
    Top = 191
    object qItemTrocaID_ITEM_PDV: TIntegerField
      FieldName = 'ID_ITEM_PDV'
      ProviderFlags = []
    end
    object qItemTrocaNR_ORCAMENTO: TIntegerField
      FieldName = 'NR_ORCAMENTO'
      Required = True
    end
    object qItemTrocaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object qItemTrocaQUANT: TIntegerField
      FieldName = 'QUANT'
    end
    object qItemTrocaVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object qItemTrocaVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qItemTrocaDESC_ITEM: TFMTBCDField
      FieldName = 'DESC_ITEM'
      Precision = 18
      Size = 2
    end
    object qItemTrocaPERC_DES: TFMTBCDField
      FieldName = 'PERC_DES'
      Precision = 18
      Size = 2
    end
    object qItemTrocaTRANSF: TStringField
      FieldName = 'TRANSF'
      Size = 1
    end
    object qItemTrocaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qItemTrocaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qItemTrocaCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = []
      Size = 13
    end
    object qItemTrocaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object qItemTrocaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
  end
  object dspItemTroca: TDataSetProvider
    DataSet = qItemTroca
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    OnGetTableName = dspItemTrocaGetTableName
    Left = 474
    Top = 191
  end
  object cdsItemTroca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NR_ORCAMENTO;ID_LOJA'
    MasterFields = 'NR_ORCAMENTO;ID_LOJA'
    MasterSource = dsTroca
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'NR_ORCAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemTroca'
    Left = 504
    Top = 191
    object cdsItemTrocaID_ITEM_PDV: TIntegerField
      FieldName = 'ID_ITEM_PDV'
      ProviderFlags = []
    end
    object cdsItemTrocaNR_ORCAMENTO: TIntegerField
      FieldName = 'NR_ORCAMENTO'
      Required = True
    end
    object cdsItemTrocaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsItemTrocaQUANT: TIntegerField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
    end
    object cdsItemTrocaVL_UNIT: TFMTBCDField
      DisplayLabel = 'Valor Unit'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemTrocaVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemTrocaDESC_ITEM: TFMTBCDField
      DisplayLabel = 'Desc Item'
      FieldName = 'DESC_ITEM'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemTrocaPERC_DES: TFMTBCDField
      DisplayLabel = '% Desc'
      FieldName = 'PERC_DES'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemTrocaTRANSF: TStringField
      FieldName = 'TRANSF'
      Size = 1
    end
    object cdsItemTrocaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsItemTrocaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsItemTrocaCOD_BARRA: TStringField
      DisplayLabel = 'C'#243'd.Barra'
      FieldName = 'COD_BARRA'
      ProviderFlags = []
      Size = 13
    end
    object cdsItemTrocaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemTrocaUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
  end
  object dsItemTroca: TDataSource
    DataSet = cdsItemTroca
    Left = 534
    Top = 191
  end
end