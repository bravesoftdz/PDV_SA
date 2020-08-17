unit uDm;

interface

uses
  SysUtils, Classes, DB, SqlExpr,IniFiles, Forms, Variants,
  Windows, Messages, Graphics, Controls, FMTBcd, DBClient, Provider,
  ImgList, Data.DBXFirebird, System.ImageList;

type
  TDM = class(TDataModule)
    ConexaoLocal: TSQLConnection;
    ConexaoServidor: TSQLConnection;
    qPdvLocal: TSQLQuery;
    dspPdvLocal: TDataSetProvider;
    cdsPdvLocal: TClientDataSet;
    dsPdvLocal: TDataSource;
    qPdvLocalID_PDV: TIntegerField;
    qPdvLocalNR_ORCAMENTO: TIntegerField;
    qPdvLocalID_LOJA: TIntegerField;
    qPdvLocalID_GRUPO: TIntegerField;
    qPdvLocalDT_ORCAMENTO: TDateField;
    qPdvLocalVL_ORCAMENTO: TFMTBCDField;
    qPdvLocalVL_DESCONTO: TFMTBCDField;
    qPdvLocalVL_LIQUIDO: TFMTBCDField;
    qPdvLocalSTATUS: TStringField;
    qPdvLocalTRANSF: TStringField;
    qPdvLocalNOME_CLIENTE: TStringField;
    qPdvLocalCPF_CLIENTE: TStringField;
    cdsPdvLocalID_PDV: TIntegerField;
    cdsPdvLocalNR_ORCAMENTO: TIntegerField;
    cdsPdvLocalID_LOJA: TIntegerField;
    cdsPdvLocalID_GRUPO: TIntegerField;
    cdsPdvLocalDT_ORCAMENTO: TDateField;
    cdsPdvLocalVL_ORCAMENTO: TFMTBCDField;
    cdsPdvLocalVL_DESCONTO: TFMTBCDField;
    cdsPdvLocalVL_LIQUIDO: TFMTBCDField;
    cdsPdvLocalSTATUS: TStringField;
    cdsPdvLocalTRANSF: TStringField;
    cdsPdvLocalNOME_CLIENTE: TStringField;
    cdsPdvLocalCPF_CLIENTE: TStringField;
    qItemPdvLocal: TSQLQuery;
    qItemPdvLocalID_ITEM_PDV: TIntegerField;
    qItemPdvLocalNR_ORCAMENTO: TIntegerField;
    qItemPdvLocalID_PRODUTO: TIntegerField;
    qItemPdvLocalQUANT: TIntegerField;
    qItemPdvLocalVL_UNIT: TFMTBCDField;
    qItemPdvLocalVL_TOTAL: TFMTBCDField;
    qItemPdvLocalDESC_ITEM: TFMTBCDField;
    qItemPdvLocalPERC_DES: TFMTBCDField;
    qItemPdvLocalTRANSF: TStringField;
    qItemPdvLocalDESCRICAO: TStringField;
    qItemPdvLocalUNIDADE: TStringField;
    dspItemPdvLocal: TDataSetProvider;
    cdsItemPdvLocal: TClientDataSet;
    dsItemPdvLocal: TDataSource;
    cdsItemPdvLocalID_ITEM_PDV: TIntegerField;
    cdsItemPdvLocalNR_ORCAMENTO: TIntegerField;
    cdsItemPdvLocalID_PRODUTO: TIntegerField;
    cdsItemPdvLocalQUANT: TIntegerField;
    cdsItemPdvLocalVL_UNIT: TFMTBCDField;
    cdsItemPdvLocalVL_TOTAL: TFMTBCDField;
    cdsItemPdvLocalDESC_ITEM: TFMTBCDField;
    cdsItemPdvLocalPERC_DES: TFMTBCDField;
    cdsItemPdvLocalTRANSF: TStringField;
    cdsItemPdvLocalDESCRICAO: TStringField;
    cdsItemPdvLocalUNIDADE: TStringField;
    qItemPdvLocalCOD_BARRA: TStringField;
    cdsItemPdvLocalCOD_BARRA: TStringField;
    cdsProduto: TClientDataSet;
    cdsProdutoCOD_BARRA: TStringField;
    cdsProdutoNCM_PRODUTO: TStringField;
    cdsProdutoID_PRODUTO: TIntegerField;
    cdsProdutoDESCRICAO: TStringField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoTAMANHO: TStringField;
    cdsProdutoVL_UNIT: TFMTBCDField;
    cdsProdutoDT_ULT_COMPRA: TDateField;
    cdsProdutoDT_ULT_VENDA: TDateField;
    cdsProdutoCOD_PRODUTO: TIntegerField;
    cdsProdutoID_FORNECEDOR: TIntegerField;
    cdsProdutoR_SOCIAL: TStringField;
    dsProduto: TDataSource;
    qProduto: TSQLQuery;
    dspProduto: TDataSetProvider;
    qItemPdvLocalID_LOJA: TIntegerField;
    cdsItemPdvLocalID_LOJA: TIntegerField;
    qDinamica: TSQLQuery;
    dspDinamica: TDataSetProvider;
    cdsDinamica: TClientDataSet;
    dsDinamica: TDataSource;
    qItemPdvLocalSTATUS: TStringField;
    cdsItemPdvLocalSTATUS: TStringField;
    qLogin: TSQLQuery;
    qLoginID_USUARIO: TIntegerField;
    qLoginID_LOJA: TIntegerField;
    qLoginNOME_USUARIO: TStringField;
    qLoginLOGIN: TStringField;
    qLoginSENHA: TStringField;
    qLoginNIVEL_ACESSO: TSmallintField;
    qLoginR_SOCIAL: TStringField;
    dspLogin: TDataSetProvider;
    cdsLogin: TClientDataSet;
    cdsLoginID_USUARIO: TIntegerField;
    cdsLoginID_LOJA: TIntegerField;
    cdsLoginR_SOCIAL: TStringField;
    cdsLoginNOME_USUARIO: TStringField;
    cdsLoginLOGIN: TStringField;
    cdsLoginSENHA: TStringField;
    cdsLoginNIVEL_ACESSO: TSmallintField;
    dsLogin: TDataSource;
    cdsTabelaLoja: TClientDataSet;
    dsTabelaLoja: TDataSource;
    qTabelaLoja: TSQLQuery;
    dspTabelaLoja: TDataSetProvider;
    cdsMovEstoque: TClientDataSet;
    cdsMovEstoqueID_MOV_ESTOQUE: TIntegerField;
    cdsMovEstoqueID_LOJA: TIntegerField;
    cdsMovEstoqueDT_MOV: TDateField;
    cdsMovEstoqueDIA: TStringField;
    cdsMovEstoqueENTRADA: TFMTBCDField;
    cdsMovEstoqueSAIDA_DIV: TFMTBCDField;
    cdsMovEstoqueQT_VENDIDA: TFMTBCDField;
    cdsMovEstoqueESTOQUE_DIARIO: TFMTBCDField;
    cdsMovEstoqueESTOQUE_ANTERIOR: TFMTBCDField;
    cdsMovEstoqueENTRADA_MERCADORIA: TFMTBCDField;
    cdsMovEstoqueNR_DOC: TStringField;
    cdsMovEstoqueTP_MOV: TStringField;
    cdsMovEstoqueFANTASIA: TStringField;
    dsMovEstoque: TDataSource;
    qMovEstoque: TSQLQuery;
    qMovEstoqueID_MOV_ESTOQUE: TIntegerField;
    qMovEstoqueID_LOJA: TIntegerField;
    qMovEstoqueDT_MOV: TDateField;
    qMovEstoqueDIA: TStringField;
    qMovEstoqueENTRADA: TFMTBCDField;
    qMovEstoqueSAIDA_DIV: TFMTBCDField;
    qMovEstoqueQT_VENDIDA: TFMTBCDField;
    qMovEstoqueESTOQUE_DIARIO: TFMTBCDField;
    qMovEstoqueFANTASIA: TStringField;
    qMovEstoqueESTOQUE_ANTERIOR: TFMTBCDField;
    qMovEstoqueENTRADA_MERCADORIA: TFMTBCDField;
    qMovEstoqueNR_DOC: TStringField;
    qMovEstoqueTP_MOV: TStringField;
    dspMovEstoque: TDataSetProvider;
    spInsertSaidaEstoque: TSQLStoredProc;
    dspInsertSaidaEstoque: TDataSetProvider;
    cdsInsertSaidaEstoque: TClientDataSet;
    spRecebeEstoque: TSQLStoredProc;
    dspRecebeEstoque: TDataSetProvider;
    cdsRecebeEstoque: TClientDataSet;
    spRecebeEstoqueProduto: TSQLStoredProc;
    dspRecebeEstoqueProduto: TDataSetProvider;
    cdsRecebeEstoqueProduto: TClientDataSet;
    spInsertSaidaEstoqueProduto: TSQLStoredProc;
    dspInsertSaidaEstoqueProduto: TDataSetProvider;
    cdsInsertSaidaEstoqueProduto: TClientDataSet;
    qEstoqueProduto: TSQLQuery;
    dspEstoqueProduto: TDataSetProvider;
    cdsEstoqueProduto: TClientDataSet;
    qEstoqueProdutoID_ESTOQUE: TIntegerField;
    qEstoqueProdutoID_PRODUTO: TIntegerField;
    qEstoqueProdutoDESCRICAO: TStringField;
    qEstoqueProdutoID_LOJA: TIntegerField;
    qEstoqueProdutoFANTASIA: TStringField;
    qEstoqueProdutoDT_MOV: TDateField;
    qEstoqueProdutoDOC: TStringField;
    qEstoqueProdutoENTRADA: TFMTBCDField;
    qEstoqueProdutoSAIDA: TFMTBCDField;
    qEstoqueProdutoSALDO: TFMTBCDField;
    qEstoqueProdutoTP_MOV: TStringField;
    qEstoqueProdutoCUSTO_UNI: TFMTBCDField;
    qEstoqueProdutoSALDO_ANTERIOR: TFMTBCDField;
    cdsEstoqueProdutoID_ESTOQUE: TIntegerField;
    cdsEstoqueProdutoID_PRODUTO: TIntegerField;
    cdsEstoqueProdutoDESCRICAO: TStringField;
    cdsEstoqueProdutoID_LOJA: TIntegerField;
    cdsEstoqueProdutoFANTASIA: TStringField;
    cdsEstoqueProdutoDT_MOV: TDateField;
    cdsEstoqueProdutoDOC: TStringField;
    cdsEstoqueProdutoENTRADA: TFMTBCDField;
    cdsEstoqueProdutoSAIDA: TFMTBCDField;
    cdsEstoqueProdutoSALDO: TFMTBCDField;
    cdsEstoqueProdutoTP_MOV: TStringField;
    cdsEstoqueProdutoCUSTO_UNI: TFMTBCDField;
    cdsEstoqueProdutoSALDO_ANTERIOR: TFMTBCDField;
    qPdvLocalID_VENDEDOR: TIntegerField;
    cdsPdvLocalID_VENDEDOR: TIntegerField;
    qPdvLocalNOME: TStringField;
    cdsPdvLocalNOME: TStringField;
    qVendedor: TSQLQuery;
    qVendedorID_VENDEDOR: TIntegerField;
    qVendedorID_LOJA: TIntegerField;
    qVendedorNOME: TStringField;
    qVendedorDT_ADMISSAO: TDateField;
    qVendedorID_GRUPO: TIntegerField;
    qVendedorATIVO: TStringField;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    cdsVendedorID_VENDEDOR: TIntegerField;
    cdsVendedorID_LOJA: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorDT_ADMISSAO: TDateField;
    cdsVendedorID_GRUPO: TIntegerField;
    cdsVendedorATIVO: TStringField;
    dsVendedor: TDataSource;
    qRecebeProduto: TSQLQuery;
    dspRecebeProduto: TDataSetProvider;
    cdsRecebeProduto: TClientDataSet;
    dsRecebeProduto: TDataSource;
    spDelProdutoPDV: TSQLStoredProc;
    dspDelProdutoPdv: TDataSetProvider;
    cdsDelProdutoPdv: TClientDataSet;
    qEnviaProduto: TSQLQuery;
    qEnviaProdutoID_PRODUTO: TIntegerField;
    qEnviaProdutoID_FORNECEDOR: TIntegerField;
    qEnviaProdutoCOD_PRODUTO: TIntegerField;
    qEnviaProdutoDESCRICAO: TStringField;
    qEnviaProdutoTAMANHO: TStringField;
    qEnviaProdutoVL_UNIT: TFMTBCDField;
    qEnviaProdutoVL_VENDA: TFMTBCDField;
    qEnviaProdutoCOD_BARRA: TStringField;
    qEnviaProdutoNCM_PRODUTO: TStringField;
    dspEnviaProduto: TDataSetProvider;
    cdsEnviaProduto: TClientDataSet;
    cdsEnviaProdutoID_PRODUTO: TIntegerField;
    cdsEnviaProdutoID_FORNECEDOR: TIntegerField;
    cdsEnviaProdutoCOD_PRODUTO: TIntegerField;
    cdsEnviaProdutoDESCRICAO: TStringField;
    cdsEnviaProdutoTAMANHO: TStringField;
    cdsEnviaProdutoVL_UNIT: TFMTBCDField;
    cdsEnviaProdutoVL_VENDA: TFMTBCDField;
    cdsEnviaProdutoCOD_BARRA: TStringField;
    cdsEnviaProdutoNCM_PRODUTO: TStringField;
    dsEnviaProduto: TDataSource;
    qDinamicaLocal: TSQLQuery;
    dspDinamicaLocal: TDataSetProvider;
    cdsDinamicaLocal: TClientDataSet;
    dsDinamicaLocal: TDataSource;
    qDinamicaServidor: TSQLQuery;
    dspDinamicaServidor: TDataSetProvider;
    cdsDinamicaServidor: TClientDataSet;
    dsDinamicaServidor: TDataSource;
    qVendedorVL_COMISSAO: TFMTBCDField;
    qVendedorFANTASIA: TStringField;
    cdsVendedorVL_COMISSAO: TFMTBCDField;
    cdsVendedorFANTASIA: TStringField;
    I_BOTOES: TImageList;
    qPdvLocalCAIXA: TIntegerField;
    cdsPdvLocalCAIXA: TIntegerField;
    qInsertSaidaTroca: TSQLStoredProc;
    dspInsertSaidaTroca: TDataSetProvider;
    cdsInsertSaidaTroca: TClientDataSet;
    qInsertEntradaTroca: TSQLStoredProc;
    dspInsertEntradaTroca: TDataSetProvider;
    cdsInsertEntradaTroca: TClientDataSet;
    qPagamentoPdv: TSQLQuery;
    dspPagamentoPdv: TDataSetProvider;
    cdsPagamentoPdv: TClientDataSet;
    dsPagamentoPdv: TDataSource;
    qPagamentoPdvID_PAGAMENTO_PDV: TIntegerField;
    qPagamentoPdvID_PDV: TIntegerField;
    qPagamentoPdvNR_ORCAMENTO: TIntegerField;
    qPagamentoPdvVL_LIQUIDO: TFMTBCDField;
    qPagamentoPdvID_TIPO_PAGAMENTO: TIntegerField;
    qPagamentoPdvDESCRICAO_PAGAMENTO: TStringField;
    qPagamentoPdvVL_PAGAMENTO: TFMTBCDField;
    cdsPagamentoPdvID_PAGAMENTO_PDV: TIntegerField;
    cdsPagamentoPdvID_PDV: TIntegerField;
    cdsPagamentoPdvVL_LIQUIDO: TFMTBCDField;
    cdsPagamentoPdvID_TIPO_PAGAMENTO: TIntegerField;
    cdsPagamentoPdvDESCRICAO_PAGAMENTO: TStringField;
    cdsPagamentoPdvVL_PAGAMENTO: TFMTBCDField;
    cdsPagamentoPdvNR_ORCAMENTO: TIntegerField;
    qPagamentoPdvID_LOJA: TIntegerField;
    cdsPagamentoPdvID_LOJA: TIntegerField;
    cdsLoja: TClientDataSet;
    dspLoja: TDataSetProvider;
    qLoja: TSQLQuery;
    dsLoja: TDataSource;
    qLojaID_LOJA: TIntegerField;
    qLojaCOD_MUNICIPIO: TStringField;
    qLojaR_SOCIAL: TStringField;
    qLojaFANTASIA: TStringField;
    qLojaENDERECO: TStringField;
    qLojaCOMPLEMENTO: TStringField;
    qLojaNUMERO: TStringField;
    qLojaBAIRRO: TStringField;
    qLojaCNPJ: TStringField;
    qLojaINS_EST: TStringField;
    qLojaTEL: TStringField;
    qLojaGERENTE: TStringField;
    qLojaID_GRUPO_LOJA: TIntegerField;
    qLojaID_C_CUSTO: TIntegerField;
    qLojaVL_DIARIO_PAGMETO: TFMTBCDField;
    cdsLojaID_LOJA: TIntegerField;
    cdsLojaCOD_MUNICIPIO: TStringField;
    cdsLojaR_SOCIAL: TStringField;
    cdsLojaFANTASIA: TStringField;
    cdsLojaENDERECO: TStringField;
    cdsLojaCOMPLEMENTO: TStringField;
    cdsLojaNUMERO: TStringField;
    cdsLojaBAIRRO: TStringField;
    cdsLojaCNPJ: TStringField;
    cdsLojaINS_EST: TStringField;
    cdsLojaTEL: TStringField;
    cdsLojaGERENTE: TStringField;
    cdsLojaID_GRUPO_LOJA: TIntegerField;
    cdsLojaID_C_CUSTO: TIntegerField;
    cdsLojaVL_DIARIO_PAGMETO: TFMTBCDField;
    qPdvLocalID_USUARIO: TIntegerField;
    qPdvLocalLOGIN: TStringField;
    cdsPdvLocalID_USUARIO: TIntegerField;
    cdsPdvLocalLOGIN: TStringField;
    qEnviaProdutoUNIDADE: TStringField;
    qEnviaProdutoPDV: TStringField;
    qEnviaProdutoVL_VENDA_ATAC: TFMTBCDField;
    qEnviaProdutoVL_VENDA_PRAZO1: TFMTBCDField;
    qEnviaProdutoVL_VENDA_PRAZO2: TFMTBCDField;
    qEnviaProdutoVL_VENDA_PRAZO3: TFMTBCDField;
    cdsEnviaProdutoUNIDADE: TStringField;
    cdsEnviaProdutoPDV: TStringField;
    cdsEnviaProdutoVL_VENDA_ATAC: TFMTBCDField;
    cdsEnviaProdutoVL_VENDA_PRAZO1: TFMTBCDField;
    cdsEnviaProdutoVL_VENDA_PRAZO2: TFMTBCDField;
    cdsEnviaProdutoVL_VENDA_PRAZO3: TFMTBCDField;
    qRecebeProdutoID_PRODUTO: TIntegerField;
    qRecebeProdutoID_FORNECEDOR: TIntegerField;
    qRecebeProdutoCOD_PRODUTO: TIntegerField;
    qRecebeProdutoDESCRICAO: TStringField;
    qRecebeProdutoUNIDADE: TStringField;
    qRecebeProdutoTAMANHO: TStringField;
    qRecebeProdutoVL_UNIT: TFMTBCDField;
    qRecebeProdutoVL_VENDA: TFMTBCDField;
    qRecebeProdutoCOD_BARRA: TStringField;
    qRecebeProdutoNCM_PRODUTO: TStringField;
    qRecebeProdutoVL_VENDA_ATAC: TFMTBCDField;
    qRecebeProdutoVL_VENDA_PRAZO1: TFMTBCDField;
    qRecebeProdutoVL_VENDA_PRAZO2: TFMTBCDField;
    qRecebeProdutoVL_VENDA_PRAZO3: TFMTBCDField;
    cdsRecebeProdutoID_PRODUTO: TIntegerField;
    cdsRecebeProdutoID_FORNECEDOR: TIntegerField;
    cdsRecebeProdutoCOD_PRODUTO: TIntegerField;
    cdsRecebeProdutoDESCRICAO: TStringField;
    cdsRecebeProdutoUNIDADE: TStringField;
    cdsRecebeProdutoTAMANHO: TStringField;
    cdsRecebeProdutoVL_UNIT: TFMTBCDField;
    cdsRecebeProdutoVL_VENDA: TFMTBCDField;
    cdsRecebeProdutoCOD_BARRA: TStringField;
    cdsRecebeProdutoNCM_PRODUTO: TStringField;
    cdsRecebeProdutoVL_VENDA_ATAC: TFMTBCDField;
    cdsRecebeProdutoVL_VENDA_PRAZO1: TFMTBCDField;
    cdsRecebeProdutoVL_VENDA_PRAZO2: TFMTBCDField;
    cdsRecebeProdutoVL_VENDA_PRAZO3: TFMTBCDField;
    qProdutoID_PRODUTO: TIntegerField;
    qProdutoCOD_BARRA: TStringField;
    qProdutoNCM_PRODUTO: TStringField;
    qProdutoDESCRICAO: TStringField;
    qProdutoUNIDADE: TStringField;
    qProdutoTAMANHO: TStringField;
    qProdutoDT_ULT_COMPRA: TDateField;
    qProdutoDT_ULT_VENDA: TDateField;
    qProdutoCOD_PRODUTO: TIntegerField;
    qProdutoID_FORNECEDOR: TIntegerField;
    qProdutoVL_UNIT: TFMTBCDField;
    qProdutoVL_VENDA: TFMTBCDField;
    qProdutoVL_VENDA_ATAC: TFMTBCDField;
    qProdutoVL_VENDA_PRAZO1: TFMTBCDField;
    qProdutoVL_VENDA_PRAZO2: TFMTBCDField;
    qProdutoVL_VENDA_PRAZO3: TFMTBCDField;
    qProdutoR_SOCIAL: TStringField;
    cdsProdutoVL_VENDA: TFMTBCDField;
    cdsProdutoVL_VENDA_ATAC: TFMTBCDField;
    cdsProdutoVL_VENDA_PRAZO1: TFMTBCDField;
    cdsProdutoVL_VENDA_PRAZO2: TFMTBCDField;
    cdsProdutoVL_VENDA_PRAZO3: TFMTBCDField;
    qItemPdvLocalNCM_PRODUTO: TStringField;
    cdsItemPdvLocalNCM_PRODUTO: TStringField;
    qItemPdvLocalCOD_PRODUTO: TIntegerField;
    cdsItemPdvLocalCOD_PRODUTO: TIntegerField;
    spGravaEstoqueProdutoTroca: TSQLStoredProc;
    dspGravaEstoqueProdutoTroca: TDataSetProvider;
    cdsGravaEstoqueProdutoTroca: TClientDataSet;
    qPdvLocalHR_ORCAMENTO: TTimeField;
    cdsPdvLocalHR_ORCAMENTO: TTimeField;
    qPdvLocalCUPOM: TStringField;
    cdsPdvLocalCUPOM: TStringField;
    qPdvLocalPERC_DESC: TFMTBCDField;
    cdsPdvLocalPERC_DESC: TFMTBCDField;
    qPlanoPagamento: TSQLQuery;
    dspPlanoPagamento: TDataSetProvider;
    cdsPlanoPagamento: TClientDataSet;
    dsPlanoPagamento: TDataSource;
    qPdvLocalMODALIDADE: TIntegerField;
    cdsPdvLocalMODALIDADE: TIntegerField;
    qItemPdvLocalVL_AVISTA: TFMTBCDField;
    qItemPdvLocalVL_TOTAL_AV: TFMTBCDField;
    cdsItemPdvLocalVL_AVISTA: TFMTBCDField;
    cdsItemPdvLocalVL_TOTAL_AV: TFMTBCDField;
    qPdvLocalVL_TOTAL_AV: TFMTBCDField;
    cdsPdvLocalVL_TOTAL_AV: TFMTBCDField;
    qPlanoPagamentoID_TIPO_PAGAMENTO: TIntegerField;
    qPlanoPagamentoDESCRICAO_PAGAMENTO: TStringField;
    cdsPlanoPagamentoID_TIPO_PAGAMENTO: TIntegerField;
    cdsPlanoPagamentoDESCRICAO_PAGAMENTO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspPagamentoPdvGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspItemPdvLocalGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspPdvLocalGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dsItemPdvLocalDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    
  public
    { Public declarations }
   IniControle : TIniFile;
   CAIXA_LOJA :String;
   IMPRESSORA : string;
   LOGO       : string;
   PRECONAVENDA,EXPORTAR : string;
   DESCONTO, TPDESCONTO  : string;

  end;

