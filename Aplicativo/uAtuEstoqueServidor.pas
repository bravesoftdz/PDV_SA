unit uAtuEstoqueServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons,IniFiles, Grids, DBGrids,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Gauges, ComCtrls, Vcl.Imaging.jpeg;

type
  TfrmAtuEstoqueServidor = class(TForm)
    qEstoque: TSQLQuery;
    dspEstoque: TDataSetProvider;
    cdsEstoque: TClientDataSet;
    dsEstoque: TDataSource;
    qEstoqueID_MOV_ESTOQUE: TIntegerField;
    qEstoqueID_LOJA: TIntegerField;
    qEstoqueDT_MOV: TDateField;
    qEstoqueDIA: TStringField;
    qEstoqueENTRADA: TFMTBCDField;
    qEstoqueSAIDA_DIV: TFMTBCDField;
    qEstoqueQT_VENDIDA: TFMTBCDField;
    qEstoqueESTOQUE_DIARIO: TFMTBCDField;
    qEstoqueESTOQUE_ANTERIOR: TFMTBCDField;
    qEstoqueENTRADA_MERCADORIA: TFMTBCDField;
    qEstoqueNR_DOC: TStringField;
    qEstoqueTP_MOV: TStringField;
    qEstoqueFANTASIA: TStringField;
    cdsEstoqueDT_MOV: TDateField;
    cdsEstoqueDIA: TStringField;
    cdsEstoqueENTRADA: TFMTBCDField;
    cdsEstoqueQT_VENDIDA: TFMTBCDField;
    cdsEstoqueNR_DOC: TStringField;
    cdsEstoqueTP_MOV: TStringField;
    cdsEstoqueFANTASIA: TStringField;
    cdsEstoqueID_MOV_ESTOQUE: TIntegerField;
    cdsEstoqueID_LOJA: TIntegerField;
    cdsEstoqueSAIDA_DIV: TFMTBCDField;
    cdsEstoqueESTOQUE_DIARIO: TFMTBCDField;
    cdsEstoqueESTOQUE_ANTERIOR: TFMTBCDField;
    cdsEstoqueENTRADA_MERCADORIA: TFMTBCDField;
    qEstoqueServidor: TSQLQuery;
    dspEstoqueServidor: TDataSetProvider;
    cdsEstoqueServidor: TClientDataSet;
    dsEstoqueServidor: TDataSource;
    qEstoqueServidorID_MOV_ESTOQUE: TIntegerField;
    qEstoqueServidorID_LOJA: TIntegerField;
    qEstoqueServidorDT_MOV: TDateField;
    qEstoqueServidorDIA: TStringField;
    qEstoqueServidorENTRADA: TFMTBCDField;
    qEstoqueServidorSAIDA_DIV: TFMTBCDField;
    qEstoqueServidorQT_VENDIDA: TFMTBCDField;
    qEstoqueServidorESTOQUE_DIARIO: TFMTBCDField;
    qEstoqueServidorESTOQUE_ANTERIOR: TFMTBCDField;
    qEstoqueServidorENTRADA_MERCADORIA: TFMTBCDField;
    qEstoqueServidorNR_DOC: TStringField;
    qEstoqueServidorTP_MOV: TStringField;
    qEstoqueServidorFANTASIA: TStringField;
    cdsEstoqueServidorID_LOJA: TIntegerField;
    cdsEstoqueServidorDT_MOV: TDateField;
    cdsEstoqueServidorDIA: TStringField;
    cdsEstoqueServidorENTRADA: TFMTBCDField;
    cdsEstoqueServidorSAIDA_DIV: TFMTBCDField;
    cdsEstoqueServidorQT_VENDIDA: TFMTBCDField;
    cdsEstoqueServidorESTOQUE_DIARIO: TFMTBCDField;
    cdsEstoqueServidorESTOQUE_ANTERIOR: TFMTBCDField;
    cdsEstoqueServidorENTRADA_MERCADORIA: TFMTBCDField;
    cdsEstoqueServidorNR_DOC: TStringField;
    cdsEstoqueServidorTP_MOV: TStringField;
    cdsEstoqueServidorFANTASIA: TStringField;
    cdsEstoqueServidorID_MOV_ESTOQUE: TIntegerField;
    PageControl1: TPageControl;
    MovimentoProduto: TTabSheet;
    qEstoqueProduto: TSQLQuery;
    qEstoqueProdutoID_ESTOQUE: TIntegerField;
    qEstoqueProdutoID_PRODUTO: TIntegerField;
    qEstoqueProdutoDESCRICAO: TStringField;
    qEstoqueProdutoID_LOJA: TIntegerField;
    qEstoqueProdutoDT_MOV: TDateField;
    qEstoqueProdutoDOC: TStringField;
    qEstoqueProdutoENTRADA: TFMTBCDField;
    qEstoqueProdutoSAIDA: TFMTBCDField;
    qEstoqueProdutoSALDO: TFMTBCDField;
    qEstoqueProdutoTP_MOV: TStringField;
    qEstoqueProdutoCUSTO_UNI: TFMTBCDField;
    qEstoqueProdutoSALDO_ANTERIOR: TFMTBCDField;
    dspEstoqueProduto: TDataSetProvider;
    cdsEstoqueProduto: TClientDataSet;
    cdsEstoqueProdutoID_ESTOQUE: TIntegerField;
    cdsEstoqueProdutoID_PRODUTO: TIntegerField;
    cdsEstoqueProdutoDESCRICAO: TStringField;
    cdsEstoqueProdutoID_LOJA: TIntegerField;
    cdsEstoqueProdutoDT_MOV: TDateField;
    cdsEstoqueProdutoDOC: TStringField;
    cdsEstoqueProdutoENTRADA: TFMTBCDField;
    cdsEstoqueProdutoSAIDA: TFMTBCDField;
    cdsEstoqueProdutoSALDO: TFMTBCDField;
    cdsEstoqueProdutoTP_MOV: TStringField;
    cdsEstoqueProdutoCUSTO_UNI: TFMTBCDField;
    cdsEstoqueProdutoSALDO_ANTERIOR: TFMTBCDField;
    dsEstoqueProduto: TDataSource;
    qEstoqueProdutoCOD_BARRA: TStringField;
    cdsEstoqueProdutoCOD_BARRA: TStringField;
    qEstoqueProdutoFANTASIA: TStringField;
    cdsEstoqueProdutoFANTASIA: TStringField;
    DBGrid3: TDBGrid;
    Label8: TLabel;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    qEstoqueProdutoServidor: TSQLQuery;
    dspEstoqueProdutoServidor: TDataSetProvider;
    cdsEstoqueProdutoServidor: TClientDataSet;
    dsEstoqueProdutoServidor: TDataSource;
    qEstoqueProdutoServidorID_ESTOQUE: TIntegerField;
    qEstoqueProdutoServidorID_PRODUTO: TIntegerField;
    qEstoqueProdutoServidorDESCRICAO: TStringField;
    qEstoqueProdutoServidorCOD_BARRA: TStringField;
    qEstoqueProdutoServidorID_LOJA: TIntegerField;
    qEstoqueProdutoServidorFANTASIA: TStringField;
    qEstoqueProdutoServidorDT_MOV: TDateField;
    qEstoqueProdutoServidorDOC: TStringField;
    qEstoqueProdutoServidorENTRADA: TFMTBCDField;
    qEstoqueProdutoServidorSAIDA: TFMTBCDField;
    qEstoqueProdutoServidorSALDO: TFMTBCDField;
    qEstoqueProdutoServidorTP_MOV: TStringField;
    qEstoqueProdutoServidorCUSTO_UNI: TFMTBCDField;
    qEstoqueProdutoServidorSALDO_ANTERIOR: TFMTBCDField;
    cdsEstoqueProdutoServidorID_ESTOQUE: TIntegerField;
    cdsEstoqueProdutoServidorID_PRODUTO: TIntegerField;
    cdsEstoqueProdutoServidorDESCRICAO: TStringField;
    cdsEstoqueProdutoServidorCOD_BARRA: TStringField;
    cdsEstoqueProdutoServidorID_LOJA: TIntegerField;
    cdsEstoqueProdutoServidorFANTASIA: TStringField;
    cdsEstoqueProdutoServidorDT_MOV: TDateField;
    cdsEstoqueProdutoServidorDOC: TStringField;
    cdsEstoqueProdutoServidorENTRADA: TFMTBCDField;
    cdsEstoqueProdutoServidorSAIDA: TFMTBCDField;
    cdsEstoqueProdutoServidorSALDO: TFMTBCDField;
    cdsEstoqueProdutoServidorTP_MOV: TStringField;
    cdsEstoqueProdutoServidorCUSTO_UNI: TFMTBCDField;
    cdsEstoqueProdutoServidorSALDO_ANTERIOR: TFMTBCDField;
    DBGrid4: TDBGrid;
    Label9: TLabel;
    L_MENSAGEM1: TLabel;
    BB_ATUALIZAR1: TBitBtn;
    Panel3: TPanel;
    Gauge2: TGauge;
    Label10: TLabel;
    spAtuEstoque: TSQLStoredProc;
    dspAtuEstoque: TDataSetProvider;
    cdsAtuEstoque: TClientDataSet;
    qMovEstoqueProduto: TSQLQuery;
    qMovEstoqueProdutoID_ESTOQUE: TIntegerField;
    qMovEstoqueProdutoID_PRODUTO: TIntegerField;
    qMovEstoqueProdutoCOD_BARRA: TStringField;
    qMovEstoqueProdutoDESCRICAO: TStringField;
    qMovEstoqueProdutoID_LOJA: TIntegerField;
    qMovEstoqueProdutoFANTASIA: TStringField;
    qMovEstoqueProdutoDT_MOV: TDateField;
    qMovEstoqueProdutoENTRADA: TFMTBCDField;
    qMovEstoqueProdutoSAIDA: TFMTBCDField;
    qMovEstoqueProdutoSALDO: TFMTBCDField;
    qMovEstoqueProdutoTP_MOV: TStringField;
    qMovEstoqueProdutoCUSTO_UNI: TFMTBCDField;
    qMovEstoqueProdutoSALDO_ANTERIOR: TFMTBCDField;
    qMovEstoqueProdutoDOC: TStringField;
    dspMovEstoqueProduto: TDataSetProvider;
    cdsMovEstoqueProduto: TClientDataSet;
    cdsMovEstoqueProdutoID_ESTOQUE: TIntegerField;
    cdsMovEstoqueProdutoID_PRODUTO: TIntegerField;
    cdsMovEstoqueProdutoCOD_BARRA: TStringField;
    cdsMovEstoqueProdutoDESCRICAO: TStringField;
    cdsMovEstoqueProdutoID_LOJA: TIntegerField;
    cdsMovEstoqueProdutoFANTASIA: TStringField;
    cdsMovEstoqueProdutoDT_MOV: TDateField;
    cdsMovEstoqueProdutoENTRADA: TFMTBCDField;
    cdsMovEstoqueProdutoSAIDA: TFMTBCDField;
    cdsMovEstoqueProdutoSALDO: TFMTBCDField;
    cdsMovEstoqueProdutoTP_MOV: TStringField;
    cdsMovEstoqueProdutoCUSTO_UNI: TFMTBCDField;
    cdsMovEstoqueProdutoSALDO_ANTERIOR: TFMTBCDField;
    cdsMovEstoqueProdutoDOC: TStringField;
    dsMovEstoqueProduto: TDataSource;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    Gauge3: TGauge;
    qConsultaProduto: TSQLQuery;
    dspConsultaProduto: TDataSetProvider;
    cdsConsultaProduto: TClientDataSet;
    dsConsultaProduto: TDataSource;
    dsDinamica: TDataSource;
    cdsDinamica: TClientDataSet;
    dspDinamica: TDataSetProvider;
    qDinamica: TSQLQuery;
    Label11: TLabel;
    L_NOVOS_REGISTROS: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    L_TOTAL_LOCAL: TLabel;
    Label17: TLabel;
    L_TOTAL_SERVIDOR: TLabel;
    Label18: TLabel;
    DBGrid5: TDBGrid;
    Label19: TLabel;
    DBGrid6: TDBGrid;
    BitBtn2: TBitBtn;
    Button3: TButton;
    Label13: TLabel;
    L_MENSAGEM4: TLabel;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label7: TLabel;
    Label14: TLabel;
    BB_ATUALIZAR: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Gauge1: TGauge;
    TabSheet2: TTabSheet;
    qVendaPdvLocal: TSQLQuery;
    qItemVendaPdvLocal: TSQLQuery;
    dspVendaPdvLocal: TDataSetProvider;
    cdsVendaPdvLocal: TClientDataSet;
    cdsItemVendaPdvLocal: TClientDataSet;
    dsVendaPdvLocal: TDataSource;
    dsItemVendaPdvLocal: TDataSource;
    DataSource4: TDataSource;
    ClientDataSet4: TClientDataSet;
    SQLQuery4: TSQLQuery;
    dspItemVendaPdvLocal: TDataSetProvider;
    DataSetProvider4: TDataSetProvider;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    qVendaPdvLocalID_PDV: TIntegerField;
    qVendaPdvLocalNR_ORCAMENTO: TIntegerField;
    qVendaPdvLocalID_LOJA: TIntegerField;
    qVendaPdvLocalID_GRUPO: TIntegerField;
    qVendaPdvLocalDT_ORCAMENTO: TDateField;
    qVendaPdvLocalVL_ORCAMENTO: TFMTBCDField;
    qVendaPdvLocalVL_DESCONTO: TFMTBCDField;
    qVendaPdvLocalVL_LIQUIDO: TFMTBCDField;
    qVendaPdvLocalSTATUS: TStringField;
    qVendaPdvLocalTRANSF: TStringField;
    qVendaPdvLocalNOME_CLIENTE: TStringField;
    qVendaPdvLocalCPF_CLIENTE: TStringField;
    qVendaPdvLocalID_VENDEDOR: TIntegerField;
    qVendaPdvLocalCAIXA: TIntegerField;
    qVendaPdvLocalID_USUARIO: TIntegerField;
    qVendaPdvLocalHR_ORCAMENTO: TTimeField;
    qVendaPdvLocalCUPOM: TStringField;
    qVendaPdvLocalPERC_DESC: TFMTBCDField;
    cdsVendaPdvLocalID_PDV: TIntegerField;
    cdsVendaPdvLocalNR_ORCAMENTO: TIntegerField;
    cdsVendaPdvLocalID_LOJA: TIntegerField;
    cdsVendaPdvLocalID_GRUPO: TIntegerField;
    cdsVendaPdvLocalDT_ORCAMENTO: TDateField;
    cdsVendaPdvLocalVL_ORCAMENTO: TFMTBCDField;
    cdsVendaPdvLocalVL_DESCONTO: TFMTBCDField;
    cdsVendaPdvLocalVL_LIQUIDO: TFMTBCDField;
    cdsVendaPdvLocalSTATUS: TStringField;
    cdsVendaPdvLocalTRANSF: TStringField;
    cdsVendaPdvLocalNOME_CLIENTE: TStringField;
    cdsVendaPdvLocalCPF_CLIENTE: TStringField;
    cdsVendaPdvLocalID_VENDEDOR: TIntegerField;
    cdsVendaPdvLocalCAIXA: TIntegerField;
    cdsVendaPdvLocalID_USUARIO: TIntegerField;
    cdsVendaPdvLocalHR_ORCAMENTO: TTimeField;
    cdsVendaPdvLocalCUPOM: TStringField;
    cdsVendaPdvLocalPERC_DESC: TFMTBCDField;
    BitBtn6: TBitBtn;
    spRecebeVendaPDV: TSQLStoredProc;
    dspRecebeVendaPDV: TDataSetProvider;
    cdsRecebeVendaPDV: TClientDataSet;
    spRecebeItemVendaPdv: TSQLStoredProc;
    dspRecebeItemVendaPdv: TDataSetProvider;
    cdsRecebeItemVendaPdv: TClientDataSet;
    Panel5: TPanel;
    Gauge4: TGauge;
    Label6: TLabel;
    BB_ATUALIZARVENDA: TBitBtn;
    L_MENSAGEM15: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    L_NOME_LOJA: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    SB_ATU_ESTOQUE_PRODUTO: TSpeedButton;
    Label2: TLabel;
    L_CONEXAO_SERVIDOR: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TBitBtn;
    Panel6: TPanel;
    SpeedButton3: TSpeedButton;
    qItemVendaPdvLocalNR_ORCAMENTO: TIntegerField;
    qItemVendaPdvLocalID_PRODUTO: TIntegerField;
    qItemVendaPdvLocalID_LOJA: TIntegerField;
    qItemVendaPdvLocalQUANT: TLargeintField;
    qItemVendaPdvLocalVL_UNIT: TFMTBCDField;
    qItemVendaPdvLocalTOTAL: TFMTBCDField;
    qItemVendaPdvLocalSUM: TFMTBCDField;
    qItemVendaPdvLocalPERC_DES: TFMTBCDField;
    qItemVendaPdvLocalTRANSF: TStringField;
    qItemVendaPdvLocalSTATUS: TStringField;
    qItemVendaPdvLocalCOD_BARRA: TStringField;
    qItemVendaPdvLocalDESCRICAO: TStringField;
    qItemVendaPdvLocalUNIDADE: TStringField;
    cdsItemVendaPdvLocalNR_ORCAMENTO: TIntegerField;
    cdsItemVendaPdvLocalID_PRODUTO: TIntegerField;
    cdsItemVendaPdvLocalID_LOJA: TIntegerField;
    cdsItemVendaPdvLocalQUANT: TLargeintField;
    cdsItemVendaPdvLocalVL_UNIT: TFMTBCDField;
    cdsItemVendaPdvLocalTOTAL: TFMTBCDField;
    cdsItemVendaPdvLocalSUM: TFMTBCDField;
    cdsItemVendaPdvLocalPERC_DES: TFMTBCDField;
    cdsItemVendaPdvLocalTRANSF: TStringField;
    cdsItemVendaPdvLocalSTATUS: TStringField;
    cdsItemVendaPdvLocalCOD_BARRA: TStringField;
    cdsItemVendaPdvLocalDESCRICAO: TStringField;
    cdsItemVendaPdvLocalUNIDADE: TStringField;
    qEstoqueDESCRICAO_PAGAMENTO: TStringField;
    cdsEstoqueDESCRICAO_PAGAMENTO: TStringField;
    qEstoqueID_TIPO_PAGAMENTO: TIntegerField;
    cdsEstoqueID_TIPO_PAGAMENTO: TIntegerField;
    qItemVendaPdvLocalID_ITEM_PDV: TIntegerField;
    cdsItemVendaPdvLocalID_ITEM_PDV: TIntegerField;
    ClientDataSet3: TClientDataSet;
    DataSource3: TDataSource;
    DataSetProvider3: TDataSetProvider;
    SQLQuery3: TSQLQuery;
    qEstoqueServidorDESCRICAO_PAGAMENTO: TStringField;
    cdsEstoqueServidorDESCRICAO_PAGAMENTO: TStringField;
    BitBtn7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure BB_ATUALIZARClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BB_ATUALIZAR1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SB_ATU_ESTOQUE_PRODUTOClick(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure MovimentoProdutoEnter(Sender: TObject);
    procedure TabSheet3Enter(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure BB_ATUALIZARVENDAClick(Sender: TObject);
    procedure PageControl1Enter(Sender: TObject);
    procedure PageControl1MouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
    Procedure ImportarProduto;
    Procedure ContaRegistros;
    Procedure Aguarde;
    Procedure ProcRecebeItemVenda;
  public
    { Public declarations }
    IniControle : TIniFile;
  end;

var
  frmAtuEstoqueServidor: TfrmAtuEstoqueServidor;
  ConexaoAtiva : String;
  LOJA       : string;
implementation

uses uRetaguarda, U_LIB, UD_PESQUISA, uDialogo, uDm, uAtuProdDJDV, uPdv;

{$R *.dfm}

procedure TfrmAtuEstoqueServidor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmAtuEstoqueServidor := nil;
  ConexaoAtiva :='';
  DM.ConexaoServidor.Connected := False;
end;

function TfrmAtuEstoqueServidor.UltimoDiaMes(Mdt: TDateTime): TDateTime;
var
  ano, mes, dia : word;
  mDtTemp : TDateTime;
begin
  Decodedate(mDt, ano, mes, dia);
  mDtTemp := (mDt - dia) + 33;
  Decodedate(mDtTemp, ano, mes, dia);
  Result := mDtTemp - dia;
end;

procedure TfrmAtuEstoqueServidor.MaskEdit1Enter(Sender: TObject);
var
  atual:TDate;
     dia,mes,ano:Word;
  dia1,mes1,ano1:Word;
  mes2 : String;
begin
  atual:=Now;
  DecodeDate(atual,ano,mes,dia);
  if mes < 10 then
  begin
    mes2 := '0'+IntToStr(mes);
    MaskEdit1.Text:='01'+'/'+(mes2)+'/'+IntToStr(ano);
  end
  else
  begin
    MaskEdit1.Text:='01'+'/'+IntToStr(mes)+'/'+IntToStr(ano);
  end;
end;

procedure TfrmAtuEstoqueServidor.MaskEdit1Exit(Sender: TObject);
var
  texto:Tdate;
begin
  texto := UltimoDiaMes(Date);
  MaskEdit2.Text := (datetostr(Texto));
  MaskEdit2.SetFocus;
end;

procedure TfrmAtuEstoqueServidor.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmAtuEstoqueServidor.FormShow(Sender: TObject);
Var
 Loja : String;
begin

  PageControl1.ActivePage := MovimentoProduto;
  DM.ConexaoServidor.Connected := False;
  Loja := frmPdv.recInformacoes.lojaCredenciada;
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames :='';
  DM.cdsDinamica.CommandText := 'SELECT FANTASIA FROM TB_LOJAS WHERE ID_LOJA = '+Loja;
  DM.cdsDinamica.Open;

  L_NOME_LOJA.Caption := Loja+' - '+DM.cdsDinamica.Fields[0].AsString;

  if DM.ConexaoServidor.Connected = False then
  begin
    L_CONEXAO_SERVIDOR.Caption := 'Servidor Desconectado';
    L_CONEXAO_SERVIDOR.Font.Color := clRed;
    L_CONEXAO_SERVIDOR.Font.Style :=[fsBold];
    ConexaoAtiva := 'Nao';
    MaskEdit1.Text := DateToStr(Date);
    MaskEdit2.Text := DateToStr(Date);
    MaskEdit1.SetFocus;
  end
  else
  begin
    L_CONEXAO_SERVIDOR.Caption := 'Servidor Conectado';
    L_CONEXAO_SERVIDOR.Font.Color := clBlue;
    L_CONEXAO_SERVIDOR.Font.Style :=[fsBold];
    ConexaoAtiva := 'Sim';
    MaskEdit1.Text := DateToStr(Date);
    MaskEdit2.Text := DateToStr(Date);
  end;
end;

procedure TfrmAtuEstoqueServidor.BitBtn1Click(Sender: TObject);
begin


   //SAIDA ESTOQUE
{   DM.cdsMovEstoque.Close;
   DM.cdsMovEstoque.Open;
   DM.cdsInsertSaidaTroca.Params[0].AsInteger := StrToInt(frmpdv.recInformacoes.lojaCredenciada);
   DM.cdsInsertSaidaTroca.Params[1].AsDate    :=StrToDate(MaskEdit1.Text);
   DM.cdsInsertSaidaTroca.Params[2].AsDate    :=StrToDate(MaskEdit2.Text);
   DM.cdsInsertSaidaTroca.Params[3].AsString  :='S_Troca_L_'+frmpdv.recInformacoes.lojaCredenciada;
   DM.cdsInsertSaidaTroca.Params[4].AsInteger :=cdsEstoqueID_TIPO_PAGAMENTO.AsInteger;

   DM.cdsInsertSaidaTroca.Execute;}
////////////   DM.cdsMovEstoque.ApplyUpdates(0);
   DM.cdsMovEstoque.Refresh;
   //ENTRADA ESTOQUE
   DM.cdsMovEstoque.Close;
   DM.cdsMovEstoque.Open;
   DM.cdsInsertEntradaTroca.Params[0].AsInteger := StrToInt(frmpdv.recInformacoes.lojaCredenciada);
   DM.cdsInsertEntradaTroca.Params[1].AsDate    :=StrToDate(MaskEdit1.Text);
   DM.cdsInsertEntradaTroca.Params[2].AsDate    :=StrToDate(MaskEdit2.Text);
   DM.cdsInsertEntradaTroca.Params[3].AsString  :='E_Troca_L_'+frmpdv.recInformacoes.lojaCredenciada;
   DM.cdsInsertEntradaTroca.Execute;
   DM.cdsMovEstoque.ApplyUpdates(0);
   DM.cdsMovEstoque.Refresh;

  // SB_ATU_ESTOQUE_PRODUTOClick(Self);
   //---
   Aguarde;
end;

procedure TfrmAtuEstoqueServidor.Button1Click(Sender: TObject);
var F:Tform;
MSG: Tlabel;
Borda: TShape;
begin
  F:=  TForm.Create(Application);
  F.BorderStyle:= bsNone;
  F.Position:= poDesktopCenter;
  F.Width:= 170;
  F.Height:= 50; //at� aqui criamos o form

  Borda:= TShape.Create(Application);
  Borda.Parent:= F;
  Borda.Align:= alClient; // uma borda envolta do form

  MSG:=  TLabel.Create(Application);
  MSG.Parent:=F;
  MSG.Transparent:= true;
  MSG.AutoSize:= false;
  MSG.Width:= 160;
  MSG.Font.Size := 12;
  Msg.Caption:='Aguarde';
  MSG.Alignment:= taCenter;//label com a mensagem "Aguarde"

  F.Show;
  F.Update;

    cdsEstoque.Close;
    cdsEstoque.Params[0].AsDate    := StrToDate(MaskEdit1.Text);
    cdsEstoque.Params[1].AsDate    := StrToDate(MaskEdit2.Text);
    cdsEstoque.Params[2].AsInteger := StrToInt(frmpdv.recInformacoes.lojaCredenciada);
    cdsEstoque.Open;
    cdsEstoque.Refresh;

{    if cdsEstoque.IsEmpty then
    begin
//      Application.MessageBox('Nenhum Registro Movimenta��o Geral Encontrado na Base Local.','Aten��o!!!',MB_OK+MB_ICONWARNING);
      MaskEdit1.SetFocus;
    end
    else
    begin
     // DBGrid1.SetFocus;
    end;  }

  F.Free; //
end;

procedure TfrmAtuEstoqueServidor.Button2Click(Sender: TObject);
var F:Tform;
MSG: Tlabel;
Borda: TShape;
begin
  F:=  TForm.Create(Application);
  F.BorderStyle:= bsNone;
  F.Position:= poDesktopCenter;
  F.Width:= 170;
  F.Height:= 50; //at� aqui criamos o form

  Borda:= TShape.Create(Application);
  Borda.Parent:= F;
  Borda.Align:= alClient; // uma borda envolta do form

  MSG:=  TLabel.Create(Application);
  MSG.Parent:=F;
  MSG.Transparent:= true;
  MSG.AutoSize:= false;
  MSG.Width:= 160;
  MSG.Font.Size := 12;
  Msg.Caption:='Aguarde';
  MSG.Alignment:= taCenter;//label com a mensagem "Aguarde"

  F.Show;
  F.Update;

  if ConexaoAtiva = 'Sim' then
  begin
    cdsEstoqueServidor.Close;
    cdsEstoqueServidor.Params[0].AsDate    := StrToDate(MaskEdit1.Text);
    cdsEstoqueServidor.Params[1].AsDate    := StrToDate(MaskEdit2.Text);
    cdsEstoqueServidor.Params[2].AsInteger := StrToInt(frmpdv.recInformacoes.lojaCredenciada);
    cdsEstoqueServidor.Open;

    if cdsEstoqueServidor.IsEmpty then
    begin
//      Application.MessageBox('Nenhum Registro Movimenta��o Geral Encontrado na Base Servidor.','Aten��o!!!',MB_OK+MB_ICONWARNING);
//      Button2Click(Self);
//      SB_ATU_ESTOQUE_PRODUTOClick(Self);
    end
    else
    begin
//      Button2Click(Self);
//      SB_ATU_ESTOQUE_PRODUTOClick(Self);
    end;
  end
  else
  begin
//    Application.MessageBox('Favor Fazer Conex�o Com o  Servidor.','Aten��o!!!',MB_OK+MB_ICONWARNING);
  end;

  F.Free; //
end;

procedure TfrmAtuEstoqueServidor.MaskEdit2Exit(Sender: TObject);
Var
Loja : string;
begin


  Loja := frmpdv.recInformacoes.lojaCredenciada;
    DM.cdsMovEstoque.Open;
    DM.cdsInsertSaidaEstoque.Params[0].AsInteger := StrToInt(frmpdv.recInformacoes.lojaCredenciada);
    DM.cdsInsertSaidaEstoque.Params[1].AsDate :=StrToDate(MaskEdit1.Text);
    DM.cdsInsertSaidaEstoque.Params[2].AsDate :=StrToDate(MaskEdit1.Text);
    DM.cdsInsertSaidaEstoque.Params[3].AsString := 'Vendas_L_' +Loja;
    DM.cdsInsertSaidaEstoque.Execute;
    DM.cdsMovEstoque.ApplyUpdates(0);
    DM.cdsMovEstoque.Refresh;

      // grava estoque por produto
    DM.cdsEstoqueProduto.Open;
    DM.cdsInsertSaidaEstoqueProduto.Params[0].AsInteger := StrToInt(frmpdv.recInformacoes.lojaCredenciada);
    DM.cdsInsertSaidaEstoqueProduto.Params[1].AsDate := date;
    DM.cdsInsertSaidaEstoqueProduto.Params[2].AsString := 'S';
    DM.cdsInsertSaidaEstoqueProduto.Execute;
    DM.cdsEstoqueProduto.ApplyUpdates(0);
    DM.cdsEstoqueProduto.Refresh;


 if ConexaoAtiva = 'Sim' then
 begin
    if PageControl1.ActivePage = MovimentoProduto then
    begin
      SB_ATU_ESTOQUE_PRODUTOClick(Self);
      BitBtn3Click(Self);
      BitBtn5Click(Self);
    end;
    if PageControl1.ActivePage = TabSheet1 then
    begin
      Button1Click(Self);
      Button2Click(Self);
      BitBtn3Click(Self);
      BitBtn5Click(Self);
      BitBtn6Click(Self);
    end;
    if PageControl1.ActivePage = TabSheet3 then
    begin
     // BitBtn3Click(Self);
     // BitBtn5Click(Self);
     // BitBtn6Click(Self);
      Button3Click(Self);
      DBGrid5.SetFocus;
    end;
 end
 else
 begin
   BitBtn1Click(Self);
   BitBtn6Click(Self);
 end;
end;

procedure TfrmAtuEstoqueServidor.MovimentoProdutoEnter(Sender: TObject);
begin
  SB_ATU_ESTOQUE_PRODUTOClick(Self);
  BitBtn3Click(Self);
  cdsEstoque.Close;
  cdsEstoque.Params[0].AsDate    := StrToDate(MaskEdit1.Text);
  cdsEstoque.Params[1].AsDate    := StrToDate(MaskEdit2.Text);
  cdsEstoque.Params[2].AsInteger := StrToInt(frmpdv.recInformacoes.lojaCredenciada);
  cdsEstoque.Open;
end;

procedure TfrmAtuEstoqueServidor.BB_ATUALIZARClick(Sender: TObject);
begin
//  Application.MessageBox('Dependendo da Velocidade de Sua Conex�o'+#13+
//                         'Este Processo Poder� Levar V�rios Minutos.','Aten��o!!!!',MB_OK +MB_ICONWARNING);

  //L_MENSAGEM.Visible := True;
  if Application.MessageBox('Deseja Atualizar Registros Movimenta��o Geral No Servidor ?','Confirma��o',MB_YESNO+MB_ICONQUESTION ) = IDYES then
  begin
    Panel2.Visible := True;
    Gauge2.Visible := True;
    cdsEstoqueServidor.Open;

    cdsEstoque.EnableControls;
    Gauge1.MaxValue := cdsEstoque.RecordCount;
    Gauge1.Progress := 0;
    cdsEstoque.First;
    Label3.Refresh;
  while NOT cdsEstoque.Eof do
  begin
    {ShowMessage(cdsEstoqueDT_MOV.AsString+'-'+cdsEstoqueDIA.AsString+' - '+#13+
                cdsEstoqueQT_VENDIDA.AsString);}

    cdsEstoqueServidor.Open;
    DM.cdsRecebeEstoque.Params[0].AsInteger := cdsEstoqueID_LOJA.AsInteger;
    DM.cdsRecebeEstoque.Params[1].AsDate    := StrToDate(cdsEstoqueDT_MOV.AsString);
    DM.cdsRecebeEstoque.Params[2].AsInteger := cdsEstoqueQT_VENDIDA.AsInteger;
    DM.cdsRecebeEstoque.Params[3].AsFloat   := cdsEstoqueENTRADA.AsFloat;
    DM.cdsRecebeEstoque.Params[4].AsInteger := cdsEstoqueENTRADA_MERCADORIA.AsInteger;
    DM.cdsRecebeEstoque.Params[5].AsString  := cdsEstoqueNR_DOC.AsString;
    DM.cdsRecebeEstoque.Params[6].AsString  := cdsEstoqueTP_MOV.AsString;
    DM.cdsRecebeEstoque.Params[7].AsInteger  := cdsEstoqueID_TIPO_PAGAMENTO.AsInteger;
    DM.cdsRecebeEstoque.Execute;

    cdsEstoqueServidor.ApplyUpdates(0);
    cdsEstoqueServidor.Refresh;
    cdsEstoque.Next;
 //   Panel2.Refresh;
    Gauge1.Progress := Gauge1.Progress +1 ;
    Gauge1.Refresh;
  end;
    cdsEstoque.DisableControls;
    //ShowMessage('Registros Exportados Com Sucesso!!!!');
    Panel2.Visible := False;
///    PageControl1.ActivePage := TabSheet2;
///    L_MENSAGEM15.Caption :='Iniciando Atualiza��o das Vendas do dia';
///    BB_ATUALIZARVENDAClick(Self);
    //L_MENSAGEM.Visible := False;

{    if Application.MessageBox('Deseja Atualizar Estoque Por Produto Agora?','Confirma��o!!!!',MB_YESNO)= idyes then
    begin
      PageControl1.ActivePage := TabSheet2;
      BitBtn3Click(Self);
      BitBtn5Click(Self);
      BB_ATUALIZAR1Click(Self);
    end
    else
    begin
       ShowMessage('Atualiza��o de Estoque Por Produto Cancelada.');
    end; }
{      PageControl1.ActivePage := MovimentoProduto;
      BitBtn3Click(Self);
      BitBtn5Click(Self);
      BB_ATUALIZAR1Click(Self);}
       Gauge2.Visible := False;
  end
  else
  begin
    //L_MENSAGEM.Visible := False;
  end;
end;

procedure TfrmAtuEstoqueServidor.BB_ATUALIZARVENDAClick(Sender: TObject);
begin
  L_MENSAGEM15.Visible := True;
  Panel5.Visible := True;
  Gauge4.Visible := True;

  cdsVendaPdvLocal.DisableControls;
  Gauge4.MaxValue := cdsVendaPdvLocal.RecordCount;
  Gauge4.Progress := 0;
  cdsVendaPdvLocal.First;

  while Not cdsVendaPdvLocal.Eof do
  begin
   try
     cdsRecebeVendaPDV.Params[0].AsInteger  := cdsVendaPdvLocalID_PDV.AsInteger;
     cdsRecebeVendaPDV.Params[1].AsInteger  := cdsVendaPdvLocalNR_ORCAMENTO.AsInteger;
     cdsRecebeVendaPDV.Params[2].AsInteger  := cdsVendaPdvLocalID_LOJA.AsInteger;
     cdsRecebeVendaPDV.Params[3].AsInteger  := cdsVendaPdvLocalID_GRUPO.AsInteger;
     cdsRecebeVendaPDV.Params[4].AsDate     := cdsVendaPdvLocalDT_ORCAMENTO.AsDateTime;
     cdsRecebeVendaPDV.Params[5].AsFloat    := cdsVendaPdvLocalVL_ORCAMENTO.AsFloat;
     cdsRecebeVendaPDV.Params[6].AsFloat    := cdsVendaPdvLocalVL_DESCONTO.AsFloat;
     cdsRecebeVendaPDV.Params[7].AsFloat    := cdsVendaPdvLocalVL_LIQUIDO.AsFloat;
     cdsRecebeVendaPDV.Params[8].AsString   := cdsVendaPdvLocalSTATUS.AsString;
     cdsRecebeVendaPDV.Params[9].AsString   := cdsVendaPdvLocalTRANSF.AsString;
     cdsRecebeVendaPDV.Params[10].AsString  := cdsVendaPdvLocalNOME_CLIENTE.AsString;
     cdsRecebeVendaPDV.Params[11].AsString  := cdsVendaPdvLocalCPF_CLIENTE.AsString;
     cdsRecebeVendaPDV.Params[12].AsInteger := cdsVendaPdvLocalID_VENDEDOR.AsInteger;
     cdsRecebeVendaPDV.Params[13].AsInteger := cdsVendaPdvLocalCAIXA.AsInteger;
     cdsRecebeVendaPDV.Params[14].AsInteger := cdsVendaPdvLocalID_USUARIO.AsInteger;
     cdsRecebeVendaPDV.Params[15].AsTime    := cdsVendaPdvLocalHR_ORCAMENTO.AsDateTime;
     cdsRecebeVendaPDV.Params[16].AsString  := cdsVendaPdvLocalCUPOM.AsString;
     cdsRecebeVendaPDV.Params[17].AsFloat   := cdsVendaPdvLocalPERC_DESC.AsFloat;
     cdsRecebeVendaPDV.Execute;

     cdsVendaPdvLocal.Edit;
     cdsVendaPdvLocalTRANSF.Value:= 'S';
     cdsVendaPdvLocal.ApplyUpdates(0);
   Except
     ShowMessage('Erro Ao Enviar Venda. Tente Novamente');
     Abort;
   end;

    //-- itens da venda
    //--
    cdsVendaPdvLocal.Next;
    if Gauge4.Progress > 5 then
    begin
      L_MENSAGEM15.Caption :='Aguarde.....';
    end;
    L_MENSAGEM15.Refresh;
    Label6.Refresh;
    Gauge4.Progress := Gauge4.Progress +1 ;
  end;
  cdsVendaPdvLocal.EnableControls;
  ProcRecebeItemVenda;
  ShowMessage('Movimento Diario Enviado Com Sucesso!');
  L_MENSAGEM15.Visible := False;
  Panel5.Visible := False;
  Gauge4.Visible := False;

end;

procedure TfrmAtuEstoqueServidor.BitBtn3Click(Sender: TObject);
begin
  if ConexaoAtiva = 'Sim' then
  begin
    cdsEstoqueProdutoServidor.Close;
    cdsEstoqueProdutoServidor.Params[0].AsDate    := StrToDate(MaskEdit1.Text);
    cdsEstoqueProdutoServidor.Params[1].AsDate    := StrToDate(MaskEdit2.Text);
    cdsEstoqueProdutoServidor.Params[2].AsInteger := StrToInt(frmpdv.recInformacoes.lojaCredenciada);
    cdsEstoqueProdutoServidor.Open;

    if cdsEstoqueProdutoServidor.IsEmpty then
    begin
//      Application.MessageBox('Nenhum Registro Movimenta��o Por Produto Encontrado na Base Servidor.','Aten��o!!!',MB_OK+MB_ICONWARNING);
        BB_ATUALIZAR1.Enabled := True;
      BitBtn5Click(Self);
    end
    else
    begin
      BitBtn5Click(Self);
      BB_ATUALIZAR1.Enabled := True;
    end;
  end
  else
  begin
    //Application.MessageBox('Favor Fazer Conex�o Com o  Servidor.','Aten��o!!!',MB_OK+MB_ICONWARNING);
  end;

end;

procedure TfrmAtuEstoqueServidor.BitBtn5Click(Sender: TObject);
begin
  cdsEstoqueProduto.Close;
  cdsEstoqueProduto.Params[0].AsDate    := StrToDate(MaskEdit1.Text);
  cdsEstoqueProduto.Params[1].AsDate    := StrToDate(MaskEdit2.Text);
  cdsEstoqueProduto.Params[2].AsInteger := StrToInt(frmpdv.recInformacoes.lojaCredenciada);
  cdsEstoqueProduto.Open;

  if cdsEstoqueProduto.IsEmpty then
  begin
//    Application.MessageBox('Nenhum Registro Movimenta��o Por Produto Encontrado na Base Local.','Aten��o!!!',MB_OK+MB_ICONWARNING);
    MaskEdit1.SetFocus;
  end;
end;

procedure TfrmAtuEstoqueServidor.BitBtn6Click(Sender: TObject);
begin
  cdsVendaPdvLocal.Close;
  cdsVendaPdvLocal.Params[0].AsDate := StrToDate(MaskEdit1.Text);
  cdsVendaPdvLocal.Params[1].AsDate := StrToDate(MaskEdit2.Text);
  cdsVendaPdvLocal.Params[2].AsInteger := StrToInt(frmpdv.recInformacoes.lojaCredenciada);
  cdsVendaPdvLocal.Open;

  cdsItemVendaPdvLocal.Close;
  cdsItemVendaPdvLocal.Params[0].AsDate := StrToDate(MaskEdit1.Text);
  cdsItemVendaPdvLocal.Params[1].AsDate := StrToDate(MaskEdit2.Text);
  cdsItemVendaPdvLocal.Open;
end;

procedure TfrmAtuEstoqueServidor.BitBtn7Click(Sender: TObject);
begin
  frmAutProdDJPDV.ShowModal;
end;

procedure TfrmAtuEstoqueServidor.BB_ATUALIZAR1Click(Sender: TObject);
begin
  L_MENSAGEM1.Visible := True;
  Panel3.Visible := True;
  Gauge2.Visible := True;

  cdsEstoqueProdutoServidor.Open;

  cdsEstoqueProduto.DisableControls;
  Gauge2.MaxValue := cdsEstoqueProduto.RecordCount;
  Gauge2.Progress := 0;
  cdsEstoqueProduto.First;
  while NOT cdsEstoqueProduto.Eof do
  begin
    {ShowMessage(cdsEstoqueDT_MOV.AsString+'-'+cdsEstoqueDIA.AsString+' - '+#13+
                cdsEstoqueQT_VENDIDA.AsString);}

    cdsEstoqueProdutoServidor.Open;
    DM.cdsRecebeEstoqueProduto.Params[0].AsInteger := cdsEstoqueProdutoID_LOJA.AsInteger;
    DM.cdsRecebeEstoqueProduto.Params[1].AsDate    := StrToDate(cdsEstoqueProdutoDT_MOV.AsString);
    if cdsEstoqueProdutoTP_MOV.AsString ='S'then
      DM.cdsRecebeEstoqueProduto.Params[2].AsInteger := cdsEstoqueProdutoSAIDA.AsInteger
    else
      DM.cdsRecebeEstoqueProduto.Params[2].AsInteger := cdsEstoqueProdutoENTRADA.AsInteger;
    DM.cdsRecebeEstoqueProduto.Params[3].AsString  := cdsEstoqueProdutoDOC.AsString;
    DM.cdsRecebeEstoqueProduto.Params[4].AsInteger := cdsEstoqueProdutoID_PRODUTO.AsInteger;
    DM.cdsRecebeEstoqueProduto.Params[5].AsString  := cdsEstoqueProdutoTP_MOV.AsString;
    DM.cdsRecebeEstoqueProduto.Execute;

    cdsEstoqueProdutoServidor.ApplyUpdates(0);
//    cdsEstoqueProdutoServidor.Refresh;

    // ALTERA��O 02.04.2018
{    cdsMovEstoqueProduto.Close;
    cdsMovEstoqueProduto.Params[0].AsInteger := cdsEstoqueProdutoID_LOJA.AsInteger;
    cdsMovEstoqueProduto.Open;
    cdsAtuEstoque.Params[0].AsInteger := cdsEstoqueProdutoID_LOJA.AsInteger;
    cdsAtuEstoque.Params[1].AsInteger := cdsEstoqueProdutoID_PRODUTO.AsInteger;
    cdsAtuEstoque.Params[2].AsDate    := StrToDate(cdsEstoqueProdutoDT_MOV.AsString);
    cdsAtuEstoque.Params[3].AsDate    := StrToDate(cdsEstoqueProdutoDT_MOV.AsString);
    cdsAtuEstoque.Execute;

    cdsMovEstoqueProduto.Close;
    cdsMovEstoqueProduto.Params[0].AsInteger := cdsEstoqueProdutoID_LOJA.AsInteger;
    cdsMovEstoqueProduto.Open; }

    cdsEstoqueProduto.Next;
    L_MENSAGEM1.Refresh;
    Label10.Refresh;
    Gauge2.Progress := Gauge2.Progress +1 ;
  end;
    cdsEstoqueProduto.EnableControls;
    ShowMessage('Registros Exportados Com Sucesso!!!!');
    Panel3.Visible := False;
    L_MENSAGEM1.Visible := False;
    PageControl1.ActivePage := TabSheet1;
    BB_ATUALIZARClick(Self);
//    PageControl1.ActivePage := MovimentoGeral;
{    if Application.MessageBox('Deseja Verificar Se Exitem Novos Produtos Para Atualizar?','Confirma��o!!',MB_YESNO+MB_ICONQUESTION) = idyes then
    begin
      DM.cdsRecebeProduto.Close;
      DM.cdsRecebeProduto.Open;
      DM.cdsEnviaProduto.Close;
      DM.cdsEnviaProduto.Open;
      Button3Click(Self);
      Panel3.Visible := False;
      L_MENSAGEM1.Visible := False;

    end
    else
    begin
      ShowMessage('Verifica��o Cancelada.');
      Panel3.Visible := False;
      L_MENSAGEM1.Visible := False;
    end }
//  end
//  else
//  begin
    L_MENSAGEM1.Visible := False;
//  end;
end;

procedure TfrmAtuEstoqueServidor.ContaRegistros;
Var
 NovosRegistro : Double;
 sSql : string;
begin
  sSql := ' SELECT COUNT(P.ID_PRODUTO) FROM TB_PRODUTO P ';

  if LOJA = 'S' then
  begin
    DM.cdsDinamicaLocal.Close;
    DM.cdsDinamicaLocal.IndexFieldNames:='';
    DM.cdsDinamicaLocal.CommandText:=sSql;
    DM.cdsDinamicaLocal.Open;

    L_TOTAL_LOCAL.Caption := FormatFloat('######',DM.cdsDinamicaLocal.Fields[0].AsFloat);


    DM.cdsDinamicaServidor.Close;
    DM.cdsDinamicaServidor.IndexFieldNames:='';
    DM.cdsDinamicaServidor.CommandText:='SELECT COUNT(ID_PRODUTO) FROM TB_PRODUTO WHERE PDV=''S'' AND ID_LOJAS = '+frmpdv.recInformacoes.lojaCredenciada;
    DM.cdsDinamicaServidor.Open;

    L_TOTAL_SERVIDOR.Caption := FormatFloat('######',DM.cdsDinamicaServidor.Fields[0].AsFloat);

    NovosRegistro :=(DM.cdsDinamicaServidor.Fields[0].AsFloat-DM.cdsDinamicaLocal.Fields[0].AsFloat);
    L_NOVOS_REGISTROS.Caption := FormatFloat('#####',NovosRegistro);

    if NovosRegistro > 0 then
    begin
      BitBtn2.Enabled := True;
      if Application.MessageBox('Existem Novos Produtos Cadastrados. Deseja Atualizar Agora?','Confirma��o!!!',MB_YESNO+MB_ICONQUESTION)= IdYes then
      begin
        PageControl1.ActivePage := TabSheet3;
        BitBtn2Click(Self);
      end
      else
      begin
        Application.MessageBox('Atualiza��o Cancelada.','Aten��o!!!',MB_OK);
        ShowMessage('A Atualiza��o de Novos Produtos e Necess�ria, Para Evitar'+#13+
                    'Que no Ato da Venda, N�o Conste Produto N�o Cadastrado.Por Isso '+
                    'A Atualiza��o � de Extrema NECESSIDADE ');
      end;
    end
    else
    begin
  //    Application.MessageBox('N�o Existem Novos Produtos Cadastrados Para Importar.','Informa��o.',MB_OK);
      BitBtn2.Enabled := True;
    end;
  end;

end;

procedure TfrmAtuEstoqueServidor.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if cdsEstoqueProdutoTP_MOV.AsString = 'S'  then // condi��o
   DBGrid3.Canvas.Font.Color:= clRed // coloque aqui a cor desejada
  else
   DBGrid3.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
   DBGrid3.DefaultDrawDataCell(Rect, DBGrid3.columns[datacol].field, State);
   DBGrid3.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito
end;

procedure TfrmAtuEstoqueServidor.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if cdsEstoqueProdutoServidorTP_MOV.AsString = 'S'  then // condi��o
   DBGrid4.Canvas.Font.Color:= clRed // coloque aqui a cor desejada
  else
   DBGrid4.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
   DBGrid4.DefaultDrawDataCell(Rect, DBGrid4.columns[datacol].field, State);
   DBGrid4.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito
end;

procedure TfrmAtuEstoqueServidor.ImportarProduto;
begin
  L_MENSAGEM4.Visible := True;
  if Application.MessageBox('Deseja Importar Registros Para o PDV ?','Confirma��o',MB_YESNO+MB_ICONQUESTION ) = IDYES then
  begin
   DM.cdsRecebeProduto.Close;
   DM.cdsRecebeProduto.Open;
   if DM.cdsRecebeProduto.RecordCount > 0 then
     DM.cdsDelProdutoPdv.Execute;
   Panel4.Visible := True;
   DM.cdsRecebeProduto.Close;
   DM.cdsRecebeProduto.Open;

//   DM.cdsEnviaProduto.Open;

   DM.cdsEnviaProduto.DisableControls;
   Gauge3.MaxValue := DM.cdsEnviaProduto.RecordCount;
   Gauge3.Progress := 0;
   DM.cdsEnviaProduto.First;
  while NOT DM.cdsEnviaProduto.Eof do
  begin
      //se n�o Existir Inseri
      DM.cdsRecebeProduto.Insert;
      DM.cdsRecebeProdutoID_PRODUTO.AsInteger         := DM.cdsEnviaProdutoID_PRODUTO.AsInteger;
      DM.cdsRecebeProdutoID_FORNECEDOR.AsInteger      := 1;
      DM.cdsRecebeProdutoCOD_PRODUTO.AsInteger        := DM.cdsEnviaProdutoCOD_PRODUTO.AsInteger;
      DM.cdsRecebeProdutoDESCRICAO.AsString           := DM.cdsEnviaProdutoDESCRICAO.AsString;
      DM.cdsRecebeProdutoUNIDADE.AsString             := DM.cdsEnviaProdutoUNIDADE.AsString;
      DM.cdsRecebeProdutoTAMANHO.AsString             := DM.cdsEnviaProdutoTAMANHO.AsString;
      DM.cdsRecebeProdutoVL_UNIT.AsFloat              := DM.cdsEnviaProdutoVL_UNIT.AsFloat;
      DM.cdsRecebeProdutoVL_VENDA.AsFloat             := DM.cdsEnviaProdutoVL_VENDA.AsFloat;
      DM.cdsRecebeProdutoVL_VENDA_ATAC.AsFloat        := DM.cdsEnviaProdutoVL_VENDA_ATAC.AsFloat;
      DM.cdsRecebeProdutoVL_VENDA_PRAZO1.AsFloat      := DM.cdsEnviaProdutoVL_VENDA_PRAZO1.AsFloat;
      DM.cdsRecebeProdutoVL_VENDA_PRAZO2.AsFloat      := DM.cdsEnviaProdutoVL_VENDA_PRAZO2.AsFloat;
      DM.cdsRecebeProdutoVL_VENDA_PRAZO3.AsFloat      := DM.cdsEnviaProdutoVL_VENDA_PRAZO3.AsFloat;
      DM.cdsRecebeProdutoCOD_BARRA.AsString           := DM.cdsEnviaProdutoCOD_BARRA.AsString;
      DM.cdsRecebeProdutoNCM_PRODUTO.AsString         := DM.cdsEnviaProdutoNCM_PRODUTO.AsString;
      if DM.cdsRecebeProduto.ApplyUpdates(0) <> 0 then
      begin
        ShowMessage('Erro Ao Importar o Produto = '+DM.cdsEnviaProdutoDESCRICAO.AsString+' '+DM.cdsEnviaProdutoCOD_PRODUTO.AsString);
      end
      else
      begin
        DM.cdsRecebeProduto.ApplyUpdates(0);
        DM.cdsEnviaProduto.Next;
        Gauge3.Progress := Gauge3.Progress +1 ;
        L_MENSAGEM4.Refresh;
      end;
  end;
    DM.cdsEnviaProduto.EnableControls;
    ContaRegistros;
    frmAutProdDJPDV.ShowModal;
    Application.MessageBox('Produtos Importados Com Sucesso!!!','Aten��o!!!!',MB_OK+MB_ICONINFORMATION);
    Panel4.Visible := False;
    L_MENSAGEM4.Visible := False;
    PageControl1.ActivePage := MovimentoProduto;
  end
  else
  begin
    L_MENSAGEM4.Visible := False;
  end;
end;

procedure TfrmAtuEstoqueServidor.BitBtn2Click(Sender: TObject);
begin
  ImportarProduto;
end;

procedure TfrmAtuEstoqueServidor.BitBtn4Click(Sender: TObject);
begin
  DM.cdsEnviaProduto.Close;
  DM.cdsRecebeProduto.Close;
  Close;
end;

procedure TfrmAtuEstoqueServidor.Button3Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet3;
  ContaRegistros;
end;

procedure TfrmAtuEstoqueServidor.PageControl1Change(Sender: TObject);
var F:Tform;
MSG: Tlabel;
Borda: TShape;
begin
  F:=  TForm.Create(Application);
  F.BorderStyle:= bsNone;
  F.Position:= poDesktopCenter;
  F.Width:= 170;
  F.Height:= 50; //at� aqui criamos o form

  Borda:= TShape.Create(Application);
  Borda.Parent:= F;
  Borda.Align:= alClient; // uma borda envolta do form

  MSG:=  TLabel.Create(Application);
  MSG.Parent:=F;
  MSG.Transparent:= true;
  MSG.AutoSize:= false;
  MSG.Width:= 160;
  MSG.Font.Size := 12;
  Msg.Caption:='Aguarde....';
  MSG.Alignment:= taCenter;//label com a mensagem "Aguarde"

  F.Show;
  F.Update;
    if PageControl1.ActivePage = TabSheet3 then
    begin
      DM.cdsRecebeProduto.Close;
      DM.cdsRecebeProduto.Open;
//      DM.cdsEnviaProduto.Close;
//      DM.cdsEnviaProduto.Open;
      TabSheet3Enter(Self);
      ContaRegistros;
    end;
    if PageControl1.ActivePage = TabSheet1 then
    begin
      BitBtn3Click(Self);
      BitBtn5Click(Self);
      BitBtn6Click(Self);
    end;
  F.Free; //
end;

procedure TfrmAtuEstoqueServidor.PageControl1Enter(Sender: TObject);
begin
  if PageControl1.ActivePage = TabSheet3 then
  begin
//    DM.cdsEnviaProduto.Close;
//    DM.cdsEnviaProduto.Open;
    TabSheet3Enter(Self);

    DM.cdsRecebeProduto.Close;
    DM.cdsRecebeProduto.Open;
    DBGrid5.SetFocus;
  end;

end;

procedure TfrmAtuEstoqueServidor.PageControl1MouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  if PageControl1.ActivePage = TabSheet3 then
  begin
//    DM.cdsEnviaProduto.Close;
//    DM.cdsEnviaProduto.Open;
//    TabSheet3Enter(Self);
    DM.cdsRecebeProduto.Close;
    DM.cdsRecebeProduto.Open;
    DBGrid5.SetFocus;
  end;

end;

procedure TfrmAtuEstoqueServidor.ProcRecebeItemVenda;
begin
  Panel5.Visible := True;
  Gauge4.Visible := True;
  cdsItemVendaPdvLocal.DisableControls;
  Gauge4.MaxValue := cdsItemVendaPdvLocal.RecordCount;
  Gauge4.Progress := 0;
  L_MENSAGEM15.Caption := 'Enviando Iten(s) da(s) Venda(s).';
  L_MENSAGEM15.Refresh;
  cdsItemVendaPdvLocal.First;
  while not cdsItemVendaPdvLocal.Eof do
  begin
      try
    cdsRecebeItemVendaPdv.Params[0].AsInteger := cdsItemVendaPdvLocalID_ITEM_PDV.AsInteger;
    cdsRecebeItemVendaPdv.Params[1].AsInteger := cdsItemVendaPdvLocalNR_ORCAMENTO.AsInteger;
    cdsRecebeItemVendaPdv.Params[2].AsInteger := cdsItemVendaPdvLocalID_PRODUTO.AsInteger;
    cdsRecebeItemVendaPdv.Params[3].AsInteger := cdsItemVendaPdvLocalID_LOJA.AsInteger;
    cdsRecebeItemVendaPdv.Params[4].AsInteger := cdsItemVendaPdvLocalQUANT.AsInteger;
    cdsRecebeItemVendaPdv.Params[5].AsFloat   := cdsItemVendaPdvLocalVL_UNIT.AsFloat;
    cdsRecebeItemVendaPdv.Params[6].AsFloat   := cdsItemVendaPdvLocalTOTAL.AsFloat;
    cdsRecebeItemVendaPdv.Params[7].AsFloat   := cdsItemVendaPdvLocalSUM.AsFloat;
    cdsRecebeItemVendaPdv.Params[8].AsFloat   := cdsItemVendaPdvLocalPERC_DES.AsFloat;
    cdsRecebeItemVendaPdv.Params[9].AsString  := 'S';
    cdsRecebeItemVendaPdv.Params[10].AsString  := cdsItemVendaPdvLocalSTATUS.AsString;
    cdsRecebeItemVendaPdv.Execute;

    cdsItemVendaPdvLocal.Next;
  except
   ShowMessage('Erro na Linhas '+cdsItemVendaPdvLocalNR_ORCAMENTO.AsString+' '+cdsItemVendaPdvLocalID_ITEM_PDV.AsString);
   Abort;

  end;
    if Gauge4.Progress > 5 then
    begin
      L_MENSAGEM15.Caption := 'Aguarde....';
    end;
    if Gauge4.Progress > 92 then
    begin
      L_MENSAGEM15.Caption := 'Aguarde.... Conclu�ndo....';
    end;

    L_MENSAGEM15.Refresh;
    Label6.Refresh;
    Gauge4.Progress := Gauge4.Progress +1 ;
  end;
    cdsItemVendaPdvLocal.EnableControls;
end;

procedure TfrmAtuEstoqueServidor.SB_ATU_ESTOQUE_PRODUTOClick(Sender: TObject);
begin
     //grava estoque por produto
      DM.cdsEstoqueProduto.Open;
      DM.cdsInsertSaidaEstoqueProduto.Params[0].AsInteger := StrToInt(frmpdv.recInformacoes.lojaCredenciada);
      DM.cdsInsertSaidaEstoqueProduto.Params[1].AsDate    := StrToDate(MaskEdit1.Text) ;
      DM.cdsInsertSaidaEstoqueProduto.Params[2].AsString  := 'S';
      DM.cdsInsertSaidaEstoqueProduto.Execute;
      DM.cdsEstoqueProduto.ApplyUpdates(0);
      DM.cdsEstoqueProduto.Refresh;
      cdsEstoqueProduto.Close;
      cdsEstoqueProduto.Params[0].AsDate := StrToDate(MaskEdit1.Text);
      cdsEstoqueProduto.Params[1].AsDate := StrToDate(MaskEdit2.Text);
      cdsEstoqueProduto.Params[2].AsInteger := StrToInt(frmpdv.recInformacoes.lojaCredenciada);
      cdsEstoqueProduto.Open;
end;

procedure TfrmAtuEstoqueServidor.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmAtuEstoqueServidor.TabSheet1Enter(Sender: TObject);
begin
  Button1Click(Self);
  Button2Click(Self);
end;

procedure TfrmAtuEstoqueServidor.TabSheet2Enter(Sender: TObject);
begin
  BitBtn6Click(Self);
end;

procedure TfrmAtuEstoqueServidor.TabSheet3Enter(Sender: TObject);
Var
 sSql : string;

begin
  sSql := ' SELECT P.ID_PRODUTO, P.ID_FORNECEDOR, P.COD_PRODUTO, P.DESCRICAO, P.UNIDADE,'+
          ' P.TAMANHO, P.VL_UNIT, P.VL_VENDA, P.COD_BARRA, P.NCM_PRODUTO, P.PDV, P.VL_VENDA_ATAC,'+
          ' P.VL_VENDA_PRAZO1, P.VL_VENDA_PRAZO2, P.VL_VENDA_PRAZO3 FROM TB_PRODUTO P ';
//          ' WHERE P.PDV=''S''';



  if LOJA = 'S' then
  begin
    DM.cdsEnviaProduto.Close;
    DM.cdsEnviaProduto.CommandText := sSql+' WHERE P.ID_LOJAS = '+QuotedStr(frmpdv.recInformacoes.lojaCredenciada)+' OR P.ID_LOJAS IS NULL ';
    DM.cdsEnviaProduto.Open;

    DM.cdsRecebeProduto.Close;
    DM.cdsRecebeProduto.Open;
    DBGrid5.SetFocus;
  end
  else
  begin
    DM.cdsEnviaProduto.Close;
    DM.cdsEnviaProduto.CommandText := sSql;
    DM.cdsEnviaProduto.Open;

    DM.cdsRecebeProduto.Close;
    DM.cdsRecebeProduto.Open;
    DBGrid5.SetFocus;
  end;

end;

procedure TfrmAtuEstoqueServidor.Aguarde;
var F:Tform;
MSG: Tlabel;
Borda: TShape;
begin
  F:=  TForm.Create(Application);
  F.BorderStyle:= bsNone;
  F.Position:= poDesktopCenter;
  F.Width:= 170;
  F.Height:= 50; //at� aqui criamos o form

  Borda:= TShape.Create(Application);
  Borda.Parent:= F;
  Borda.Align:= alClient; // uma borda envolta do form

  MSG:=  TLabel.Create(Application);
  MSG.Parent:=F;
  MSG.Transparent:= true;
  MSG.AutoSize:= false;
  MSG.Width:= 160;
  MSG.Font.Size := 12;
  Msg.Caption:='Aguarde....';
  MSG.Alignment:= taCenter;//label com a mensagem "Aguarde"

  F.Show;
  F.Update;

    if (not DM.ConexaoServidor.Connected) then
    begin
      try
         IniControle := TIniFile.Create(ExtractFilePath(Application.ExeName)+'PDV_SERVIDOR.INI');
        if Trim(IniControle.ReadString('SERVIDOR', 'DATABASE', '')) <> '' then
        begin
          DM.ConexaoServidor.Params.Clear;
          DM.ConexaoServidor.Params.Values['DATABASE'] := Inicontrole.ReadString('SERVIDOR','DATABASE','');
          DM.ConexaoServidor.Params.Values['User_Name'] := Inicontrole.ReadString('SERVIDOR','User_Name','');
          DM.ConexaoServidor.Params.Values['PASSWORD'] := Inicontrole.ReadString('SERVIDOR','PASSWORD','masterkey');
          DM.ConexaoServidor.Params.Values['SQLDialect'] := Trim(Inicontrole.ReadString('SERVIDOR','SQLDialect','3'));
          DM.ConexaoServidor.Params.Values['LOJA'] := Trim(Inicontrole.ReadString('SERVIDOR','LOJA',''));
          DM.ConexaoServidor.connected:= true;
          LOJA := Inicontrole.ReadString('SERVIDOR','LOJA','');
          Inicontrole.Free;
          Application.MessageBox('Servidor Conectado Com Sucesso.','Aten��o.',MB_OK+MB_ICONWARNING);
          L_CONEXAO_SERVIDOR.Caption := 'Servidor Conectado';
          L_CONEXAO_SERVIDOR.Font.Color := clBlue;
          L_CONEXAO_SERVIDOR.Font.Style :=[fsBold];
          ConexaoAtiva := 'Sim';
          if PageControl1.ActivePage = MovimentoProduto then
          begin
            SB_ATU_ESTOQUE_PRODUTOClick(Self);
            Button1Click(Self);
            Button2Click(Self);
            BitBtn3Click(Self);
            BitBtn6Click(Self);

          end;
          if PageControl1.ActivePage = TabSheet1 then
          begin
            SB_ATU_ESTOQUE_PRODUTOClick(Self);
            BitBtn5Click(Self);
            BitBtn3Click(Self);
            Button2Click(Self);
            BitBtn6Click(Self);
          end;
          if PageControl1.ActivePage = TabSheet3 then
          begin
            SB_ATU_ESTOQUE_PRODUTOClick(Self);
            Button3Click(Self);
            BitBtn5Click(Self);
            BitBtn2Click(Self);
            Button2Click(Self);
            BitBtn6Click(Self);

          end;
        end;
      except
        Application.MessageBox( 'N�o Foi Possiv�l fazer a Conex�o Com o Servidor.' + #13 +
                                'verifique sua Conex�o com a Internet, ' + #13 +
                                'Desconecte e Conecte a VPN, ' + #13 +
                                'Se o Problema persistir Entre em contato com suporte para esclarecer qualquer d�vida.'+ #13 +
                                'Fone(77) 98847-3778','Error Interno',mb_ok + mb_IconError );
        //Application.Terminate;
        L_CONEXAO_SERVIDOR.Caption := 'Servidor Desconectado';
        frmAtuEstoqueServidor.Close;
      end;
    end
    else
    begin
     // Application.MessageBox('Conex�o Com o Servidor J� Est� Ativa.','Aten��o!!!',MB_OK + MB_ICONWARNING);

      L_CONEXAO_SERVIDOR.Caption := 'Servidor Conectado';
      L_CONEXAO_SERVIDOR.Font.Color := clBlue;
      L_CONEXAO_SERVIDOR.Font.Style :=[fsBold];
      ConexaoAtiva := 'Sim';

      SB_ATU_ESTOQUE_PRODUTOClick(Self);
      PageControl1.ActivePage := MovimentoProduto;
      DBGrid3.SetFocus;
    end;
  F.Free; //
end;

end.