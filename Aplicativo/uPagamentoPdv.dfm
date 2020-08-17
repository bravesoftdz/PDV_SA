object frmPagamentoPdv: TfrmPagamentoPdv
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Recebimento'
  ClientHeight = 363
  ClientWidth = 550
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 75
    Top = 225
    Width = 141
    Height = 17
    Caption = 'Forma de Recebimento'
    Font.Charset = ANSI_CHARSET
    Font.Color = 7715583
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 31
    Width = 550
    Height = 89
    Caption = 'Dados do Or'#231'amento'
    Color = 7715583
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 3
      Top = 17
      Width = 24
      Height = 13
      Caption = 'Data'
    end
    object Label3: TLabel
      Left = 98
      Top = 17
      Width = 72
      Height = 13
      Caption = 'N'#186' Or'#231'amento'
    end
    object Label4: TLabel
      Left = 210
      Top = 17
      Width = 35
      Height = 13
      Caption = 'Cliente'
    end
    object Label5: TLabel
      Left = 3
      Top = 52
      Width = 50
      Height = 13
      Caption = 'Vendedor'
    end
    object Label6: TLabel
      Left = 410
      Top = 52
      Width = 86
      Height = 13
      Caption = 'Valor Or'#231'amento'
    end
    object DBEdit1: TDBEdit
      Left = 3
      Top = 30
      Width = 93
      Height = 19
      Ctl3D = False
      DataField = 'DT_ORCAMENTO'
      DataSource = DM.dsPdvLocal
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 210
      Top = 30
      Width = 311
      Height = 19
      Ctl3D = False
      DataField = 'NOME_CLIENTE'
      DataSource = DM.dsPdvLocal
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 98
      Top = 30
      Width = 111
      Height = 19
      Ctl3D = False
      DataField = 'NR_ORCAMENTO'
      DataSource = DM.dsPdvLocal
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 3
      Top = 65
      Width = 406
      Height = 19
      Ctl3D = False
      DataField = 'NOME'
      DataSource = DM.dsPdvLocal
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 410
      Top = 65
      Width = 111
      Height = 19
      Ctl3D = False
      DataField = 'VL_LIQUIDO'
      DataSource = DM.dsPdvLocal
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object GB_ESPECIE: TGroupBox
    Left = 335
    Top = 135
    Width = 211
    Height = 92
    Caption = 'Especie'
    Color = 7715583
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    Visible = False
    object DBText1: TDBText
      Left = 19
      Top = 36
      Width = 148
      Height = 19
      DataField = 'DESCRICAO_PAGAMENTO'
      DataSource = DM.dsPlanoPagamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 19
      Top = 15
      Width = 165
      Height = 17
      Caption = 'Informe Valor Recebido Em'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit6: TDBEdit
      Left = 19
      Top = 61
      Width = 121
      Height = 21
      Ctl3D = False
      DataField = 'VL_PAGAMENTO'
      DataSource = DM.dsPagamentoPdv
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
      OnExit = DBEdit6Exit
      OnKeyDown = FormKeyDown
      OnKeyPress = DBEdit6KeyPress
    end
    object Edit6: TEdit
      Left = 19
      Top = 59
      Width = 121
      Height = 23
      TabOrder = 1
      OnEnter = Edit6Enter
      OnExit = Edit6Exit
      OnKeyDown = Edit6KeyDown
      OnKeyPress = Edit6KeyPress
    end
  end
  object DBGrid2: TDBGrid
    Left = 3
    Top = 242
    Width = 326
    Height = 105
    BorderStyle = bsNone
    Color = clBtnFace
    DataSource = DM.dsPagamentoPdv
    GradientStartColor = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO_PAGAMENTO'
        Width = 201
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_PAGAMENTO'
        Width = 95
        Visible = True
      end>
  end
  object BB_CANCELAR: TBitBtn
    Left = 335
    Top = 298
    Width = 211
    Height = 33
    Caption = '  [ Esc ]  &Cancelar Recebimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0035960035960035960035
      96003596003596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF005CED0052DC0048CC
      0044BF0045B80041B0003AA4003596002E7B00235BFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0063FC005CF600
      5AEF166EE74C93E678B0EB8CBBED8BBAED72AAE64186D70D58BF00399F002E7F
      002662FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0062
      FF005DFF1F7FFC95C6FBF0F7FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3
      EFFC7AADE71159BC003391002560FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF0065FF0368FF75B5FFF2F8FFFFFFFFFFFFFFCCE1FACCE1FAB1D1F8C0D9
      F8CCE0FACCE0FAFFFFFFFFFFFFE0EDFB518FD7003A9D002664FF00FFFF00FFFF
      00FFFF00FFFF00FF036AFF036AFF90C5FFFFFFFFFFFFFFD8E7FC9CC6F8095CE5
      0352E10251E0014FE0014EDE0B5BE1B1D1F8FFFFFFFFFFFFFFFFFF5792D80035
      96002764FF00FFFF00FFFF00FFFF00FF0166FF62ABFFFFFFFFFFFFFFD9E9FC40
      8EF4065AE60557E50455E3085AE30352E10251E0014FE0014FDE5396EED7E6FB
      FFFFFFEFF6FB1B63BD00348FFF00FFFF00FFFF00FF066CFF1277FFDEEFFFFFFF
      FFD9EAFC3889F40A5FEA085DE9095DE90559E60457E30556E20353E20251E002
      50E0014EDE468EEDD7E6FBFFFFFFA3C5E90040A7003993FF00FFFF00FF036AFF
      5EA9FFFFFFFFFFFFFF73B1FA0D66EF87B8F7FCFEFF74ACF4075CE70659E60C5F
      E60C5EE587B6F3E0EDFC0250E1014FE08EBCF4FFFFFFFCFCFC286FC7003EACFF
      00FF0D73FF0B72FFB5D8FFFFFFFFFEFFFF116DF30F6AF23184F4BFDAFBFFFFFF
      4D95F2095DE9075CE795C0F6FFFFFF8AB8F40353E20252E11365E5D7E6FBFFFF
      FF78ABE20046C10039930D73FF1C7FFFEDF6FFFFFFFFB4D8FE1470F41570F310
      6CF22077F2B5D5FBF2F8FE4F97F360A0F3FFFFFF91BDF60E62E60456E50354E3
      0353E2BBD8FAFFFFFFBAD5F30155D4004ECB0E74FF3891FFFBFCFFFFFFFF69AD
      FE1675F71B78F61370F6116DF3227AF4B2D4FBF3F8FEE7F2FE63A1F30C63E907
      5BE7065AE60557E50455E37EB2F3FFFFFFE3EFFC0562E60058E71378FF55A4FF
      FEFFFFFFFFFF65ABFE1878FB1676F81E7AF71774F6126EF49FCAFBFFFFFFFBFE
      FF4A93F30C65ED095FEA085CE9065AE60558E66FA9F3FFFFFFEDF6FF0667F000
      5CED1A7DFF68AFFFFFFFFFFFFFFF7BB8FF1B7BFC1979FB1877FA1C79F870B0FB
      F0F7FFA3CCFBB8D8FCF0F7FE5097F40E67ED0A62EB095EEA075CE788BBF6FFFF
      FFE1F0FF0568F4005DF21D7FFF6CB1FFF8FCFFFFFFFFCCE5FF1C7EFC1C7DFC2B
      87FC9ECBFEFFFFFF76B4FB1472F61F79F6BCDAFCFFFFFF79B2F80C65EE0B63ED
      0A60EBC6DEFBFFFFFFB7DAFF0163F8005EF43D95FF5AA7FFE9F4FFFFFFFFFFFF
      FF2D8AFF1D7FFE89C1FEFFFFFFA0CCFE1877FA1676F81674F7237DF7C4DEFCFF
      FFFF0F69F00D67EE2A7FF3FFFFFFFFFFFF73B5FF005BFC005EF4FF00FF3E96FF
      CEE6FFFFFFFFFFFFFFB0D7FF1E80FF4298FE86C0FF2B88FC1B7AFB1978FA1777
      FA1674F82D84F891C2FB116DF3116BF3B2D4FCFFFFFFFBFEFF2283FF005FFFFF
      00FFFF00FF4298FF97C9FFFEFFFFFFFFFFFFFFFF75B6FF1E80FF1E80FF1D7FFF
      1C7DFE1C7DFC1A79FB1878FA1676F81673F71673F4BBDDFFFFFFFFFFFFFF97C9
      FF0065FF0065FFFF00FFFF00FFFF00FF54A4FFE1F0FFFFFFFFFFFFFFFFFFFF8F
      C4FF1F81FF1E80FF1E80FF1D7EFE1C7DFE1B7AFC1879FA1B79FAA6CFFEFFFFFF
      FFFFFFE7F3FF177BFF0065FFFF00FFFF00FFFF00FFFF00FF5CA7FF8CC2FFF8FC
      FFFFFFFFFFFFFFFFFFFFF8FCFF79B8FF3C95FF2D8BFF2D8AFE4197FE8AC1FEFF
      FFFFFFFFFFFFFFFFFBFEFF499DFF0065FF036AFFFF00FFFF00FFFF00FFFF00FF
      FF00FF5BA6FF9ACBFFF2F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFD1E7FF459AFF0268FF066CFFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF5EA9FF78B8FFD0E7FFF8FCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F3FF8AC1FF1F81FF056BFF096FFFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7FBBFF5AA6FF87
      C0FFBBDDFFDAEDFFE7F3FFE7F3FFDEEFFFC7E2FF96C7FF52A1FF1C7FFF0E74FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FF7DBAFF5AA6FF5AA6FF60AAFF60AAFF52A1FF3E96FF2C8AFF19
      7DFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    TabOrder = 3
    OnClick = BB_CANCELARClick
  end
  object BB_CUPOM: TBitBtn
    Left = 335
    Top = 331
    Width = 211
    Height = 32
    Caption = ' Enviar Cupom Fiscal - NFC-e'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    Glyph.Data = {
      42090000424D4209000000000000420000002800000018000000180000000100
      20000300000000090000130B0000130B00000000000000000000000000FF0000
      FF0000FF0000008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFFFF20
      7724FF207522FF207421FF21731FFF21721EFF21711DFF226F1BFF226E1AFF22
      6D19FF226C18FF236B16FF236A1500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF008080800080808000808080008080800080808000808080FF1F
      7926FF0FE66CFF16CB68FF14CA64FF11C962FF0EC75CFF09C04EFF09C04EFF09
      C04EFF09C04EFF06E154FF226C1700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF008080800080808000808080008080800080808000808080FF1F
      7B29FF15CD69FF20AA66FF1BA55EFF19A35BFF159F57FF0D964AFF0C9448FF0C
      9347FF0F974DFF09C04EFF226D1900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF008080800080808000808080008080800080808000808080FF1E
      7D2BFF18CF6FFF26AF6EFF20A963FF1DA661FF18A25AFF0F984CFF0E964AFF0D
      9549FF119A51FF09C04EFF226F1B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF008080800080808000808080008080800080808000808080FF1D
      7F2EFF1CD177FF2FB677FF24AE6AFF22AB66FF1DA760FF119B50FF10994DFF0E
      974BFF159F58FF09C04FFF21711D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF008080800080808000808080008080800080808000808080FF1D
      8130FF20D37AFF36BC80FF29B06EFF25AE6AFF1FAA64FF139E53FF129C51FF10
      9A4EFF1BA560FF0AC252FF21721F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF008080800080808000808080008080800080808000808080FF1C
      8333FF22D580FF3FC38AFF2BB473FF29B270FF24AD6AFF15A157FF149F54FF12
      9D52FF22AC6CFF0BC355FF20742100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF008080800080808000808080008080800080808000808080FF1C
      8535FF26D785FF48CA97FF30B878FF2EB575FF27B16EFF18A45BFF16A258FF14
      A056FF29B478FF0DC559FF20762300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF008080800080808000808080008080800080808000808080FF1B
      8738FF29DA8BFF51D2A3FF35BC7EFF31B97AFF2BB572FF1AA85FFF18A65DFF17
      A35AFF33BD86FF0EC75DFF1F782600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF008080800080808000808080008080800080808000808080FF1B
      893BFF2CDC90FF5BDAB0FF38C082FF36BD7EFF2FB977FF1DAC64FF1BA961FF19
      A75EFF3EC795FF0FC961FF1F7A2800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF008080800080808000808080008080800080808000808080FF1A
      8C3DFF2FDC94FF65E0BBFF3CC486FF38C083FF32BD7CFF20B069FF1EAD66FF1C
      AB62FF48D1A4FF12C766FF1E7C2B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFFFF1B9A4DFF1D984EFF1E994EFF209A4FFF249A50FF259A50FF27
      C076FF59E4B6FF40CA8EFF3FC78BFF3BC487FF35C081FF22B46DFF21B16AFF1F
      AF67FF1DAC64FF3BD397FF16AA49FF1E7D2CFF1E7C2AFF1F7A28FF1F7927FF1F
      7825FF207624FF1B9C50FF1DC27DFF70FAE1FF33EEAFFF36EAABFF37E7A7FF3D
      DE9FFF44D499FF45CF94FF43CC91FF3EC88BFF37C383FF25B872FF23B56FFF21
      B36CFF20B069FF1DB268FF18BE67FF13C868FF11CB67FF0FCF65FF64F7CEFF16
      AA41FF1F782600808080FF1B9C52FF1FC47FFF79F9E2FF49E2AAFF4BDEA6FF4C
      DBA2FF4BD79EFF48D49BFF46D096FF42CD91FF3AC889FF28BC77FF26B974FF24
      B771FF22B46DFF21B16AFF1FAF67FF1DAC64FF1AAE63FF6CF2D4FF16AC47FF1E
      7C2A00FFFFFF0080808000808080FF1C9D53FF21C582FF81FAE6FF4CE4ABFF4E
      E0A8FF4DDDA5FF4CD9A1FF4AD69DFF46D298FF3FCC90FF2CC27EFF29BE79FF27
      BB75FF25B872FF23B56FFF21B36CFF1FB56BFF72F5DBFF16AF4DFF1D7F2E00FF
      FFFF00FFFFFF008080800080808000808080FF1CA056FF21C583FF86FBE9FF4F
      E7AEFF51E2ABFF51DFA8FF4EDCA4FF4BD79EFF42D297FF30C885FF2DC480FF2A
      C07BFF28BC77FF26B974FF22BC73FF7AF8E1FF16B153FF1C833200FFFFFF00FF
      FFFF00FFFFFF00808080008080800080808000808080FF1DA059FF22C786FF8C
      FCEDFF50E8B0FF53E4ADFF50E0AAFF4DDDA5FF46D79DFF35CF8DFF32CA88FF2F
      C683FF2CC27EFF27C27BFF80FAE7FF16B45AFF1B863700FFFFFF00FFFFFF00FF
      FFFF00FFFFFF0080808000808080008080800080808000808080FF1EA259FF23
      C887FF91FDEEFF51EAB3FF53E5AEFF50E2AAFF4BDEA4FF3AD696FF37D190FF33
      CC8BFF2ECB87FF84FCEAFF17B661FF1B8A3B00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF008080800080808000808080008080800080808000808080FF1E
      A35AFF24C888FF94FEF1FF51EAB3FF51E6AFFF4DE2AAFF3EDC9EFF3BD899FF35
      D695FF89FDEEFF17B968FF1A8D3F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF0080808000808080008080800080808000808080008080800080
      8080FF1FA45DFF23C989FF96FEF2FF50EBB5FF4EE7AEFF42E1A4FF3DE0A2FF8C
      FEEFFF18BC6FFF19914300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF0080808000808080008080800080808000808080008080800080
      808000808080FF1EA55CFF24C88AFF97FFF3FF4DECB4FF42E8ABFF8FFFF1FF19
      BF75FF18944700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF0080808000808080008080800080808000808080008080800080
      80800080808000808080FF1DA35CFF22C889FF96FFF1FF90FFF1FF19C17BFF17
      974B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF0080808000808080008080800080808000808080008080800080
      8080008080800080808000808080FF1BA45BFF20C688FF1AC380FF169A4F0016
      994E0017984C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF0080808000808080008080800080808000808080008080800080
      808000808080008080800080808000808080FF19A25AFF159D5200169C510016
      9B5000169A4E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF}
    ParentFont = False
    TabOrder = 4
    OnClick = BB_CUPOMClick
    OnKeyDown = FormKeyDown
  end
  object Memo2: TMemo
    Left = 335
    Top = 363
    Width = 427
    Height = 281
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 5
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 550
    Height = 32
    Caption = 'Recebimento de Venda.'
    Color = 7715583
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 6
  end
  object Panel2: TPanel
    Left = 335
    Top = 230
    Width = 211
    Height = 34
    BevelOuter = bvNone
    Color = 7715583
    ParentBackground = False
    TabOrder = 7
    object Label11: TLabel
      Left = 6
      Top = 9
      Width = 90
      Height = 18
      Caption = 'Valor Pago :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L_VALOR_PAGO: TLabel
      Left = 151
      Top = 9
      Width = 35
      Height = 18
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 335
    Top = 267
    Width = 211
    Height = 30
    BevelOuter = bvNone
    Color = 7715583
    ParentBackground = False
    TabOrder = 8
    object Label12: TLabel
      Left = 9
      Top = 5
      Width = 75
      Height = 20
      Caption = 'Diferen'#231'a :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L_VALOR_DIFERENCA: TLabel
      Left = 150
      Top = 7
      Width = 35
      Height = 18
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBGrid3: TDBGrid
    Left = 343
    Top = 369
    Width = 543
    Height = 109
    Ctl3D = False
    DataSource = dsContasReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlue
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'DT_EMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_VENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QT_DIAS'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QT_PARCELA'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_DOC'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_PARCELA'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_COMPRA'
        Width = 68
        Visible = True
      end>
  end
  object DB_PLANOPG: TDBGrid
    Left = 2
    Top = 243
    Width = 327
    Height = 108
    DataSource = DM.dsPlanoPagamento
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    OnKeyPress = DB_PLANOPGKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO_PAGAMENTO'
        Width = 192
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QT_PARCELAS'
        Width = 75
        Visible = True
      end>
  end
  object Panel4: TPanel
    Left = 3
    Top = 145
    Width = 330
    Height = 210
    Caption = 'Panel4'
    Color = 7715583
    ParentBackground = False
    TabOrder = 11
    object Label1: TLabel
      Left = 43
      Top = 7
      Width = 128
      Height = 17
      Caption = 'Tipo de Recebimento'
      Color = 7715583
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 26
      Width = 324
      Height = 171
      BorderStyle = bsNone
      Color = clBtnFace
      DataSource = DM.dsPlanoPagamento
      GradientStartColor = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnKeyDown = FormKeyDown
      OnKeyPress = DBGrid1KeyPress
      OnKeyUp = DBGrid1KeyUp
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO_PAGAMENTO'
          Visible = True
        end>
    end
  end
  object P_TROCO: TPanel
    Left = 0
    Top = 10
    Width = 550
    Height = 119
    Color = 7715583
    ParentBackground = False
    TabOrder = 12
    Visible = False
    object L_TROCO: TLabel
      Left = 40
      Top = 123
      Width = 56
      Height = 65
      Caption = '00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -48
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 35
      Top = 16
      Width = 469
      Height = 25
      Caption = 'O B R I G A D O, E    V O L T E    S E M P R E !!!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object qTipoPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'TP.id_tipo_pagamento,'
      'TP.descricao_pagamento'
      'FROM tb_tipo_pagamento TP'
      'WHERE TP.descricao_pagamento <>'#39#39)
    SQLConnection = DM.ConexaoLocal
    Left = 272
    Top = 24
    object qTipoPagamentoID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
      Required = True
    end
    object qTipoPagamentoDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
  end
  object dspTipoPagamento: TDataSetProvider
    DataSet = qTipoPagamento
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 304
    Top = 24
  end
  object cdsTipoPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoPagamento'
    Left = 336
    Top = 24
    object cdsTipoPagamentoID_TIPO_PAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_TIPO_PAGAMENTO'
      Required = True
    end
    object cdsTipoPagamentoDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Forma de Recebimento'
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
  end
  object dsTipoPagamento: TDataSource
    DataSet = cdsTipoPagamento
    Left = 368
    Top = 24
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 288
    Top = 216
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 479
    Top = 186
  end
  object qContasReceber: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_EMI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  CR.ID_CONTAS_RECEBER,'
      '  CR.ID_PDV,'
      '  CR.ID_LOJA,'
      '  CR.CAIXA,'
      '  CR.ID_PLANO_PAGAMENTO,'
      '  CR.ID_FORMA_PAGAMENTO,'
      '  CR.ID_VENDEDOR,'
      '  CR.ID_USUARIO,'
      '  CR.DT_EMISSAO,'
      '  CR.DT_VENCIMENTO,'
      '  CR.DT_PAGAMENTO,'
      '  CR.QT_DIAS,'
      '  CR.QT_DIAS_ATRAZO,'
      '  CR.QT_PARCELA,'
      '  CR.NR_DOC,'
      '  CR.VL_COMPRA,'
      '  CR.VL_PARCELA,'
      '  CR.NR_PARCELA,'
      '  CR.STATUS,'
      '  V.NOME AS VENEDOR,'
      '  FP.DESCRICAO_PAGAMENTO AS FORMA_PAGAMENTO'
      'FROM TB_CONTAS_RECEBER CR'
      
        'LEFT OUTER JOIN TB_VENDEDOR V ON (V.ID_VENDEDOR = CR.ID_VENDEDOR' +
        ')'
      'LEFT OUTER JOIN TB_USUARIOS L ON (L.ID_USUARIO = CR.ID_USUARIO)'
      
        'LEFT OUTER JOIN TB_TIPO_PAGAMENTO TP ON (TP.ID_TIPO_PAGAMENTO = ' +
        'CR.ID_PLANO_PAGAMENTO)'
      
        'LEFT OUTER JOIN TB_FORMA_PAGAMENTO FP ON (FP.ID_FORMA_PAGAMENTO ' +
        '= CR.ID_FORMA_PAGAMENTO)'
      'WHERE CR.ID_LOJA     = :ID_LOJA'
      'AND CR.DT_EMISSAO   = :DT_EMI'
      'AND CR.ID_PDV            = :ID_PEDIDO'
      'ORDER BY CR.DT_VENCIMENTO'
      ''
      '')
    SQLConnection = DM.ConexaoLocal
    Left = 32
    Top = 264
    object qContasReceberID_CONTAS_RECEBER: TIntegerField
      FieldName = 'ID_CONTAS_RECEBER'
      ProviderFlags = []
    end
    object qContasReceberID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object qContasReceberID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qContasReceberID_PLANO_PAGAMENTO: TIntegerField
      FieldName = 'ID_PLANO_PAGAMENTO'
    end
    object qContasReceberID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object qContasReceberID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qContasReceberID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qContasReceberDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object qContasReceberDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
    end
    object qContasReceberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
    end
    object qContasReceberQT_DIAS: TIntegerField
      FieldName = 'QT_DIAS'
    end
    object qContasReceberQT_DIAS_ATRAZO: TIntegerField
      FieldName = 'QT_DIAS_ATRAZO'
    end
    object qContasReceberQT_PARCELA: TIntegerField
      FieldName = 'QT_PARCELA'
    end
    object qContasReceberNR_DOC: TStringField
      FieldName = 'NR_DOC'
      Size = 15
    end
    object qContasReceberVL_COMPRA: TFMTBCDField
      FieldName = 'VL_COMPRA'
      Precision = 18
      Size = 2
    end
    object qContasReceberVL_PARCELA: TFMTBCDField
      FieldName = 'VL_PARCELA'
      Precision = 18
      Size = 2
    end
    object qContasReceberNR_PARCELA: TStringField
      FieldName = 'NR_PARCELA'
      Size = 10
    end
    object qContasReceberSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qContasReceberVENEDOR: TStringField
      FieldName = 'VENEDOR'
      ProviderFlags = []
      Size = 30
    end
    object qContasReceberFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qContasReceberCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
  end
  object dspContasReceber: TDataSetProvider
    DataSet = qContasReceber
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 64
    Top = 264
  end
  object cdsContasReceber: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_EMI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end>
    ProviderName = 'dspContasReceber'
    Left = 96
    Top = 264
    object cdsContasReceberID_CONTAS_RECEBER: TIntegerField
      FieldName = 'ID_CONTAS_RECEBER'
      ProviderFlags = []
    end
    object cdsContasReceberID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object cdsContasReceberID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsContasReceberID_PLANO_PAGAMENTO: TIntegerField
      FieldName = 'ID_PLANO_PAGAMENTO'
    end
    object cdsContasReceberID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsContasReceberID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsContasReceberID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsContasReceberDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object cdsContasReceberDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
    end
    object cdsContasReceberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
    end
    object cdsContasReceberQT_DIAS: TIntegerField
      FieldName = 'QT_DIAS'
    end
    object cdsContasReceberQT_DIAS_ATRAZO: TIntegerField
      FieldName = 'QT_DIAS_ATRAZO'
    end
    object cdsContasReceberQT_PARCELA: TIntegerField
      FieldName = 'QT_PARCELA'
    end
    object cdsContasReceberNR_DOC: TStringField
      FieldName = 'NR_DOC'
      Size = 15
    end
    object cdsContasReceberVL_COMPRA: TFMTBCDField
      FieldName = 'VL_COMPRA'
      Precision = 18
      Size = 2
    end
    object cdsContasReceberVL_PARCELA: TFMTBCDField
      FieldName = 'VL_PARCELA'
      Precision = 18
      Size = 2
    end
    object cdsContasReceberNR_PARCELA: TStringField
      FieldName = 'NR_PARCELA'
      Size = 10
    end
    object cdsContasReceberSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsContasReceberVENEDOR: TStringField
      FieldName = 'VENEDOR'
      ProviderFlags = []
      Size = 30
    end
    object cdsContasReceberFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsContasReceberCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
  end
  object dsContasReceber: TDataSource
    DataSet = cdsTipoPagamento
    Left = 128
    Top = 264
  end
end
