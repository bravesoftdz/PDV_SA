object frmPagamentoTroca: TfrmPagamentoTroca
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Recebimento de Troca'
  ClientHeight = 325
  ClientWidth = 543
  Color = 7715583
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 550
    Height = 32
    Caption = 'Recebimento de Troca'
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
  object DBGrid1: TDBGrid
    Left = 1
    Top = 126
    Width = 328
    Height = 196
    BorderStyle = bsNone
    Color = clBtnFace
    DataSource = dsTipoPagamento
    GradientStartColor = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO_PAGAMENTO'
        Width = 222
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 31
    Width = 541
    Height = 89
    Caption = 'Dados da Troca'
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
    TabOrder = 2
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
      Width = 58
      Height = 13
      Caption = 'Valor Troca'
    end
    object DBEdit1: TDBEdit
      Left = 3
      Top = 30
      Width = 93
      Height = 19
      Ctl3D = False
      DataField = 'DT_ORCAMENTO'
      DataSource = frmTrocaMercadoria.dsTroca
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
      DataSource = frmTrocaMercadoria.dsTroca
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
      DataSource = frmTrocaMercadoria.dsTroca
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
      DataSource = frmTrocaMercadoria.dsTroca
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
      DataSource = frmTrocaMercadoria.dsTroca
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object GB_ESPECIE: TGroupBox
    Left = 332
    Top = 121
    Width = 209
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
    TabOrder = 3
    Visible = False
    object DBText1: TDBText
      Left = 19
      Top = 36
      Width = 148
      Height = 19
      DataField = 'DESCRICAO_PAGAMENTO'
      DataSource = dsTipoPagamento
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
      Font.Color = clBlue
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
    end
    object Edit6: TEdit
      Left = 19
      Top = 59
      Width = 121
      Height = 23
      TabOrder = 1
      OnExit = Edit6Exit
      OnKeyPress = FormKeyPress
    end
  end
  object DBGrid2: TDBGrid
    Left = 1
    Top = 215
    Width = 327
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
    TabOrder = 4
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
  object Panel2: TPanel
    Left = 331
    Top = 218
    Width = 210
    Height = 37
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    object Label11: TLabel
      Left = 8
      Top = 10
      Width = 116
      Height = 23
      Caption = 'Valor Pago :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L_VALOR_PAGO: TLabel
      Left = 144
      Top = 10
      Width = 42
      Height = 23
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 331
    Top = 256
    Width = 210
    Height = 33
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 6
    object Label12: TLabel
      Left = 9
      Top = 1
      Width = 105
      Height = 30
      Caption = 'Diferen'#231'a :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L_VALOR_DIFERENCA: TLabel
      Left = 143
      Top = 6
      Width = 42
      Height = 23
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object BB_CANCELAR: TBitBtn
    Left = 330
    Top = 288
    Width = 213
    Height = 34
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
    TabOrder = 7
    OnClick = BB_CANCELARClick
    OnKeyPress = BB_CANCELARKeyPress
  end
  object P_TROCO: TPanel
    Left = -7
    Top = 10
    Width = 550
    Height = 119
    TabOrder = 8
    Visible = False
    object L_TROCO: TLabel
      Left = 40
      Top = 123
      Width = 56
      Height = 65
      Caption = '00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -48
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 35
      Top = 16
      Width = 448
      Height = 25
      Caption = 'O B I G A D O, E    V O L T E    S E M P R E !!!'
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
      'TP.ID_TIPO_PAGAMENTO,'
      'TP.DESCRICAO_PAGAMENTO'
      'FROM TB_TIPO_PAGAMENTO TP'
      'WHERE TP.descricao_pagamento <>'#39#39)
    SQLConnection = DM.ConexaoLocal
    Left = 248
    Top = 32
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
    Left = 280
    Top = 32
  end
  object cdsTipoPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoPagamento'
    Left = 312
    Top = 32
    object cdsTipoPagamentoID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
      Required = True
    end
    object cdsTipoPagamentoDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Tipo Recebimento'
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
  end
  object dsTipoPagamento: TDataSource
    DataSet = cdsTipoPagamento
    Left = 344
    Top = 32
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 265
    Top = 94
  end
end
