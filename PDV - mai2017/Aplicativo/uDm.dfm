object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 496
  Width = 623
  object ConexaoLocal: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver210.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=21.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver210.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=21.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'Database=127.0.0.1:C:\shopping10\PDV\Bdados_pdv\BDADOS_S10.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Left = 48
    Top = 24
  end
  object ConexaoServidor: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver210.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=21.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver210.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=21.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'Database=127.0.0.1:C:\shopping10\BDADOS\BDADOS_S10.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Left = 40
    Top = 320
  end
  object qPdvLocal: TSQLQuery
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
      ' PDV.CAIXA,'
      ' V.NOME'
      'FROM'
      ' TB_PDV PDV'
      'JOIN TB_VENDEDOR V ON (V.ID_VENDEDOR = PDV.ID_VENDEDOR)'
      'WHERE'
      ' PDV.STATUS = '#39'A'#39
      'AND PDV.CAIXA = :CAIXA')
    SQLConnection = ConexaoLocal
    Left = 48
    Top = 88
    object qPdvLocalID_PDV: TIntegerField
      FieldName = 'ID_PDV'
      Required = True
    end
    object qPdvLocalNR_ORCAMENTO: TIntegerField
      FieldName = 'NR_ORCAMENTO'
      Required = True
    end
    object qPdvLocalID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
      Required = True
    end
    object qPdvLocalID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Required = True
    end
    object qPdvLocalDT_ORCAMENTO: TDateField
      FieldName = 'DT_ORCAMENTO'
    end
    object qPdvLocalVL_ORCAMENTO: TFMTBCDField
      FieldName = 'VL_ORCAMENTO'
      Precision = 18
      Size = 2
    end
    object qPdvLocalVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qPdvLocalVL_LIQUIDO: TFMTBCDField
      FieldName = 'VL_LIQUIDO'
      Precision = 18
      Size = 2
    end
    object qPdvLocalSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qPdvLocalTRANSF: TStringField
      FieldName = 'TRANSF'
      Size = 1
    end
    object qPdvLocalNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qPdvLocalCPF_CLIENTE: TStringField
      FieldName = 'CPF_CLIENTE'
      Size = 14
    end
    object qPdvLocalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qPdvLocalNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 30
    end
    object qPdvLocalCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
  end
  object dspPdvLocal: TDataSetProvider
    DataSet = qPdvLocal
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 80
    Top = 88
  end
  object cdsPdvLocal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    ProviderName = 'dspPdvLocal'
    Left = 112
    Top = 88
    object cdsPdvLocalID_PDV: TIntegerField
      FieldName = 'ID_PDV'
      Required = True
    end
    object cdsPdvLocalNR_ORCAMENTO: TIntegerField
      DisplayLabel = 'N'#186' Orcamento'
      FieldName = 'NR_ORCAMENTO'
      Required = True
      DisplayFormat = '#0000000000'
      EditFormat = '#0000000000'
    end
    object cdsPdvLocalID_LOJA: TIntegerField
      DisplayLabel = 'C'#243'd. Loja'
      FieldName = 'ID_LOJA'
      Required = True
    end
    object cdsPdvLocalID_GRUPO: TIntegerField
      DisplayLabel = 'C'#243'd. Grupo'
      FieldName = 'ID_GRUPO'
      Required = True
    end
    object cdsPdvLocalDT_ORCAMENTO: TDateField
      DisplayLabel = 'Data Orcamento'
      FieldName = 'DT_ORCAMENTO'
      EditMask = '##/##/####'
    end
    object cdsPdvLocalVL_ORCAMENTO: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VL_ORCAMENTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsPdvLocalVL_DESCONTO: TFMTBCDField
      DisplayLabel = 'Valor Desc'
      FieldName = 'VL_DESCONTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsPdvLocalVL_LIQUIDO: TFMTBCDField
      DisplayLabel = 'Valor Liq'
      FieldName = 'VL_LIQUIDO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsPdvLocalSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsPdvLocalTRANSF: TStringField
      DisplayLabel = 'Transf'
      FieldName = 'TRANSF'
      Size = 1
    end
    object cdsPdvLocalNOME_CLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsPdvLocalCPF_CLIENTE: TStringField
      DisplayLabel = 'Cpf'
      FieldName = 'CPF_CLIENTE'
      Size = 14
    end
    object cdsPdvLocalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPdvLocalNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 30
    end
    object cdsPdvLocalCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
  end
  object dsPdvLocal: TDataSource
    DataSet = cdsPdvLocal
    Left = 144
    Top = 88
  end
  object qItemPdvLocal: TSQLQuery
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
      ' JOIN TB_PRODUTO P ON (P.ID_PRODUTO = PDV.ID_PRODUTO)'
      ' JOIN TB_LOJAS   L ON (L.ID_LOJA    = PDV.ID_LOJA)'
      ' JOIN TB_PDV     PD ON (PD.NR_ORCAMENTO = PDV.NR_ORCAMENTO)'
      'WHERE'
      ' PDV.NR_ORCAMENTO = :NR_ORCAMENTO'
      'AND'
      ' PD.ID_LOJA       = :ID_LOJA')
    SQLConnection = ConexaoLocal
    Left = 48
    Top = 136
    object qItemPdvLocalID_ITEM_PDV: TIntegerField
      FieldName = 'ID_ITEM_PDV'
      ProviderFlags = []
    end
    object qItemPdvLocalNR_ORCAMENTO: TIntegerField
      FieldName = 'NR_ORCAMENTO'
      Required = True
    end
    object qItemPdvLocalID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object qItemPdvLocalQUANT: TIntegerField
      FieldName = 'QUANT'
    end
    object qItemPdvLocalVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object qItemPdvLocalVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qItemPdvLocalDESC_ITEM: TFMTBCDField
      FieldName = 'DESC_ITEM'
      Precision = 18
      Size = 2
    end
    object qItemPdvLocalPERC_DES: TFMTBCDField
      FieldName = 'PERC_DES'
      Precision = 18
      Size = 2
    end
    object qItemPdvLocalTRANSF: TStringField
      FieldName = 'TRANSF'
      Size = 1
    end
    object qItemPdvLocalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object qItemPdvLocalUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object qItemPdvLocalCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = []
      Size = 13
    end
    object qItemPdvLocalID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qItemPdvLocalSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object dspItemPdvLocal: TDataSetProvider
    DataSet = qItemPdvLocal
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 80
    Top = 136
  end
  object cdsItemPdvLocal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NR_ORCAMENTO;ID_LOJA'
    MasterFields = 'NR_ORCAMENTO;ID_LOJA'
    MasterSource = dsPdvLocal
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
    ProviderName = 'dspItemPdvLocal'
    Left = 112
    Top = 136
    object cdsItemPdvLocalID_ITEM_PDV: TIntegerField
      FieldName = 'ID_ITEM_PDV'
      ProviderFlags = []
    end
    object cdsItemPdvLocalNR_ORCAMENTO: TIntegerField
      FieldName = 'NR_ORCAMENTO'
      Required = True
      DisplayFormat = '#0000000000'
      EditFormat = '#0000000000'
    end
    object cdsItemPdvLocalID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsItemPdvLocalQUANT: TIntegerField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
    end
    object cdsItemPdvLocalVL_UNIT: TFMTBCDField
      DisplayLabel = 'Valor Unit'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvLocalVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvLocalDESC_ITEM: TFMTBCDField
      DisplayLabel = 'Valor Desc'
      FieldName = 'DESC_ITEM'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvLocalPERC_DES: TFMTBCDField
      DisplayLabel = '% Desc'
      FieldName = 'PERC_DES'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvLocalTRANSF: TStringField
      FieldName = 'TRANSF'
      Size = 1
    end
    object cdsItemPdvLocalDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemPdvLocalUNIDADE: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNIDADE'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object cdsItemPdvLocalCOD_BARRA: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_BARRA'
      ProviderFlags = []
      Size = 13
    end
    object cdsItemPdvLocalID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsItemPdvLocalSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object dsItemPdvLocal: TDataSource
    DataSet = cdsItemPdvLocal
    Left = 144
    Top = 136
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 110
    Top = 189
    object cdsProdutoCOD_BARRA: TStringField
      DisplayLabel = 'C'#243'd.Barra'
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object cdsProdutoNCM_PRODUTO: TStringField
      DisplayLabel = 'NCM Produto'
      FieldName = 'NCM_PRODUTO'
      Size = 15
    end
    object cdsProdutoID_PRODUTO: TIntegerField
      DisplayLabel = 'Id Produto'
      FieldName = 'ID_PRODUTO'
      ProviderFlags = []
    end
    object cdsProdutoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsProdutoUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 18
    end
    object cdsProdutoTAMANHO: TStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'TAMANHO'
      FixedChar = True
      Size = 18
    end
    object cdsProdutoVL_UNIT: TFMTBCDField
      DisplayLabel = 'Valor Unit'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 15
      Size = 2
    end
    object cdsProdutoDT_ULT_COMPRA: TDateField
      DisplayLabel = 'Data Ult Compra'
      FieldName = 'DT_ULT_COMPRA'
      EditMask = '##/##/####'
    end
    object cdsProdutoDT_ULT_VENDA: TDateField
      DisplayLabel = 'Data Ult Venda'
      FieldName = 'DT_ULT_VENDA'
      EditMask = '##/##/####'
    end
    object cdsProdutoCOD_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'COD_PRODUTO'
    end
    object cdsProdutoID_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd.Fornecedor'
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsProdutoR_SOCIAL: TStringField
      DisplayLabel = 'Nome Fornecedor'
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 142
    Top = 188
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' P.COD_BARRA,'
      ' P.NCM_PRODUTO,'
      ' P.ID_PRODUTO,'
      ' P.DESCRICAO,'
      ' P.UNIDADE,'
      ' P.TAMANHO,'
      ' P.VL_UNIT,'
      ' P.DT_ULT_COMPRA,'
      ' P.DT_ULT_VENDA,'
      ' P.COD_PRODUTO,'
      ' P.ID_FORNECEDOR,'
      ' F.R_SOCIAL'
      'FROM'
      ' TB_PRODUTO P'
      'JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = P.ID_FORNECEDOR)')
    SQLConnection = ConexaoLocal
    Left = 49
    Top = 187
    object qProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object qProdutoNCM_PRODUTO: TStringField
      FieldName = 'NCM_PRODUTO'
      Size = 15
    end
    object qProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = []
    end
    object qProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 18
    end
    object qProdutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      FixedChar = True
      Size = 18
    end
    object qProdutoVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 15
      Size = 2
    end
    object qProdutoDT_ULT_COMPRA: TDateField
      FieldName = 'DT_ULT_COMPRA'
    end
    object qProdutoDT_ULT_VENDA: TDateField
      FieldName = 'DT_ULT_VENDA'
    end
    object qProdutoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object qProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qProdutoR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = qProduto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 81
    Top = 187
  end
  object qDinamica: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoLocal
    Left = 254
    Top = 24
  end
  object dspDinamica: TDataSetProvider
    DataSet = qDinamica
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 286
    Top = 24
  end
  object cdsDinamica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDinamica'
    Left = 318
    Top = 24
  end
  object dsDinamica: TDataSource
    DataSet = cdsDinamica
    Left = 350
    Top = 24
  end
  object qLogin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' U.ID_USUARIO,'
      ' U.ID_LOJA,'
      ' U.NOME_USUARIO,'
      ' U.LOGIN,'
      ' U.SENHA,'
      ' U.NIVEL_ACESSO,'
      ' L.R_SOCIAL'
      'FROM'
      'TB_USUARIOS U'
      'LEFT OUTER JOIN TB_LOJAS L ON (L.ID_LOJA = U.ID_LOJA)')
    SQLConnection = ConexaoLocal
    Left = 48
    Top = 233
    object qLoginID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object qLoginID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qLoginNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
    end
    object qLoginLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object qLoginSENHA: TStringField
      FieldName = 'SENHA'
      Size = 6
    end
    object qLoginNIVEL_ACESSO: TSmallintField
      FieldName = 'NIVEL_ACESSO'
    end
    object qLoginR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspLogin: TDataSetProvider
    DataSet = qLogin
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 80
    Top = 233
  end
  object cdsLogin: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogin'
    Left = 110
    Top = 233
    object cdsLoginID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object cdsLoginID_LOJA: TIntegerField
      DisplayLabel = 'C'#243'd.Loja'
      FieldName = 'ID_LOJA'
    end
    object cdsLoginR_SOCIAL: TStringField
      DisplayLabel = 'Loja'
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsLoginNOME_USUARIO: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_USUARIO'
    end
    object cdsLoginLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Size = 10
    end
    object cdsLoginSENHA: TStringField
      FieldName = 'SENHA'
      Size = 6
    end
    object cdsLoginNIVEL_ACESSO: TSmallintField
      FieldName = 'NIVEL_ACESSO'
    end
  end
  object dsLogin: TDataSource
    DataSet = cdsLogin
    Left = 142
    Top = 233
  end
  object cdsTabelaLoja: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTabelaLoja'
    Left = 312
    Top = 72
  end
  object dsTabelaLoja: TDataSource
    DataSet = cdsTabelaLoja
    Left = 344
    Top = 72
  end
  object qTabelaLoja: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoLocal
    Left = 254
    Top = 72
  end
  object dspTabelaLoja: TDataSetProvider
    DataSet = qTabelaLoja
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 284
    Top = 72
  end
  object cdsMovEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovEstoque'
    Left = 308
    Top = 178
    object cdsMovEstoqueID_MOV_ESTOQUE: TIntegerField
      FieldName = 'ID_MOV_ESTOQUE'
      Required = True
    end
    object cdsMovEstoqueID_LOJA: TIntegerField
      DisplayLabel = 'C'#243'd Loja'
      FieldName = 'ID_LOJA'
      Required = True
    end
    object cdsMovEstoqueDT_MOV: TDateField
      DisplayLabel = 'Data '
      FieldName = 'DT_MOV'
      EditMask = '##/##/####'
    end
    object cdsMovEstoqueDIA: TStringField
      DisplayLabel = 'Dia Semana'
      FieldName = 'DIA'
      Size = 10
    end
    object cdsMovEstoqueENTRADA: TFMTBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 15
      Size = 2
    end
    object cdsMovEstoqueSAIDA_DIV: TFMTBCDField
      DisplayLabel = 'Saida Diversas'
      FieldName = 'SAIDA_DIV'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 15
      Size = 2
    end
    object cdsMovEstoqueQT_VENDIDA: TFMTBCDField
      DisplayLabel = 'Quat.Pe'#231'as Vend'
      FieldName = 'QT_VENDIDA'
      DisplayFormat = '###,###'
      EditFormat = '###,###'
      Precision = 15
      Size = 2
    end
    object cdsMovEstoqueESTOQUE_DIARIO: TFMTBCDField
      DisplayLabel = 'Estoque Diario'
      FieldName = 'ESTOQUE_DIARIO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 15
      Size = 2
    end
    object cdsMovEstoqueESTOQUE_ANTERIOR: TFMTBCDField
      DisplayLabel = 'Estoque Anterior'
      FieldName = 'ESTOQUE_ANTERIOR'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 15
      Size = 2
    end
    object cdsMovEstoqueENTRADA_MERCADORIA: TFMTBCDField
      DisplayLabel = 'Entrada Mercadoria'
      FieldName = 'ENTRADA_MERCADORIA'
      DisplayFormat = '###,###'
      EditFormat = '###,###'
      Precision = 15
      Size = 2
    end
    object cdsMovEstoqueNR_DOC: TStringField
      DisplayLabel = 'N'#186' Doc'
      FieldName = 'NR_DOC'
    end
    object cdsMovEstoqueTP_MOV: TStringField
      DisplayLabel = 'Tipo Mov'
      FieldName = 'TP_MOV'
      Size = 7
    end
    object cdsMovEstoqueFANTASIA: TStringField
      DisplayLabel = 'Loja'
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsMovEstoque: TDataSource
    DataSet = cdsMovEstoque
    Left = 339
    Top = 178
  end
  object qMovEstoque: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' ME.ID_MOV_ESTOQUE,'
      ' ME.ID_LOJA,'
      ' ME.DT_MOV,'
      ' ME.DIA,'
      ' ME.ENTRADA,'
      ' ME.SAIDA_DIV,'
      ' ME.QT_VENDIDA,'
      ' ME.ESTOQUE_DIARIO,'
      ' ME.ESTOQUE_ANTERIOR,'
      ' ME.ENTRADA_MERCADORIA,'
      ' ME.NR_DOC,'
      ' ME.TP_MOV,'
      ' L.FANTASIA'
      'FROM'
      ' TB_MOV_ESTOQUE ME'
      'JOIN TB_LOJAS L ON (L.ID_LOJA = ME.ID_LOJA)')
    SQLConnection = ConexaoLocal
    Left = 249
    Top = 178
    object qMovEstoqueID_MOV_ESTOQUE: TIntegerField
      FieldName = 'ID_MOV_ESTOQUE'
      Required = True
    end
    object qMovEstoqueID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
      Required = True
    end
    object qMovEstoqueDT_MOV: TDateField
      FieldName = 'DT_MOV'
    end
    object qMovEstoqueDIA: TStringField
      FieldName = 'DIA'
      Size = 10
    end
    object qMovEstoqueENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Precision = 15
      Size = 2
    end
    object qMovEstoqueSAIDA_DIV: TFMTBCDField
      FieldName = 'SAIDA_DIV'
      Precision = 15
      Size = 2
    end
    object qMovEstoqueQT_VENDIDA: TFMTBCDField
      FieldName = 'QT_VENDIDA'
      Precision = 15
      Size = 2
    end
    object qMovEstoqueESTOQUE_DIARIO: TFMTBCDField
      FieldName = 'ESTOQUE_DIARIO'
      Precision = 15
      Size = 2
    end
    object qMovEstoqueFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 40
    end
    object qMovEstoqueESTOQUE_ANTERIOR: TFMTBCDField
      FieldName = 'ESTOQUE_ANTERIOR'
      Precision = 15
      Size = 2
    end
    object qMovEstoqueENTRADA_MERCADORIA: TFMTBCDField
      FieldName = 'ENTRADA_MERCADORIA'
      Precision = 15
      Size = 2
    end
    object qMovEstoqueNR_DOC: TStringField
      FieldName = 'NR_DOC'
    end
    object qMovEstoqueTP_MOV: TStringField
      FieldName = 'TP_MOV'
      Size = 7
    end
  end
  object dspMovEstoque: TDataSetProvider
    DataSet = qMovEstoque
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 279
    Top = 178
  end
  object spInsertSaidaEstoque: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_FIN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoLocal
    StoredProcName = 'INSERT_SAIDA_ESTOQUE'
    Left = 256
    Top = 120
  end
  object dspInsertSaidaEstoque: TDataSetProvider
    DataSet = spInsertSaidaEstoque
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 288
    Top = 120
  end
  object cdsInsertSaidaEstoque: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_FIN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end>
    ProviderName = 'dspInsertSaidaEstoque'
    Left = 320
    Top = 120
  end
  object spRecebeEstoque: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_QUANT'
        ParamType = ptInput
      end
      item
        DataType = ftSingle
        Precision = 4
        Name = 'PE_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_SAIDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 15
        Name = 'PE_TP_MOV'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoServidor
    StoredProcName = 'RECEBE_ESTOQUE_PDV_TROCA'
    Left = 256
    Top = 312
  end
  object dspRecebeEstoque: TDataSetProvider
    DataSet = spRecebeEstoque
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 288
    Top = 312
  end
  object cdsRecebeEstoque: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_QUANT'
        ParamType = ptInput
      end
      item
        DataType = ftSingle
        Precision = 4
        Name = 'PE_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_SAIDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 15
        Name = 'PE_TP_MOV'
        ParamType = ptInput
      end>
    ProviderName = 'dspRecebeEstoque'
    Left = 320
    Top = 312
  end
  object spRecebeEstoqueProduto: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PE_DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_QUANT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_ID_PRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoServidor
    StoredProcName = 'RECEBE_ESTOQUE_PRODUTO_PDV'
    Left = 456
    Top = 360
  end
  object dspRecebeEstoqueProduto: TDataSetProvider
    DataSet = spRecebeEstoqueProduto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 488
    Top = 360
  end
  object cdsRecebeEstoqueProduto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PE_DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_QUANT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_ID_PRODUTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspRecebeEstoqueProduto'
    Left = 520
    Top = 360
  end
  object spInsertSaidaEstoqueProduto: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PE_DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_TP_MOV'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoLocal
    StoredProcName = 'GRAVA_ESTOQUE_PRODUTO_VENDA'
    Left = 376
    Top = 120
  end
  object dspInsertSaidaEstoqueProduto: TDataSetProvider
    DataSet = spInsertSaidaEstoqueProduto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 408
    Top = 120
  end
  object cdsInsertSaidaEstoqueProduto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PE_DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_TP_MOV'
        ParamType = ptInput
      end>
    ProviderName = 'dspInsertSaidaEstoqueProduto'
    Left = 440
    Top = 120
  end
  object qEstoqueProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' E.ID_ESTOQUE,'
      ' E.ID_PRODUTO,'
      ' P.DESCRICAO,'
      ' E.ID_LOJA,'
      ' L.FANTASIA,'
      ' E.DT_MOV,'
      ' E.DOC,'
      ' E.ENTRADA,'
      ' E.SAIDA,'
      ' E.SALDO,'
      ' E.TP_MOV,'
      ' E.CUSTO_UNI,'
      ' E.SALDO_ANTERIOR'
      'FROM TB_ESTOQUE E'
      'JOIN TB_PRODUTO P ON (P.ID_PRODUTO = E.ID_PRODUTO)'
      'JOIN TB_LOJAS   L ON (L.ID_LOJA    = E.ID_LOJA)')
    SQLConnection = ConexaoLocal
    Left = 400
    Top = 176
    object qEstoqueProdutoID_ESTOQUE: TIntegerField
      FieldName = 'ID_ESTOQUE'
      Required = True
    end
    object qEstoqueProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qEstoqueProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qEstoqueProdutoID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qEstoqueProdutoFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 40
    end
    object qEstoqueProdutoDT_MOV: TDateField
      FieldName = 'DT_MOV'
    end
    object qEstoqueProdutoDOC: TStringField
      FieldName = 'DOC'
      Size = 100
    end
    object qEstoqueProdutoENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Precision = 18
      Size = 3
    end
    object qEstoqueProdutoSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Precision = 18
      Size = 3
    end
    object qEstoqueProdutoSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 3
    end
    object qEstoqueProdutoTP_MOV: TStringField
      FieldName = 'TP_MOV'
      Size = 1
    end
    object qEstoqueProdutoCUSTO_UNI: TFMTBCDField
      FieldName = 'CUSTO_UNI'
      Precision = 18
      Size = 2
    end
    object qEstoqueProdutoSALDO_ANTERIOR: TFMTBCDField
      FieldName = 'SALDO_ANTERIOR'
      Precision = 18
      Size = 3
    end
  end
  object dspEstoqueProduto: TDataSetProvider
    DataSet = qEstoqueProduto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 432
    Top = 176
  end
  object cdsEstoqueProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoqueProduto'
    Left = 464
    Top = 176
    object cdsEstoqueProdutoID_ESTOQUE: TIntegerField
      FieldName = 'ID_ESTOQUE'
      Required = True
    end
    object cdsEstoqueProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoqueProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsEstoqueProdutoID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsEstoqueProdutoFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 40
    end
    object cdsEstoqueProdutoDT_MOV: TDateField
      FieldName = 'DT_MOV'
    end
    object cdsEstoqueProdutoDOC: TStringField
      FieldName = 'DOC'
      Size = 100
    end
    object cdsEstoqueProdutoENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Precision = 18
      Size = 3
    end
    object cdsEstoqueProdutoSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Precision = 18
      Size = 3
    end
    object cdsEstoqueProdutoSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 3
    end
    object cdsEstoqueProdutoTP_MOV: TStringField
      FieldName = 'TP_MOV'
      Size = 1
    end
    object cdsEstoqueProdutoCUSTO_UNI: TFMTBCDField
      FieldName = 'CUSTO_UNI'
      Precision = 18
      Size = 2
    end
    object cdsEstoqueProdutoSALDO_ANTERIOR: TFMTBCDField
      FieldName = 'SALDO_ANTERIOR'
      Precision = 18
      Size = 3
    end
  end
  object qVendedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' V.ID_VENDEDOR,'
      ' V.ID_LOJA,'
      ' V.ID_GRUPO,'
      ' V.NOME,'
      ' V.dt_admissao,'
      ' V.ativo,'
      ' V.vl_comissao,'
      ' L.fantasia'
      'FROM TB_VENDEDOR V'
      'JOIN tb_lojas L ON (L.id_loja = V.id_loja)'
      'WHERE V.ID_LOJA = :ID_LOJA')
    SQLConnection = ConexaoLocal
    Left = 248
    Top = 224
    object qVendedorID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object qVendedorID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qVendedorDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
    end
    object qVendedorID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object qVendedorATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object qVendedorVL_COMISSAO: TFMTBCDField
      FieldName = 'VL_COMISSAO'
      Precision = 18
      Size = 2
    end
    object qVendedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 40
    end
  end
  object dspVendedor: TDataSetProvider
    DataSet = qVendedor
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 280
    Top = 224
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendedor'
    Left = 312
    Top = 224
    object cdsVendedorID_VENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd.Vendedor'
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object cdsVendedorID_LOJA: TIntegerField
      DisplayLabel = 'C'#243'd.Loja'
      FieldName = 'ID_LOJA'
    end
    object cdsVendedorNOME: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'NOME'
      Size = 30
    end
    object cdsVendedorDT_ADMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DT_ADMISSAO'
      EditMask = '##/##/####'
    end
    object cdsVendedorID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsVendedorATIVO: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Size = 1
    end
    object cdsVendedorVL_COMISSAO: TFMTBCDField
      DisplayLabel = '% Comiss'#227'o'
      FieldName = 'VL_COMISSAO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsVendedorFANTASIA: TStringField
      DisplayLabel = 'Loja'
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 344
    Top = 224
  end
  object qRecebeProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' P.ID_PRODUTO,'
      ' P.ID_FORNECEDOR,'
      ' P.COD_PRODUTO,'
      ' P.DESCRICAO,'
      ' P.UNIDADE,'
      ' P.TAMANHO,'
      ' P.VL_UNIT,'
      ' P.VL_VENDA,'
      ' P.COD_BARRA,'
      ' P.NCM_PRODUTO'
      'FROM'
      'TB_PRODUTO P'
      'ORDER BY P.COD_PRODUTO')
    SQLConnection = ConexaoLocal
    Left = 392
    Top = 232
    object qRecebeProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object qRecebeProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qRecebeProdutoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object qRecebeProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qRecebeProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 18
    end
    object qRecebeProdutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      FixedChar = True
      Size = 18
    end
    object qRecebeProdutoVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object qRecebeProdutoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Precision = 18
      Size = 2
    end
    object qRecebeProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object qRecebeProdutoNCM_PRODUTO: TStringField
      FieldName = 'NCM_PRODUTO'
      Size = 15
    end
  end
  object dspRecebeProduto: TDataSetProvider
    DataSet = qRecebeProduto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 424
    Top = 232
  end
  object cdsRecebeProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecebeProduto'
    Left = 456
    Top = 232
    object cdsRecebeProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsRecebeProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsRecebeProdutoCOD_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'COD_PRODUTO'
    end
    object cdsRecebeProdutoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsRecebeProdutoUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 18
    end
    object cdsRecebeProdutoTAMANHO: TStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'TAMANHO'
      FixedChar = True
      Size = 18
    end
    object cdsRecebeProdutoVL_UNIT: TFMTBCDField
      DisplayLabel = 'Valor Compra'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsRecebeProdutoVL_VENDA: TFMTBCDField
      DisplayLabel = 'Valor Venda'
      FieldName = 'VL_VENDA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsRecebeProdutoCOD_BARRA: TStringField
      DisplayLabel = 'C'#243'd.Barra'
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object cdsRecebeProdutoNCM_PRODUTO: TStringField
      DisplayLabel = 'Ncm'
      FieldName = 'NCM_PRODUTO'
      Size = 15
    end
  end
  object dsRecebeProduto: TDataSource
    DataSet = cdsRecebeProduto
    Left = 488
    Top = 232
  end
  object spDelProdutoPDV: TSQLStoredProc
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoLocal
    StoredProcName = 'DEL_PRODUTO_PDV'
    Left = 440
    Top = 40
  end
  object dspDelProdutoPdv: TDataSetProvider
    DataSet = spDelProdutoPDV
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 472
    Top = 40
  end
  object cdsDelProdutoPdv: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDelProdutoPdv'
    Left = 504
    Top = 40
  end
  object qEnviaProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' P.ID_PRODUTO,'
      ' P.ID_FORNECEDOR,'
      ' P.COD_PRODUTO,'
      ' P.DESCRICAO,'
      ' P.UNIDADE,'
      ' P.TAMANHO,'
      ' P.VL_UNIT,'
      ' P.VL_VENDA,'
      ' P.COD_BARRA,'
      ' P.NCM_PRODUTO'
      'FROM'
      'TB_PRODUTO P'
      'ORDER BY P.COD_PRODUTO')
    SQLConnection = ConexaoServidor
    Left = 32
    Top = 371
    object qEnviaProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object qEnviaProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qEnviaProdutoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object qEnviaProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qEnviaProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 18
    end
    object qEnviaProdutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      FixedChar = True
      Size = 18
    end
    object qEnviaProdutoVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object qEnviaProdutoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Precision = 18
      Size = 2
    end
    object qEnviaProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object qEnviaProdutoNCM_PRODUTO: TStringField
      FieldName = 'NCM_PRODUTO'
      Size = 15
    end
  end
  object dspEnviaProduto: TDataSetProvider
    DataSet = qEnviaProduto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 64
    Top = 371
  end
  object cdsEnviaProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEnviaProduto'
    Left = 96
    Top = 371
    object cdsEnviaProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsEnviaProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsEnviaProdutoCOD_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'COD_PRODUTO'
    end
    object cdsEnviaProdutoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsEnviaProdutoUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 18
    end
    object cdsEnviaProdutoTAMANHO: TStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'TAMANHO'
      FixedChar = True
      Size = 18
    end
    object cdsEnviaProdutoVL_UNIT: TFMTBCDField
      DisplayLabel = 'Valor Compra'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsEnviaProdutoVL_VENDA: TFMTBCDField
      DisplayLabel = 'Valor Venda'
      FieldName = 'VL_VENDA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsEnviaProdutoCOD_BARRA: TStringField
      DisplayLabel = 'C'#243'd. Barra'
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object cdsEnviaProdutoNCM_PRODUTO: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'NCM_PRODUTO'
      Size = 15
    end
  end
  object dsEnviaProduto: TDataSource
    DataSet = cdsEnviaProduto
    Left = 128
    Top = 371
  end
  object qDinamicaLocal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoLocal
    Left = 110
    Top = 27
  end
  object dspDinamicaLocal: TDataSetProvider
    DataSet = qDinamicaLocal
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 140
    Top = 27
  end
  object cdsDinamicaLocal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDinamicaLocal'
    Left = 168
    Top = 27
  end
  object dsDinamicaLocal: TDataSource
    DataSet = cdsDinamicaLocal
    Left = 198
    Top = 27
  end
  object qDinamicaServidor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConexaoServidor
    Left = 128
    Top = 312
  end
  object dspDinamicaServidor: TDataSetProvider
    DataSet = qDinamicaServidor
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 160
    Top = 312
  end
  object cdsDinamicaServidor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDinamicaServidor'
    Left = 192
    Top = 312
  end
  object dsDinamicaServidor: TDataSource
    DataSet = cdsDinamicaServidor
    Left = 224
    Top = 312
  end
  object I_BOTOES: TImageList
    Height = 32
    Width = 32
    Left = 452
    Top = 296
    Bitmap = {
      494C010109000E004C0020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000082000000820000008200000082000000820000008200000082000000
      8200000082000000820000008200000082000000820000008200000082000000
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000093655E009F6F60009F6F60009F6F60009F6F60009F6F60009F6F60009F6F
      600000008200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000093655F00EED4B800F4DABB00F2D5B100F0D1AA00EFCFA300EECB9D00EDC7
      960000008200FFFFFF00FFFFFF0007078A00FFFFFF004141AD00010184000707
      8A0007078A008C8CD00022229C0007078A0007078A008C8CD000FFFFFF000000
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000093655F00EED7C000F6E0C100F2D9B800F2D4B100F0D1AA00EFCFA400EECB
      9D0000008200FFFFFF00FFFFFF0007078A00FFFFFF00FFFFFF003030A4005656
      B700FFFFFF00AFAFDE005656B700FFFFFF00D4D4EE000D0D8F00FFFFFF000000
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000093655F00EFDAC500F7E2C700D5812700D5812700D5812700D5812700EFCE
      A30000008200FFFFFF00FFFFFF0007078A00FFFFFF00FFFFFF00FFFFFF004141
      AD004141AD00FFFFFF00FFFFFF008C8CD0003030A40022229C00FFFFFF000000
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000093656000F0DECC00F8E6CF00F6E0C600F3DCBD00F2D8B700F2D5B100F0D1
      AA0000008200AFAFDE00FFFFFF0007078A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0016169500AFAFDE00FFFFFF004141AD00030387008C8CD000FFFFFF000000
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000095666000F2E2D300FAEAD700D5812700F4DEC500D5812700D5812700D581
      2700000082006F6FC2000D0D8F0007078A00FFFFFF005656B7004141AD00FFFF
      FF000D0D8F006060BC0022229C00FFFFFF004141AD003030A400FFFFFF000000
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000098696300F2E6DA00FAEEDE00F7E7D400F6E2CB00F4E0C500F3DCBF00F2D8
      B70000008200FFFFFF00D4D4EE003030A400FFFFFF00D4D4EE00161695000707
      8A003030A400FFFFFF005656B70007078A0016169500D4D4EE00FFFFFF000000
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E6E6400F4EAE100FBF2E600D5812700D5812700D5812700F4E0C600D581
      270000008200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3726600F6EEE900FCF6ED00F8EFE300F7EADA00F7E6D300F6E2CC00F4DE
      C50000008200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A7756800F8F3F000FEFBF600D5812700D5812700F8EBDC00D5812700D581
      2700000082000000820000008200000082000000820000008200000082000000
      8200000082000000820000008200000082000000820000008200000082000000
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AC796900FAF6F400FFFFFE00FEF8F300FBF2EA00F8EEE300F8EBDA00F7E6
      D300F7E2CC00F6E0C500F3DCBF00F2D8B700F2D4B000F0D1AA00EFCEA300EECB
      9C00EEC99600EAC18E009F6F6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B17E6B00FAF6F400FFFFFF00FFFEFB00FEF7F000FBF3EA00FAEFE300F8EA
      DA00F7E7D300F6E2CB00F6E0C500F3DCBD00F2D7B500F2D3AD00F0D0A600EFCC
      A000EECB9C00EBC593009F6F6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B6816C00FAF6F400FFFFFF00D5812700D5812700D5812700D5812700D581
      2700D5812700D5812700D5812700D5812700D5812700D5812700D5812700D581
      2700EFCC9E00EDC999009F6F6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BB846E00FAF6F400FFFFFF00FFFFFF00FFFFFF00FFFEFB00FEF7F200FBF3
      EA00FAEEE300F8EADA00F7E6D300F6E2CA00F4DDC000F2D8B600EFD4AD00EFCF
      A600EDCC9F00E3C297009F6F6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0896F00FBF7F400FFFFFF00D5812700D5812700D5812700D5812700D581
      2700D5812700FAEEE200D5812700D5812700D5812700D5812700D5812700D581
      2700EECEA600E3C49A009F6F6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C58C7000FBF7F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFC
      FB00FCF8F200FBF3EA00F8EFE300FAEEDE00F7EAD800F7E5CE00F4E0C400F3DA
      BA00F0D5B000E7CAA5009F6F6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CB917300FBF7F400FFFFFF00D5812700D5812700D5812700D5812700D581
      2700D5812700D5812700D5812700D5812700F8EFE100D5812700D5812700D581
      2700F2D9BA00E9CAA9009F6F6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CF967400FBF7F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFCFA00FCF8F200FEFAF300F8F2EA00FAF0E500F8EDDC00F7E7
      D100F4E0C600F2D4AC009F6F6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D4987500FCF8F600FFFFFF00D5812700D5812700D5812700D5812700D581
      2700FFFFFF00D5812700D5812700D5812700D5812700D5812700D5812700D581
      2700F4DEC000F3D9B7009F6F6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D4987500FCF8F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FEFAF400FCF4EA00FAEEDE00F7E9
      D100F6E1C500F3DCBB009F6F6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D4987500FFFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFBF800FCF7EE00FAF0E200FAEB
      D700F7E3CA00F6DDBF009F6F6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
      6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
      6800CF8E6800CF8E68009F6F6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A87D7800B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDA46300EDA4
      6300EDA46300EDA46300EDA46300EDA463000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A6666006933340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AA7E7800F5DAAE00F5D8AB00F4D8A800F4D6A500F4D5A300F3D3
      A000F2D39D00F2D19C00F2D19A00F2D09800F2D09800F2D09800F5D49A00B389
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDA46300FBDAAA00FEDAB000FED1
      A700FAC29100F3B47B00EEA66700EDA36000EDA46300EDA46300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A6666009A666600A3666600A76666006933340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AC817A00F6DDB400F6DBB100F4DAAD00F4D9AA00F4D7A700F4D5
      A400F3D4A200F3D39F00F2D29D00EECC9700EECC9700EECC9700F1CF9800B389
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDA46300FCE7B800FFF2C700FEDEB200FCCF
      A400FAC09000F3B47B00EEA76800EDA46200EDA46200EDA46300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A6666009A666600A066
      6600B0666700C6666700CC666700B36667006933340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AF847B00F6DFBA00F5DEB700F5DDB300F5DAB000F5D9AD00F4D8
      AA00F3D7A600F3D5A400F3D4A100EECC9800EECC9700EECC9700F1CF9800B389
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDA46300FFFACF00FEEEC200FEDCB200FCCF
      A400FAC19100F3B47B00EEA76800EDA46300EDA46300EDA46300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A6666009A666600AF686900C0696A00CF69
      6A00CE686900CD676800CD676800B366670069333400AE6666009A6666009A66
      66009A6666009A6666009A6666009A6666009A6666009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B3877D00F7E2C000F7E0BC00F6DFB900F6DEB500F6DCB200F4DA
      AF00F5D9AB00F4D8A800F3D6A500EFCF9E00EECC9800EECC9700F1CF9800B389
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDA46300FFFCD100FEEEC200FEDEB400FCD0
      A500FAC29200F3B57D00EEA76900EDA46200EDA46300EDA46300EDA463000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066676900BE988E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600D26F7000D56F7000D46E6F00D36D
      6E00D26C6D00D16B6C00D06A6B00B467680069333400FEA2A300FDA8A900FCAF
      B000FBB6B700FABCBD00F9C2C200F9C5C600F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B78A7E00F8E5C700F7E3C300F7E2BF00F6E1BC00F6DFB8000D7C
      160016882300F5DAAE00F4D9AA00F1D2A600EFCE9E00EECC9700F1CF9700B389
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDA46300FAE0AA00FFFFD300FEEEC200FEDEB400FCD0
      A500FAC29200F3B57E00EEA96900EDA46200EDA46300EDA46300EDA463000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000509AD3004596E7006C757E00C49C
      9100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600D9737400D8727300D7717200D670
      7100D56F7000D46E6F00D36D6E00B6696A006933340059B2670033CB670033CB
      670033CB670033CB670033CB670033CB6700F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BA8D8000F9E8CD00F8E6C900F8E4C600F7E3C100016D05002EA8
      48005DE78E0004700900F5DBB000F1D5AD00F0D2A600F0CF9D00F0CE9900B389
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDA46300FCEDBB00FFFFD400FFEEC200FEE0B400FCD1
      A600FAC49300F3B67F00EFA96A00EDA46300EDA46300EDA46300EDA463000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004FA7EA004FA7EA004596E7006C75
      7E00C49C91000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600DC767700DB757600DA747500D973
      7400D8727300D7717200D6707100B86B6B006933340059B2670033CB670033CB
      670033CB670033CB670033CB670033CB6700F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BF918200F9EBD300F9E9CF00F8E7CB00006A0100249C3A0058E2
      890060EC930045D06A0004700900F2D8B500F1D5AD00F0D2A500F1D09E00B389
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0B77900FEF7CA00FFFFD400FFF3C700FFE3BA00FED4
      AB00FBC59700F4B78100EFA96B00EDA46200EDA46300EDA46300EDA46300EDA4
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004FA7EA004FA7EA004596
      E7006C757E00C49C910000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600DF797A00DF797A00DE787900DD77
      7800DC767700DB757600DA747500B96C6D006933340059B2670033CB670033CB
      670033CB670033CB670033CB670033CB6700F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C3958300FAEED900FAECD600047009001F9A31004FD37B0059E4
      890049D371002BBB450027B7400004700900F2D8B500F2D6AD00F3D4A600B389
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDA46300F4CA9200FFFFDC00FFFACC00FBDEAB00F6C59000F3B7
      7F00F2B17700F0AC6E00EEA66700EDA46200EDA36200EDA46300EDA46300EDA4
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004FA7EA004FA7
      EA004596E7006C757E00B8948A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600E37D7E00E27C7D00E17B7C00E07A
      7B00DF797A00DE787900DD777800BB6E6F006933340059B2670033CB670033CB
      670033CB670033CB670033CB670033CB6700F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C8998400FBF1DF00FAEFDC0004700900047009000470090031B4
      4E003ACB5C00047009000470090004700900F4DCBC00F3D9B400F5D8AE00B389
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDA46300F7D39A00F2C78C00E1954C00DC843A00DE863C00E28F
      4600E79C5500EAA96500EDB06E00EEB17000EEAC6A00EDA56400EDA46300EDA4
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004FA7
      EA004FA7EA004596E700676A6C0000000000B08D8700C6A09300C6A09300BD98
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600E6808100E57F8000E47E7F00E37D
      7E00E27C7D00E17B7C00E07A7B00BD7070006933340059B2670033CB670033CB
      670033CB670033CB670033CB670033CB6700F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC9D8600FCF3E500FBF1E200FBF0DE00FAEEDA00006700001894
      29002FC74C0004700900F8E6C800F6E2C900F5DFC200F6DEBC00F4DAB400B389
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDA66500D9813500C2540A00C5570C00D06C1F00DC833900E597
      5000EAAB6700EFBB7B00F2C78A00F3CA8F00F2C48600EEB57300EAA66300EDA3
      6000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004FA7EA00F1DBEA00C49C9100BB968C00F5E1B900FEFDE500FEFDE500FDF9
      D900DEBE9E00B38D860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600E9838400E8828300E7818200E680
      8100E7878800ECA6A700E47E7F00BE7172006933340073B8760033CB670033CB
      670033CB670033CB670033CB670033CB6700F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0A08800FCF6EA00FCF4E700FBF3E400FBF1E000056F0A001491
      22001DB8320004700900F9E9CE00F9E8D300F9E7CD00EFDCC000D3C3A900A28D
      8300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DE894100B7440100BA480200CA631600D7782B00E28E4400E9A1
      5C00EFB67500F3C98F00F7DCA500FAE2AC00F4D59D00F0C28400EAAB6900EAA0
      5D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CDA89600F7E7C000FDF9D900FDFBDC00FDFBDC00FEFD
      E500FDFDEA00F1DBEA00B08D8700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600ED878800EC868700EB858600EA84
      8500F2B9BA00FFFFFF00F0B0B000C073740069333400F2D9C000C7F0BC0079DD
      900079DD900060D6810060D6810060D68100F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300FDF7ED00FDF5EA00FCF4E700097A10000F97
      1C0010AD200004700900FAEBD500F8E8D700E4D4C400C4B7AB00B2A79F00A08A
      8300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3934C00C1530A00BB4A0300CA631600D77A2D00E3904700E9A4
      5F00EFBA7A00F4D09700FBE9B600FEF2C200F7E0AA00F2C78C00EDB16D00EAA3
      5F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6A09300F5DBAE00FBF4D300FDFBDC00FEFDE500FDFD
      EA00FDFDEA00FDFDEA00CDA89600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600F08A8B00EF898A00EE888900ED87
      8800F5BBBC00FFFFFF00F0AAAB00C275750069333400F2D9C000FFFFDD00FFFF
      DD00FFFFDD00FFFFDD00E2F8CC00E2F8CC00F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BA858400F6E1C700F5DFC200F4DDBD00F3DAB900F3D8B400F1D5
      B100F1D4AC00F1D2AA00B7818300FDF9F200FDF7EE00FCF6EB000983110010A8
      1D000D9C190004700900FAEFDA00B3817600B3817600B3817600B3817600B381
      7600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5965000D16F2400CC671A00D5752900E18C4300E2A0
      5A000157030001570300FAE0AB00FBE5B200F6D59F00F0BB7D00EDA767000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6A09300F5DDB000E6C59E00F9EECB00FEFDE000FEFDE500FDFD
      EA00FDFDEA00FDFDEA00F9EECB00B8948A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600F38D8E00F28C8D00F18B8C00F08A
      8B00EF898A00F3A6A700ED878800C376770069333400F2D9C000FFFFDD00FFFF
      DD00FFFFDD00FFFFDD00FFFFDD00FFFFDD00F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BE898500F7E6CE00F6E3C900F5E0C400F4DDC000F3DBBB00F2D8
      B600F2D6B200F2D4AE00B7818300FDFBF700FEFAF3000A88120010A51B000DA0
      1A0004700900FCF2E400FBF1E100B3817600DBA97D00F7BB6200E8A15000BE83
      7C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7995400E3914A00E5934D000157
      03001E9A350040DC720002590500F0BA7B00EFAD6E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6A09300F5DDB000D9B89B00F5DBAE00FDF9D900FEFDE000FEFD
      E500FEFDE500FEFDE000F9EECB00BB968C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600F6909100F6909100F58F9000F48E
      8F00F38D8E00F28C8D00F18B8C00C578780069333400F2D9C000FFFFDD00FFFF
      DD00FFFFDD00FFFFDD00FFFFDD00FFFFDD00F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C48F8600F8E9D600E4A95B00E4A85A00E4A75900E3A758000470
      090004700900056F090007770E000D8919000D9619000C9818000A8B13000470
      0900FCF7ED00FDF5E900FCF4E700B3817600E5B47E00EDB47100BD8681000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008B5858008B58
      58008B5858000000000000000000000000000000000000000000015703001890
      2D0043E1780036D5630018A32C00015703000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BB968C00F7E7C000E6C59E00E9CAA200F5E1B900FDF9D900FEFD
      E000FDFBDC00FEFDE000F5E1B900B48E87000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600FA949500F9939400F8929300F791
      9200F6909100F58F9000F48E8F00C77A7A0069333400F2D9C000FFFFDD00FFFF
      DD00FFFFDD00FFFFDD00FFFFDD00FFFFDD00F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C9958800F9EEDD00F8EBD800F7E8D300F6E5CE00F6E2C800F5E0
      C300047009000470090006770C0007760D0006770C0006730A00056F0A00FDFA
      F500FDF9F200FDF8EF00FCF6EC00B3817600D4A27E00BE898600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000925B56008B585800C69A7F00C6997D00C4957A008B585800EEBC
      7600BB81540000000000000000000000000000000000015703000B7B14001990
      2D0027B2470022B63D00129922000F951D000157030000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEBE9E00FEFDE500F5E1B900E9CAA200F3D5A600F7E7
      C000FBF4D300FDF9D900B6908700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600FD979800FC969700FB959600FA94
      9500F9939400F8929300F7919200C87B7C0069333400F2D9C000FFFFDD00FFFF
      DD00FFFFDD00FFFFDD00FFFFDD00FFFFDD00F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CF9C8A00FBF1E400E4AA5E00E4A95D00E4A95C00E4A85B00E4A8
      5A00E4A75900F4DEC100B7818300DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA48200DAA48200B3817600B985810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E6D6A00E1C6AF008B585800E7BA7D00E7BA7D00E7BA7D008B585800A35D
      2C00AD6F44008B58580000000000000000000000000001570300015703000157
      03000C7F180015A5280001570300015703000157030000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B38D8600F1DBEA00FDFDEA00F3D5A600E6C59E00F2D2
      A300F7E7C000D5B39900B6908700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600FF999A00FF999A00FE989900FD97
      9800FD979800FC969700FB959600CA7D7D0069333400F2D9C000FFFFDD00FFFF
      DD00FFFFDD00FFFFDD00FFFFDD00FFFFDD00F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D5A28B00FCF4EB00FBF2E600FAEFE200F9EDDD00F9EAD700F8E7
      D200F6E4CD00F5E1C800B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4767400F0E3CA00E7BA7D00AA6838008B5858008B585800D9B292008B58
      5800CC9A73008B58580000000000000000000000000000000000000000000157
      030010841C000A96160001570300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B08D8700CDA89600F5E1B900F5DEB300ECCD
      A300B6908700B690870000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600FF999A00FF999A00FF999A00FF99
      9A00FF999A00FE989900FE989900CC7F7F0069333400F2D9C000FFFFDD00FFFF
      DD00FFFFDD00FFFFDD00FFFFDD00FFFFDD00F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBA98D00FDF7F100E5AC6100E5AB6000E5AB5F00E4AA5E00E4A9
      5D00F7E9D400DED4BF00B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B5858008B585800C5813A00AC530500A46B4E00E2C4B000E5BC9300C78A
      5300B87B46008B58580000000000000000000000000000000000000000000157
      03000A8313000374080001570300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BA958B00BB968C00B691
      8800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A666600F9969700FF999A00FF999A00FF99
      9A00FF999A00FF999A00FF999A00CD80800069333400F2D9C000FFFFDD00FFFF
      DD00FFFFDD00FFFFDD00FFFFDD00FFFFDD00F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1AF8F00FDFBF700FDF9F300FCF6EF00FBF4EB00FAF2E600EEDB
      D000B8857A00B8857A00BC877C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008B5858008B585800A7581700CA884200D1A073008B5858008B58
      58009F6A54000000000000000000000000000000000000000000000000000157
      0300036F07000157030000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A6666009A666600C0797A00DF898A00FF99
      9A00FF999A00FF999A00FF999A00CD80800069333400F2D9C000FFFFDD00FFFF
      DD00FFFFDD00FFFFDD00FFFFDD00FFFFDD00F9C5C6009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6B59000FEFDFC00FEFCF800FDF9F500FDF8F100FCF5EC00DECC
      CE00B8857A00E6A75E00CD8F6400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000090523C00AC5B1600AF6628008B585800E7BA7D00E7BA
      7D008B585800000000000000000000000000000000000000000005730A00047F
      0A00015703000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A6666009A666600A76C
      6D00C67C7D00F2939400FF999A00CD80800069333400A76666009A6666009A66
      66009A6666009A6666009A6666009A6666009A6666009A666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EABA9100FFFFFF00FFFEFD00FEFCFA00FEFBF700FDF8F300DFD2
      D600B8857A00D59A770000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008B5858008B585800E7BA7D00E7BA7D008B58
      5800000000000000000000000000000000000157030001570300015703000157
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A6666009A666600AD707000B37373006933340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDBD9200DCA88700DCA88700DCA88700DCA88700DCA88700DCA8
      8700B8857A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008B5858008B5858008B5858008B58
      5800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A6666006933340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000669A000066
      9A0000669A0000669A0000669A0000669A0000669A0000669A0000669A000066
      9A0000669A0000669A0000669A0000669A0000669A0000669A0000669A000066
      9A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AE746C009F5252009A4D4E009C4E4F0099474800A373
      7400B7B8B800B8B6B600B9B7B700BAB8B700BAB7B700B9B7B700B8B6B600B7B6
      B600B8B8B800A471710098454600994A4B00994B4C009A4D4E009A4D4E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A97F7900B3897B00B3897B00B3897B0000669A0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF000066
      9A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4817600C36E6B00C9646400C9646400CB656500B75757009A69
      6A00B0B1B100CDCDCB00E5E3E100F2EFED00F9F5F200F9F5F100EEEBEA00E3E2
      E000DEDFDF00B6767600952C2C00983535009E3A3A00C15B5B00C06061009A4C
      4D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AEABAC00CCCACB00B1AFAF00A09D9E000000000000000000ACAAAB00D3D3
      D300DBDADA00C0BEBE00ADAAAB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A97F7A00F2DEC800F7E3CA00F5DFC20000669A0000CC
      FF0000CCFF008181810081818100818181008181810081818100818181008181
      8100818181008181810081818100818181008181810000CCFF0000CCFF000066
      9A00000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B
      0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B
      0000BC4B0000BC4B0000BC4B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4817600C36E6B00CD656500CD666600CE676700BA5859009B6C
      6C00A18D8D00B5818000CFAFAC00DFCCCA00F9F5F100FFFCF900FBF7F500EFED
      EB00E8E9E800B9767700942A2900983333009E393900C25C5C00C26262009A4C
      4D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEABAC00C7C5
      C600F4F3F300F7F6F600BCBABA00B1AFAF005D5C5D00615F600088868700AEAC
      AC00CBCACA00E3E2E200E7E7E700D5D4D400B6B4B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A97F7A00F2E0CE00F8E7CF00F5E2C80000669A0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF000066
      9A00000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000FFFFFF00FFFAF000FFF4E500FFEFDA00FFEACF00FFE5
      C400FFE0BA00FFDCB100FFD8A900FFD4A300FFD19F00FFD19F00FFD19F00FFD1
      9F00FFD19F00FFDDAF00BC4B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4817600C36E6B00CC656500CB666600CE676700B85858009E71
      7100A17D7E009E3D3C00B4706E00C9A09D00ECE8E500FBF7F500FEFAF700F9F5
      F200F0F0EF00BB797800942A2A00983333009E393900C25C5C00C26262009A4C
      4D00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADABAC00BBB8B900EAE9E900FFFE
      FE00FDFCFC00F3F2F200BAB8B800B2B0B0004C4B4D0023232500303032004242
      44006260620087848600AFADAD00D2D1D100E9E8E800DEDDDD00AAA7A8000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A97F7A00F3E3D200F9E9D400F6E4CD0000669A000066
      9A0000669A0000669A0000669A0000669A0000669A0000669A0000669A000066
      9A0000669A0000669A0000669A0000669A0000669A0000669A0000669A000066
      9A00000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000FFFFFF00FEF7ED00FFF0E300FEEDD900FFE9CF00FEE3
      C500FEDEBA00FED9B100FED4A700FED0A000FECE9A00FECB9600FECB9600FECB
      9600FECB9600FFD7A500BC4B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4817600C36E6B00CC656500CB666600CE676700B8585800A274
      7400A7848400972F2F009F3F3F00B5757300DED8D700F2EFED00FBF7F500FEFB
      F800FAFAF700BE7C7C0094292A00983333009E393900C25C5C00C26262009A4C
      4D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AFADAE00E1DFDF00FDFCFC00FCFBFB00FAF9
      F900FCFBFB00EDEBEC00B6B4B400B6B4B400989798006F6E6F004C4B4D003333
      350028282A002E2E300041414300605F60008C898A00A7A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A97F7B00F4E6D800FAECDA00F8E7D300F6E4CC00F5E1
      C700F5DFC200F4DCBC00F3D9B600F2D7B000F1D4AB00F1D2A600F0CFA000EECD
      9A00EECC9700EECC9700EFCD9700EDCB9600B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000FFFFFF00FFFBF400FFF6ED00FFF2E500FEEDDA00FFE9
      D000FEE3C500FEDEBB00FED9B100FED4A900FED0A000FECE9900FECB9600FECB
      9600FECB9600FFD7A500BC4B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4817600C36E6B00CC656500CB666600CE676700B8585800A576
      7600AD89880098323200972F2F00A0484800C9C2C100E5E3E100F3F0ED00FDF9
      F600FFFFFD00C27F7E0093292900983333009E393900C25C5C00C26262009A4C
      4D00000000000000000000000000000000000000000000000000000000000000
      000000000000A4A1A200D1CFCF00F8F7F700FBFAFA00F7F6F600F7F6F600EAE9
      E900C8C7C700ADABAC00A09D9E00A3A1A100AFACAD00B8B5B600B3B1B1009E9D
      9D007B7A7B005756570038383A002627290043424400A19E9F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AA807B00F5E9DD00FBEFE000F8EAD900F7E6D200F6E4
      CD00F5E1C800F4DEC200F4DCBC00F3D9B600F2D7B100F1D4AC00F1D2A600F0CF
      A000EECC9900EECC9700EFCD9700EDCB9600B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000FFFFFF00FFFEFC00FFFBF400FFF7EE00FFF2E500FEEE
      DA00FEE9D000FFE3C600FEDEBC00FED9B100FED4A900FED1A100FECE9A00FECB
      9700FECB9600FFD7A500BC4B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4817600C36E6B00CC656500CB666600CE676700B7575700AB7A
      7900B58C8B00972B2B00972B2B0097323200ADA6A600CFCFCE00E6E3E000F6F3
      F000FFFFFD00C482800093292900983333009E393900C25C5C00C26262009A4C
      4D00000000000000000000000000000000000000000000000000000000000000
      000000000000A4A1A200F0F0F000F4F4F400F1F0F000E2E1E100C1BFBF00ABA8
      A900B9B7B700D4D3D300B7B5B500A8A5A500A29FA0009F9C9D00A2A0A000ABA8
      A900B5B3B200B5B3B300A7A5A600848384006C6C6D00A2A0A000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD837D00F5ECE300FBF2E600DF993E00DF993E00DF99
      3E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF99
      3E00DF993E00DF993E00EFCD9700EDCB9600B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000FFFFFF00FFFFFF00FFFEFC00FFFBF600FFF7EF00FFF3
      E500FEEFDA00FFE9D000FFE3C600FFDEBC00FFD9B400FED5AA00FED1A100FECE
      9A00FECC9700FFD7A500BC4B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4817600C36E6B00CC656500CB666600CE676700B5565600AE7C
      7B00C5AAA800A6656500A16060009D6464009E9F9F00B4B9B800D3D6D400ECEF
      EC00FFFFFF00C382810090262600953030009C373700C15B5B00C26262009A4C
      4D00000000000000000000000000000000000000000000000000000000000000
      000000000000A4A1A200E6E5E500DBDADA00BAB8B800A9A6A700BAB8B800D6D5
      D600DFE0DF00E4E3E300E8E7E700D8D6D600C9C7C700BAB8B800AFACAD00A5A2
      A300A19E9F00A09D9E00A7A4A400B1AEAE00B6B4B400A7A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2887E00F7EFE800FCF5EC00FAEFE400F9ECDD00F8E9
      D800F7E7D300F6E4CD00F5E1C700F5DFC100F4DCBC00F3D9B700F1D7B000F1D4
      AB00F0D2A500F0CF9F00EFCD9A00EDCA9600B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000FFFFFF00FFFFFF00FFFFFF00FFFEFE00FFFBF600FEF7
      EF00FEF4E700FFEEDC00FEEAD100FEE5C600FFE0BD00FFD9B200FED4AA00FFD3
      A100FECE9C00FFD7A600BC4B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4817600C36E6B00CC656500CB666600CE676700BD5C5C00B971
      7200D3A7A500C9A0A000BF999900B8949400B18D8D00B18D8D00C39F9E00D8B2
      B100E6C2C000C5777600A73F3F00AA454500AE494900C6606000C26162009A4C
      4D00000000000000000000000000000000000000000000000000000000000000
      000000000000A4A1A200B2B0B100A9A7A700BBBABA00D4D4D400DCDDDD00D9D9
      D900D5D5D500ECEBEB00F8F7F700F6F6F600F1F0F000E7E6E600DAD9D900CDCC
      CC00C0BEBE00B5B3B300AAA8A800A3A1A100A19E9F009D9A9B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B68B8000F8F2EE00FDF8F100FAF3EA00F9EFE300F9EC
      DD00F8E9D800F7E6D200F6E4CC00F5E1C600F4DFC100F4DCBC00F3D9B600F2D6
      B000F1D4AA00F0D1A400F0D09F00EDCB9800B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFB
      F700FFF8F000FFF3E600FFEEDC00FEE9D100FFE5C700FEDEBD00FFDAB400FED7
      AB00FFD1A300FFD9AC00BC4B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4817600C36E6B00CD666600CD666600CD666600CC656500CC63
      6300CB616100CB626200CB626200CC616200CC616200CB616100CA5F5F00CA5F
      5F00C95F5F00CB626200CC656500CC636300CD666600CE676700C06061009A4C
      4D00000000000000000000000000000000000000000000000000000000000000
      000000000000A4A1A200BCBABB00D5D4D400DADADA00D7D7D700D6D6D600D3D3
      D300E3E3E300F7F6F600C5C3C400C6BCC400D1CFD000E1E0E000E8E8E800E9E9
      E900E2E2E200D9D9D900CFCECE00C4C3C300BCBABA00A8A5A600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BA8E8200FAF6F400FEFCF800DF993E00DF993E00DF99
      3E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF99
      3E00DF993E00DF993E00F1D2A500EECD9E00B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFE
      FE00FFFCF800FFF7F000FEF3E700FEEEDD00FEEAD400FFE6C900FFE0BD00FEDA
      B500FFD5AB00FFDDB400BC4B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4817600C36E6B00C6606000C15D5C00C4636100C86C6B00CB72
      7200CD777600CD777600CD777600CD777600CD777600CD777600CD777600CD77
      7600CD777600CD777600CD777600CD797800CD6F6F00CD666600C06061009A4C
      4D00000000000000000000000000000000000000000000000000000000000000
      000000000000A4A1A200D6D6D600D8D8D800D6D6D600D6D6D600D4D4D400E0E0
      E000F7F6F600C0BCBE00AEB2AD0080C18400B2B6B100AEAAAC00B0AFAF00BCBB
      BB00CAC9C900D8D7D700DCDCDC00DCDCDC00DADADA00AFAEAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BE928300FBF8F700FFFFFE00FEFAF600FCF5EF00FAF2
      EA00FAF0E300F9ECDD00F9E9D800F8E7D200F6E4CD00F5E1C700F5DEC100F4DC
      BC00F3D9B600F2D7B000F2D5AB00EFCFA400B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FFFBF800FFF8F000FFF3E700FFEFDE00FFEAD400FEE5C900FEE0
      C000FEDCB500FFE1BC00BC4B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4827600C46F6C00B04E4A00A5494400B56C6800C48F8C00D0AB
      A900D7BCBB00D8BFBE00D8BEBD00D8BEBD00D8BEBD00D8BEBD00D8BEBD00D8BE
      BD00D8BEBD00D8BEBD00D8BEBD00D8C3C200D1909000CC616100C06061009A4C
      4D00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFBDBE00DBDBDB00D8D9D900D9D9D900E6E6E600EAE9
      E900B7B5B500BDBBBC00F2F2F100D4F1D500EBEEEB00E7E5E600FAC0AF00C1BF
      C000B3B1B100AAA7A800AFACAD00BDBBBB00BDBBBC00B6B3B400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C2968500FBF8F700FFFFFF00FFFEFC00FEF9F400FCF6
      EF00FBF3EA00FAEFE300F9EDDD00F8E9D700F8E7D200F6E4CC00F5E0C500F5DD
      BF00F4DBB900F3D8B400F2D7B000F0D2A900B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFE00FFFCF800FFF7F000FFF3E900FFEFE000FEEBD400FEE5
      CA00FEE1C000FFE6C700BC4B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4827600C46E6B00AC454100CE9E9A00FAF5F300F6EDEC00F7EF
      EE00F8F1F000F8F1F000F8F1F000F8F1F000F8F1F000F8F1F000F8F1F000F8F1
      F000F8F1F000F8F1F000FAF3F200EEE5E400CD8E8D00C3595900C06061009A4D
      4E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5B3B400CAC9C900D6D5D500C6C4C400AEAC
      AC00CCCACA00F7F6F600F7F6F600F7F2F600EFEDED00EBEAEA00E9E9E900E8E8
      E800E2E2E200D9D9D900CDCDCD00AAA8A900A5A2A30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6998600FBF8F700FFFFFF00DF993E00DF993E00DF99
      3E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF99
      3E00DF993E00DF993E00F3D8B200F1D5AE00B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFEFE00FFFCF800FFF8F000FFF4E900000D6600000D
      6600FEE6CB00FFEDD300BC4B000000000000000D6600000D6600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4827600C46E6B00AC454100D2A6A300FFFFFF00FBF5F400FBF5
      F400FBF5F400FBF5F400FBF5F400FBF5F400FBF5F400FBF5F400FBF5F400FBF5
      F400FBF5F400FBF5F400FDF7F600EFE7E600CC8D8C00C1575700C06061009A4D
      4E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A19E9F00BBBABA00DCDC
      DC00CDCDCD00ADAEAE00C9C9C900DDDCDC00E6E5E500E8E7E700E6E6E600E4E4
      E400E5E5E500E0E0E000C5C5C500BAB7B8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CA9C8800FBF8F700FFFFFF00FFFFFF00FFFFFF00FFFE
      FC00FEF9F500FCF6EF00FBF2EA00FAEFE300F9ECDD00F8E9D600F7E5CE00F5E1
      C600F3DEBF00F3DAB900F1D8B300EAD0AC00B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000D66005474FF000013
      9C00000D6600FFFFFB00BC4B0000000D660000139C0000139C00000D66000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4827600C46E6B00AC454100D1A4A100FFFFFD00F8F2F100F8F1
      F000F8F2F100F8F2F100F8F2F100F8F2F100F8F2F100F8F2F100F8F2F100F8F2
      F100F8F2F100F8F1F000FBF5F400EFE6E500CC8D8C00C1575700C06061009A4D
      4E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1AFB000F6F7F700F7F6
      F500E2DFDE00BCBABA00BABBBB00C4C7C800D4D7D800D5D8D800D8D9D900D8D8
      D800C6C5C600ADABAC00BAB7B800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CEA08900FCF9F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFEFC00FEF9F500FCF5EF00FBF2E900FAF0E400F9EDDE00F8EBD700F6E6
      CF00F5E2C700F4DEBF00F2D9B900EAD1AF00B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC4B0000EFAC5F00EEAB5F00EEAB5F00EEAB5F00EEAB5F00EEAB
      5F00EEAB5F00EEAB5F00EEAB5F00EEAB5F00EEAA5E00000D66005474FF001E41
      FE0000139C00000D6600000D66000524FC00021FFC0000139C00000D66000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4827600C46E6B00AC454100D1A4A100FFFFFE00E9E4E300CCCA
      CA00CDCCCC00CDCCCC00CDCCCC00CDCCCC00CDCCCC00CDCCCC00CDCCCC00CDCC
      CC00CDCCCC00CAC9C800E6E2E200F2E8E700CC8D8C00C1575700C06061009A4D
      4E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EED9D800FFEA
      E200FFE5DA00FEDFD400FADDD300F6DCD300F1DCD600ECDEDA00E6E1DF00DBDB
      DB00C8C7C8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D2A38A00FCF9F700FFFFFF00DF993E00DF993E00DF99
      3E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF99
      3E00DF993E00DF993E00F4DFC100EDD6B800B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BF4B0000C4480000C2480000C2480000C2480000C2480000C248
      0000C2480000C2480000C2480000C2480000C2480000C2480000000D66005474
      FF001F41FE0000139C0000139C000A2AFC0000139C00000D6600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4827600C46E6B00AC454100D1A4A100FFFFFE00F5EEEE00EDE8
      E700EDE8E700EDE8E700EDE8E700EDE8E700EDE8E700EDE8E700EDE8E700EDE8
      E700EDE8E700ECE7E600F5F0F000F1E7E600CC8D8C00C1575700C06061009A4D
      4E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5C4C100FFE7
      DD00FFE1D500FFDACE00FFD4C500FFCEBC00FFC9B700FFC7B300FDC1AE00EBD2
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7A78C00FCF9F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFEFC00FDF9F400FCF6EF00FDF7EF00FAF3E800F9EF
      E100F9ECDB00F7E8D200F5E2C900EED6BB00B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B
      0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000000D
      66005474FF001F41FE00163AFE0000139C00000D660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4827600C46E6B00AC454100D1A4A100FFFFFE00ECE7E600D4D1
      D100D5D2D200D5D2D200D5D2D200D5D2D200D5D2D200D5D2D200D5D2D200D5D2
      D200D5D2D200D2D0D000E9E5E500F1E8E700CC8D8C00C1575700C06061009A4D
      4E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6C5C100FFEB
      E100FFE1D500FFDACE00FFD5C700FECFBF00FECAB800FFC4B000F9B9A7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DAAB8D00FCF9F800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFDFB00FDFAF500FEFBF600FAF5EF00FBF4
      EB00FAF1E400F9EDDC00F7E7D300F5DEBE00B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000000D
      66005474FF002649FE001F41FE0000139C00000D660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4827600C46E6B00AC454100D1A4A100FFFFFE00F2ECEB00E5E0
      DF00E5E1E000E5E1E000E5E1E000E5E1E000E5E1E000E5E1E000E5E1E000E5E1
      E000E5E1E000E4DFDF00F2EDEC00F1E7E600CC8D8C00C1575700C06061009A4D
      4E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECCDC800FFEB
      E100FFE1D500FFDACE00FFD5C700FECFBF00FECAB800FFC5B100F0B4A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEAD8E00FDFAF800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFDFC00FFFDFB00FDF9F300FCF5
      EB00FAF0E100F9EBD800F7E6CE00F6E2C700B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000D66005474
      FF003557FF005474FF005474FF001E41FE0000139C00000D6600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4827600C46E6B00AC454100D1A4A100FFFFFE00F2ECEB00E5E0
      DF00E5E1E000E5E1E000E5E1E000E5E1E000E5E1E000E5E1E000E5E1E000E5E1
      E000E5E1E000E4DFDF00F2EDEC00F1E7E600CC8D8C00C1575700C06061009A4D
      4E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8CCC800FFE9
      DF00FFE1D500FFDACE00FFD5C700FECFBF00FECAB800FFC5B100FAC0AF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEAD8E00FDFAF800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FEFBF700FDF7
      EF00FBF2E600F9EEDC00F8E8D200F6E4CA00B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000D66005474FF00395C
      FF00395CFF00000D6600000D66005474FF001F41FC0000139C00000D66000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4827600C46E6B00AC454100D1A4A100FFFFFE00EBE5E500D2CF
      CF00D3D1D000D3D1D000D3D1D000D3D1D000D3D1D000D3D1D000D3D1D000D3D1
      D000D3D1D000D0CECE00E9E4E300F2E8E700CC8D8C00C1575700C06061009A4D
      4E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8CCC800FFE7
      DD00FFE1D500FFDACE00FFD5C700FECFBF00FFCAB800FAC0AF00FAC0AF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEAD8E00FFFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCFA00FDF9
      F200FBF4E900FBF0E000F9EAD600F8E5CD00B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000D66005474FF005474
      FF00000D66000000000000000000000D66005474FF001E41FE00000D66000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4827600C46E6B00AC454100D2A5A200FFFFFF00FCF5F400FDF6
      F500FDF6F500FDF6F500FDF6F500FDF6F500FDF6F500FDF6F500FDF6F500FDF6
      F500FDF6F500FDF6F500FFF8F700F1E7E600CC8D8C00C3595900C16162009A4D
      4E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7C9C500FFF1E900FFE7
      DD00FFE1D500FFDACE00FED5C700FED0BF00FFCCB900FAC0AF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA48200DAA48200DAA48200B3897B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000D6600000D
      660000000000000000000000000000000000000D6600000D6600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4827600BF6F6B00AA454100CB9E9B00F3F3F200EFE9E800EFE9
      E800EFE9E800EFE9E800EFE9E800EFE9E800EFE9E800EFE9E800EFE9E800EFE9
      E800EFE9E800EFE9E800F0ECEB00E8E0DF00C88B8A00B8535300B85C5D009A4D
      4E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8CCC800FFF4EB00FFEB
      E100FFE6D900FFDFD200FFD9CA00FFD4C300F1BDB000FAC0AF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD736C00A1454000B6898700C6CBCB00C4C3C300C4C3
      C300C4C3C300C4C3C300C4C3C300C4C3C300C4C3C300C4C3C300C4C3C300C4C3
      C300C4C3C300C4C3C300C3C3C300CFC9C800B8848400964445009A4C4D000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9B3B100E8CCC800E7C7C300E7C5
      BF00E7C2BB00E7BEB800E7BCB400E5B6AF00FAC0AF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFF0000F000000000000000000000000
      FFF0000F000000000000000000000000F000000F000000000000000000000000
      F000000F000000000000000000000000F000000F000000000000000000000000
      F000000F000000000000000000000000F000000F000000000000000000000000
      F000000F000000000000000000000000F000000F000000000000000000000000
      F000000F000000000000000000000000F000000F000000000000000000000000
      F000000F000000000000000000000000F00001FF000000000000000000000000
      F00001FF000000000000000000000000F00001FF000000000000000000000000
      F00001FF000000000000000000000000F00001FF000000000000000000000000
      F00001FF000000000000000000000000F00001FF000000000000000000000000
      F00001FF000000000000000000000000F00001FF000000000000000000000000
      F00001FF000000000000000000000000F00001FF000000000000000000000000
      F00001FF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000FFFFFC0FFFFFFFFFFFFFE7FFF
      FFF8000FFFFF003FFFFFFFFFFFF07FFFFFF8000FFFFE003FFFFFFFFFFF807FFF
      FFF8000FFFFE003FFFFFFFFFFE00003FFFF8000FFFFE001FFF9FFFFFFE00003F
      FFF8000FFFFC001FFF0FFFFFFE00003FFFF8000FFFFC001FFF07FFFFFE00003F
      FFF8000FFFFC000FFF83FFFFFE00003FFFF8000FFFF8000FFFC1FFFFFE00003F
      FFF8000FFFF8000FFFE10FFFFE00003FFFF8000FFFF8000FFFF003FFFE00003F
      FFF8000FFFF8000FFFFC01FFFE00003FF800000FFFF8000FFFFC01FFFE00003F
      F800000FFFFC001FFFF800FFFE00003FF800000FFFFF007FFFF800FFFE00003F
      F800001FFFC7C0FFFFF800FFFE00003FF800003FF807807FFFFC01FFFE00003F
      F800007FF003807FFFFC01FFFE00003FF801FFFFF003E1FFFFFE03FFFE00003F
      F801FFFFF003E1FFFFFF8FFFFE00003FF801FFFFF807E3FFFFFFFFFFFE00003F
      F801FFFFFC07C7FFFFFFFFFFFF80003FF803FFFFFE0F0FFFFFFFFFFFFFF07FFF
      F807FFFFFF0FFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFC00001FFFFFFFFF
      FC00000FFFFFFFFFF800000FFFF0C1FFFC00000FF80001FFF800000FFFC0007F
      FC00000FF80001FFF800000FFF00001FFC00000FF80001FFF800000FFE00003F
      FC00007FF80001FFF800000FF800003FFC00007FF80001FFF800000FF800003F
      FC00007FF80001FFF800000FF800003FFC00007FF80001FFF800000FF800003F
      FC00007FF80001FFF800000FF800003FFC00007FF80001FFF800000FF800003F
      FC00007FF80001FFF800000FFC00003FFC00007FF80001FFF800000FFE00007F
      FC00007FF800013FF800000FFF8000FFFC00007FF800001FF800000FFF8001FF
      FC00007FF800001FF800000FFFC007FFFC00007FF800003FF800000FFFC00FFF
      FC00007FFC00007FF800000FFFC01FFFFC00007FFFFFE07FF800000FFFC01FFF
      FC00007FFFFFC03FF800000FFFC01FFFFC00007FFFFF801FF800000FFFC01FFF
      FC00007FFFFF861FF800000FFF803FFFFC00007FFFFFCF3FF800000FFF803FFF
      FFFFFFFFFFFFFFFFFC00001FFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qInsertSaidaTroca: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_FIN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoLocal
    StoredProcName = 'INSERT_SAIDA_TROCA'
    Left = 296
    Top = 408
  end
  object dspInsertSaidaTroca: TDataSetProvider
    DataSet = qInsertSaidaTroca
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 328
    Top = 408
  end
  object cdsInsertSaidaTroca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_FIN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end>
    ProviderName = 'dspInsertSaidaTroca'
    Left = 360
    Top = 408
  end
  object qInsertEntradaTroca: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_FIN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end>
    SQLConnection = ConexaoLocal
    StoredProcName = 'INSERT_ENTRADA_TROCA'
    Left = 448
    Top = 408
  end
  object dspInsertEntradaTroca: TDataSetProvider
    DataSet = qInsertEntradaTroca
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 480
    Top = 408
  end
  object cdsInsertEntradaTroca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_FIN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end>
    ProviderName = 'dspInsertEntradaTroca'
    Left = 512
    Top = 408
  end
  object qPagamentoPdv: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ORCAMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'PV.id_pagamento_pdv,'
      'PV.id_pdv,'
      'PV.ID_LOJA,'
      'P.nr_orcamento,'
      'P.vl_liquido,'
      'PV.id_tipo_pagamento,'
      'TP.descricao_pagamento,'
      'PV.vl_pagamento'
      'FROM tb_pagamento_pdv PV'
      'LEFT OUTER JOIN tb_pdv P ON (P.id_pdv = PV.id_pdv)'
      
        'LEFT OUTER JOIN tb_tipo_pagamento TP ON (TP.id_tipo_pagamento = ' +
        'PV.id_tipo_pagamento)'
      'where P.nr_orcamento = :ID_ORCAMENTO')
    SQLConnection = ConexaoLocal
    Left = 232
    Top = 368
    object qPagamentoPdvID_PAGAMENTO_PDV: TIntegerField
      FieldName = 'ID_PAGAMENTO_PDV'
      Required = True
    end
    object qPagamentoPdvID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object qPagamentoPdvNR_ORCAMENTO: TIntegerField
      FieldName = 'NR_ORCAMENTO'
      ProviderFlags = []
    end
    object qPagamentoPdvVL_LIQUIDO: TFMTBCDField
      FieldName = 'VL_LIQUIDO'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qPagamentoPdvID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
    end
    object qPagamentoPdvDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qPagamentoPdvVL_PAGAMENTO: TFMTBCDField
      FieldName = 'VL_PAGAMENTO'
      Precision = 18
      Size = 2
    end
    object qPagamentoPdvID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
  end
  object dspPagamentoPdv: TDataSetProvider
    DataSet = qPagamentoPdv
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    OnGetTableName = dspPagamentoPdvGetTableName
    Left = 264
    Top = 368
  end
  object cdsPagamentoPdv: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NR_ORCAMENTO'
    MasterFields = 'NR_ORCAMENTO'
    MasterSource = dsPdvLocal
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ORCAMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspPagamentoPdv'
    Left = 296
    Top = 368
    object cdsPagamentoPdvID_PAGAMENTO_PDV: TIntegerField
      FieldName = 'ID_PAGAMENTO_PDV'
      Required = True
    end
    object cdsPagamentoPdvID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object cdsPagamentoPdvNR_ORCAMENTO: TIntegerField
      DisplayLabel = 'N'#186' Or'#231'amento'
      FieldName = 'NR_ORCAMENTO'
      ProviderFlags = []
    end
    object cdsPagamentoPdvVL_LIQUIDO: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VL_LIQUIDO'
      ProviderFlags = []
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsPagamentoPdvID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
    end
    object cdsPagamentoPdvDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Tipo Pagamento'
      FieldName = 'DESCRICAO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsPagamentoPdvVL_PAGAMENTO: TFMTBCDField
      DisplayLabel = 'Valor Recebido'
      FieldName = 'VL_PAGAMENTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsPagamentoPdvID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
  end
  object dsPagamentoPdv: TDataSource
    DataSet = cdsPagamentoPdv
    Left = 328
    Top = 368
  end
end