var
  DM: TDM;


implementation

{$R *.dfm}

uses uPdv;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  ConexaoLocal.Connected := False;
  //CONEXAO LOCAL
  if (not ConexaoLocal.Connected) then
  begin
    try
       IniControle := TIniFile.Create(ExtractFilePath(Application.ExeName)+'PDV_LOCAL.INI');
      if Trim(IniControle.ReadString('SERVIDOR_LOCAL', 'DATABASE', '')) <> '' then
      begin
        ConexaoLocal.Params.Clear;
        ConexaoLocal.Params.Values['DATABASE'] := Inicontrole.ReadString('SERVIDOR_LOCAL','DATABASE','');
        ConexaoLocal.Params.Values['User_Name'] := Inicontrole.ReadString('SERVIDOR_LOCAL','User_Name','');
        ConexaoLocal.Params.Values['PASSWORD'] := Inicontrole.ReadString('SERVIDOR_LOCAL','PASSWORD','masterkey');
        ConexaoLocal.Params.Values['SQLDialect'] := Trim(Inicontrole.ReadString('SERVIDOR_LOCAL','SQLDialect','3'));
        CAIXA_LOJA :=Inicontrole.ReadString('SERVIDOR_LOCAL','CAIXA_LOJA','');
        IMPRESSORA := IniControle.ReadString('SERVIDOR_LOCAL','IMPRESSORA','');
        LOGO       := IniControle.ReadString('SERVIDOR_LOCAL','LOGO','');
        PRECONAVENDA:= IniControle.ReadString('SERVIDOR_LOCAL','PRECONAVENDA','');
        EXPORTAR    := IniControle.ReadString('SERVIDOR_LOCAL','EXPORTA','');
        DESCONTO    := IniControle.ReadString('SERVIDOR_LOCAL','DESCONTO','');
        TPDESCONTO  := IniControle.ReadString('SERVIDOR_LOCAL','TIPO_DESCONTO','');
        ConexaoLocal.connected:= true;
        Inicontrole.Free;
      end;
    except
      Application.MessageBox( 'N�o Foi Possiv�l fazer a Conex�o Local com o Banco de Dados.' + #13 +
                              'verifique se o arquivo de configura��o est� configurado, ' + #13 +
                              'Tente Novamente ou Entre em contato com suporte para esclarecer qualquer d�vida.',
                              'Error Interno',mb_ok + mb_IconError );
        Application.Terminate;
    end;
  end;

 // CONEXAO COM O SERVIDOR IP 192.168.175.1

 { if Application.MessageBox('Deseja Fazer a Conex�o com o Servidor Agora?','Confirma��o?',MB_YESNO+MB_ICONQUESTION )= idyes then
  begin
    if (not ConexaoServidor.Connected) then
    begin
      try
         IniControle := TIniFile.Create(ExtractFilePath(Application.ExeName)+'PDV_SERVIDOR.INI');
        if Trim(IniControle.ReadString('SERVIDOR', 'DATABASE', '')) <> '' then
        begin
          ConexaoServidor.Params.Clear;
          ConexaoServidor.Params.Values['DATABASE'] := Inicontrole.ReadString('SERVIDOR','DATABASE','');
          ConexaoServidor.Params.Values['User_Name'] := Inicontrole.ReadString('SERVIDOR','User_Name','');
          ConexaoServidor.Params.Values['PASSWORD'] := Inicontrole.ReadString('SERVIDOR','PASSWORD','masterkey');
          ConexaoServidor.Params.Values['SQLDialect'] := Trim(Inicontrole.ReadString('SERVIDOR','SQLDialect','3'));
          ConexaoServidor.connected:= true;
          Inicontrole.Free;
          Application.MessageBox('Servidor Conectado Com Sucesso.','Aten��o.',MB_OK+MB_ICONWARNING);

        end;
      except
        Application.MessageBox( 'N�o Foi Possiv�l fazer a Conex�o Com o Servidor.' + #13 +
                                'verifique sua Conex�o com a Internet, ' + #13 +
                                'Tente Novamente ou Entre em contato com suporte para esclarecer qualquer d�vida.',
                                'Error Interno',mb_ok + mb_IconError );
          Application.Terminate;
      end;
    end;
  end
  else
  begin
    Application.MessageBox('Conex�o com o Servidor Cancelada.','Aten��o.',MB_OK+MB_ICONWARNING);
  end;}

end;

procedure TDM.dsItemPdvLocalDataChange(Sender: TObject; Field: TField);
begin
  ShowScrollBar(FrmPDV.DBGrid1.handle, SB_VERT, False);
end;

procedure TDM.dspItemPdvLocalGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: string);
begin
  TableName := 'TB_ITEM_PDV';
end;

procedure TDM.dspPagamentoPdvGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: string);
begin
  TableName :='TB_PAGAMENTO_PDV';
end;

procedure TDM.dspPdvLocalGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: string);
begin
  TableName :='TB_PDV';
end;

end.
