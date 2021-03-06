object frmAtuPlanoPagmto: TfrmAtuPlanoPagmto
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 341
  ClientWidth = 612
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 612
    Height = 25
    Align = alTop
    Caption = 'Atualiza'#231#227'o de Planos de Pagamentos'
    Color = 7715583
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 588
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
  object DBGrid1: TDBGrid
    Left = 2
    Top = 31
    Width = 609
    Height = 105
    BorderStyle = bsNone
    Ctl3D = True
    DataSource = dsPagamentoServidor
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORMA_PAGAMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORMA_RECEBIMENTO'
        Width = 221
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QT_PARCELAS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADMINISTRADORA'
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TX_ADM'
        Width = 66
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 2
    Top = 142
    Width = 609
    Height = 126
    BorderStyle = bsNone
    Ctl3D = True
    DataSource = dsPagamentoLocal
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORMA_PAGAMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORMA_RECEBIMENTO'
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QT_PARCELAS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADMINISTRADORA'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TX_ADM'
        Width = 63
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 1
    Top = 292
    Width = 611
    Height = 47
    Color = 7715583
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object Label3: TLabel
      Left = 5
      Top = 0
      Width = 218
      Height = 17
      Caption = 'Aguarde......   Transferindo Registros'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Gauge1: TGauge
      Left = 3
      Top = 19
      Width = 606
      Height = 24
      ForeColor = 7715583
      Progress = 0
    end
  end
  object BB_ATUALIZAR: TBitBtn
    Left = 1
    Top = 267
    Width = 75
    Height = 25
    Caption = '&Atualizar'
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
    TabOrder = 4
    OnClick = BB_ATUALIZARClick
  end
  object qPagamentoServidor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' FP.ID_FORMA_PAGAMENTO,'
      ' FP.DESCRICAO_PAGAMENTO,'
      ' FP.QT_PARCELAS,'
      ' FP.QT_DIAS_ENTRE_PARCELAS,'
      ' FP.QT_DIAS_PRIMEIRA_PARCELA,'
      ' FP.ADMINISTRADORA,'
      ' FP.TX_ADM,'
      ' FP.ID_TIPO_RECEBIMENTO,'
      ' TP.NOME_RECEBIMENTO AS FORMA_RECEBIMENTO'
      'FROM TB_FORMA_PAGAMENTO FP'
      
        'JOIN TB_TIPO_RECEBIMENTO TP ON (TP.ID_TIPO_RECEBIMENTO = FP.ID_T' +
        'IPO_RECEBIMENTO)')
    SQLConnection = DM.ConexaoServidor
    Left = 164
    Top = 43
    object qPagamentoServidorID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Required = True
    end
    object qPagamentoServidorDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object qPagamentoServidorQT_PARCELAS: TIntegerField
      FieldName = 'QT_PARCELAS'
    end
    object qPagamentoServidorQT_DIAS_ENTRE_PARCELAS: TIntegerField
      FieldName = 'QT_DIAS_ENTRE_PARCELAS'
    end
    object qPagamentoServidorQT_DIAS_PRIMEIRA_PARCELA: TIntegerField
      FieldName = 'QT_DIAS_PRIMEIRA_PARCELA'
    end
    object qPagamentoServidorADMINISTRADORA: TStringField
      FieldName = 'ADMINISTRADORA'
      Size = 30
    end
    object qPagamentoServidorTX_ADM: TFMTBCDField
      FieldName = 'TX_ADM'
      Precision = 18
      Size = 2
    end
    object qPagamentoServidorID_TIPO_RECEBIMENTO: TIntegerField
      FieldName = 'ID_TIPO_RECEBIMENTO'
    end
    object qPagamentoServidorFORMA_RECEBIMENTO: TStringField
      FieldName = 'FORMA_RECEBIMENTO'
      ProviderFlags = []
      Size = 30
    end
  end
  object dspPagamentoServidor: TDataSetProvider
    DataSet = qPagamentoServidor
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 196
    Top = 43
  end
  object cdsPagamentoServidor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPagamentoServidor'
    Left = 228
    Top = 43
    object cdsPagamentoServidorID_FORMA_PAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_FORMA_PAGAMENTO'
      Required = True
    end
    object cdsPagamentoServidorDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object cdsPagamentoServidorQT_PARCELAS: TIntegerField
      DisplayLabel = 'Qt Parcelas'
      FieldName = 'QT_PARCELAS'
    end
    object cdsPagamentoServidorQT_DIAS_ENTRE_PARCELAS: TIntegerField
      FieldName = 'QT_DIAS_ENTRE_PARCELAS'
    end
    object cdsPagamentoServidorQT_DIAS_PRIMEIRA_PARCELA: TIntegerField
      FieldName = 'QT_DIAS_PRIMEIRA_PARCELA'
    end
    object cdsPagamentoServidorADMINISTRADORA: TStringField
      DisplayLabel = 'Administradora'
      FieldName = 'ADMINISTRADORA'
      Size = 30
    end
    object cdsPagamentoServidorTX_ADM: TFMTBCDField
      DisplayLabel = 'Tx.Adm'
      FieldName = 'TX_ADM'
      DisplayFormat = '###0.00'
      EditFormat = '###0.00'
      Precision = 18
      Size = 2
    end
    object cdsPagamentoServidorID_TIPO_RECEBIMENTO: TIntegerField
      FieldName = 'ID_TIPO_RECEBIMENTO'
    end
    object cdsPagamentoServidorFORMA_RECEBIMENTO: TStringField
      DisplayLabel = 'Forma Recebimento'
      FieldName = 'FORMA_RECEBIMENTO'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsPagamentoServidor: TDataSource
    DataSet = cdsPagamentoServidor
    Left = 260
    Top = 43
  end
  object cdsPagamentoLocal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPagamentoLocal'
    Left = 228
    Top = 91
    object cdsPagamentoLocalID_FORMA_PAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_FORMA_PAGAMENTO'
      Required = True
    end
    object cdsPagamentoLocalDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object cdsPagamentoLocalQT_PARCELAS: TIntegerField
      DisplayLabel = 'Qt. Parcelas'
      FieldName = 'QT_PARCELAS'
    end
    object cdsPagamentoLocalQT_DIAS_ENTRE_PARCELAS: TIntegerField
      FieldName = 'QT_DIAS_ENTRE_PARCELAS'
    end
    object cdsPagamentoLocalQT_DIAS_PRIMEIRA_PARCELA: TIntegerField
      FieldName = 'QT_DIAS_PRIMEIRA_PARCELA'
    end
    object cdsPagamentoLocalADMINISTRADORA: TStringField
      DisplayLabel = 'Administradora'
      FieldName = 'ADMINISTRADORA'
      Size = 30
    end
    object cdsPagamentoLocalTX_ADM: TFMTBCDField
      DisplayLabel = 'Tx. Adm'
      FieldName = 'TX_ADM'
      DisplayFormat = '###0.00'
      EditFormat = '###0.00'
      Precision = 18
      Size = 2
    end
    object cdsPagamentoLocalID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
    end
    object cdsPagamentoLocalFORMA_RECEBIMENTO: TStringField
      DisplayLabel = 'Forma Recebimento'
      FieldName = 'FORMA_RECEBIMENTO'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsPagamentoLocal: TDataSource
    DataSet = cdsPagamentoLocal
    Left = 260
    Top = 91
  end
  object dspPagamentoLocal: TDataSetProvider
    DataSet = qPagamentoLocal
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 196
    Top = 91
  end
  object qPagamentoLocal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' FP.ID_FORMA_PAGAMENTO,'
      ' FP.DESCRICAO_PAGAMENTO,'
      ' FP.QT_PARCELAS,'
      ' FP.QT_DIAS_ENTRE_PARCELAS,'
      ' FP.QT_DIAS_PRIMEIRA_PARCELA,'
      ' FP.ADMINISTRADORA,'
      ' FP.TX_ADM,'
      ' FP.ID_TIPO_PAGAMENTO,'
      ' TP.DESCRICAO_PAGAMENTO AS FORMA_RECEBIMENTO'
      'FROM TB_FORMA_PAGAMENTO FP'
      
        'JOIN TB_TIPO_PAGAMENTO TP ON (TP.ID_TIPO_PAGAMENTO = FP.ID_TIPO_' +
        'PAGAMENTO)')
    SQLConnection = DM.ConexaoLocal
    Left = 164
    Top = 91
    object qPagamentoLocalID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Required = True
    end
    object qPagamentoLocalDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object qPagamentoLocalQT_PARCELAS: TIntegerField
      FieldName = 'QT_PARCELAS'
    end
    object qPagamentoLocalQT_DIAS_ENTRE_PARCELAS: TIntegerField
      FieldName = 'QT_DIAS_ENTRE_PARCELAS'
    end
    object qPagamentoLocalQT_DIAS_PRIMEIRA_PARCELA: TIntegerField
      FieldName = 'QT_DIAS_PRIMEIRA_PARCELA'
    end
    object qPagamentoLocalADMINISTRADORA: TStringField
      FieldName = 'ADMINISTRADORA'
      Size = 30
    end
    object qPagamentoLocalTX_ADM: TFMTBCDField
      FieldName = 'TX_ADM'
      Precision = 18
      Size = 2
    end
    object qPagamentoLocalID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
    end
    object qPagamentoLocalFORMA_RECEBIMENTO: TStringField
      FieldName = 'FORMA_RECEBIMENTO'
      ProviderFlags = []
      Size = 40
    end
  end
  object spRecebeFormaPagmto: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_FORMA_PAGAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 40
        Name = 'PE_DESCRICAO_PAGAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_QT_PARCELAS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_QT_DIAS_ENTRE_PARCELAS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_QT_DIAS_PRIMEIRA_PARCELA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'PE_ADMINISTRADORA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        Name = 'PE_TX_ADM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_TIPO_PAGAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = DM.ConexaoLocal
    StoredProcName = 'RECEBE_FORMA_PAGAMENTO'
    Left = 408
    Top = 56
  end
  object dspRecebeFormaPagmto: TDataSetProvider
    DataSet = spRecebeFormaPagmto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 440
    Top = 56
  end
  object cdsRecebeFormaPagmto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_FORMA_PAGAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 40
        Name = 'PE_DESCRICAO_PAGAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_QT_PARCELAS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_QT_DIAS_ENTRE_PARCELAS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_QT_DIAS_PRIMEIRA_PARCELA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'PE_ADMINISTRADORA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        Name = 'PE_TX_ADM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_TIPO_PAGAMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspRecebeFormaPagmto'
    Left = 472
    Top = 56
  end
  object dspRecebimentoServidor: TDataSetProvider
    DataSet = qRecebimentoServidor
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 384
    Top = 168
  end
  object cdsRecebimentoServidor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecebimentoServidor'
    Left = 416
    Top = 168
    object cdsRecebimentoServidorID_TIPO_RECEBIMENTO: TIntegerField
      FieldName = 'ID_TIPO_RECEBIMENTO'
      Required = True
    end
    object cdsRecebimentoServidorNOME_RECEBIMENTO: TStringField
      FieldName = 'NOME_RECEBIMENTO'
      Size = 30
    end
    object cdsRecebimentoServidorESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
  end
  object dsRecebimentoServidor: TDataSource
    DataSet = cdsRecebimentoServidor
    Left = 448
    Top = 168
  end
  object qRecebimentoServidor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM TB_TIPO_RECEBIMENTO')
    SQLConnection = DM.ConexaoServidor
    Left = 352
    Top = 168
    object qRecebimentoServidorID_TIPO_RECEBIMENTO: TIntegerField
      FieldName = 'ID_TIPO_RECEBIMENTO'
      Required = True
    end
    object qRecebimentoServidorNOME_RECEBIMENTO: TStringField
      FieldName = 'NOME_RECEBIMENTO'
      Size = 30
    end
    object qRecebimentoServidorESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
  end
  object qRecebimentoLocal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM TB_TIPO_PAGAMENTO')
    SQLConnection = DM.ConexaoLocal
    Left = 352
    Top = 224
    object qRecebimentoLocalID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
      Required = True
    end
    object qRecebimentoLocalDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
  end
  object dspRecebimentoLocal: TDataSetProvider
    DataSet = qRecebimentoLocal
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 384
    Top = 224
  end
  object cdsRecebimentoLocal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecebimentoLocal'
    Left = 416
    Top = 224
    object cdsRecebimentoLocalID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
      Required = True
    end
    object cdsRecebimentoLocalDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
  end
  object dsRecebimentoLocal: TDataSource
    DataSet = cdsRecebimentoLocal
    Left = 448
    Top = 224
  end
  object spRecebeTipoPagmto: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_TIPO_PAGAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 40
        Name = 'PE_DESCRICAO_PAGAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = DM.ConexaoLocal
    StoredProcName = 'RECEBE_TIPO_PAGAMENTO'
    Left = 480
    Top = 120
  end
  object dspRecebeTipoPagmto: TDataSetProvider
    DataSet = spRecebeTipoPagmto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 512
    Top = 120
  end
  object cdsRecebeTipoPagmto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_TIPO_PAGAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 40
        Name = 'PE_DESCRICAO_PAGAMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspRecebeTipoPagmto'
    Left = 544
    Top = 120
  end
end
