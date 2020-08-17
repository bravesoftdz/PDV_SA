unit uPdv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Grids, DBGrids, Mask, DBCtrls, FMTBcd,
  DB, DBClient, Provider, SqlExpr,midaslib, Buttons, Menus, RDprint,Printers,WinSpool,
  ComCtrls,Midas;

type
  TfrmPdv = class(TForm)
    Image1: TImage;
    P_SISTEMA: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    P_CLIENTE: TPanel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    P_DATA_HORA: TPanel;
    L_DATA_HORA: TLabel;
    Timer1: TTimer;
    Label5: TLabel;
    P_ITEM: TPanel;
    DBGrid1: TDBGrid;
    P_TOTAL_VENDA: TPanel;
    Label6: TLabel;
    L_TOTAL_VENDA: TLabel;
    P_ORCAMENTO: TPanel;
    Label7: TLabel;
    DBText1: TDBText;
    Panel1: TPanel;
    L_NOVA_VENDA: TLabel;
    Label9: TLabel;
    L_CANCELAR_VENDA: TLabel;
    Label11: TLabel;
    L_ENCERRAR_VENDA: TLabel;
    Label13: TLabel;
    L_EXCLUIR_ITEM: TLabel;
    Label15: TLabel;
    L_INCLUIR_ITEM: TLabel;
    Label17: TLabel;
    L_PAGAMENTO: TLabel;
    Label19: TLabel;
    L_TROCAR_USUARIO: TLabel;
    Label21: TLabel;
    P_SITUACAO_VENDA: TPanel;
    L_SITUACAO_VENDA: TLabel;
    Label22: TLabel;
    P_CODIGO: TPanel;
    Label23: TLabel;
    P_QUANT: TPanel;
    Label24: TLabel;
    DBEdit3: TDBEdit;
    P_UNID: TPanel;
    Label25: TLabel;
    DBEdit4: TDBEdit;
    P_VL_UNI: TPanel;
    Label26: TLabel;
    DBEdit5: TDBEdit;
    P_VL_TOTAL_ITEM: TPanel;
    Label27: TLabel;
    DBEdit6: TDBEdit;
    Label28: TLabel;
    DBEdit7: TDBEdit;
    P_DESC_ITEM: TPanel;
    Label29: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    P_DADOS_SISTEMA: TPanel;
    Label30: TLabel;
    DBEdit10: TDBEdit;
    Label31: TLabel;
    L_USUARIO: TLabel;
    Label32: TLabel;
    L_LOJA: TLabel;
    Label33: TLabel;
    L_CAIXA: TLabel;
    qDinamica: TSQLQuery;
    dspDinamica: TDataSetProvider;
    cdsDinamica: TClientDataSet;
    dsDinamica: TDataSource;
    L_OPCOES: TLabel;
    Label12: TLabel;
    L_REL_VENDAS: TLabel;
    P_DATA_VENDA: TPanel;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Memo1: TMemo;
    spCancelaItem: TSQLStoredProc;
    dspCancelaItem: TDataSetProvider;
    cdsCancelaItem: TClientDataSet;
    L_NOME_LOJA: TLabel;
    L_ID_GRUPO: TLabel;
    DBEdit2: TDBEdit;
    Button1: TButton;
    RDprint1: TRDprint;
    Memo2: TMemo;
    ComboBox1: TComboBox;
    L_REIMPRESSAO: TLabel;
    qReimpressao: TSQLQuery;
    dspReimpressao: TDataSetProvider;
    cdsReimpressao: TClientDataSet;
    dsReimpressao: TDataSource;
    qReimpressaoID_ITEM_PDV: TIntegerField;
    qReimpressaoNR_ORCAMENTO: TIntegerField;
    qReimpressaoID_PRODUTO: TIntegerField;
    qReimpressaoQUANT: TIntegerField;
    qReimpressaoVL_UNIT: TFMTBCDField;
    qReimpressaoVL_TOTAL: TFMTBCDField;
    qReimpressaoDESC_ITEM: TFMTBCDField;
    qReimpressaoPERC_DES: TFMTBCDField;
    qReimpressaoTRANSF: TStringField;
    qReimpressaoID_LOJA: TIntegerField;
    qReimpressaoSTATUS: TStringField;
    qReimpressaoCOD_BARRA: TStringField;
    qReimpressaoDESCRICAO: TStringField;
    qReimpressaoUNIDADE: TStringField;
    cdsReimpressaoID_ITEM_PDV: TIntegerField;
    cdsReimpressaoNR_ORCAMENTO: TIntegerField;
    cdsReimpressaoID_PRODUTO: TIntegerField;
    cdsReimpressaoQUANT: TIntegerField;
    cdsReimpressaoVL_UNIT: TFMTBCDField;
    cdsReimpressaoVL_TOTAL: TFMTBCDField;
    cdsReimpressaoDESC_ITEM: TFMTBCDField;
    cdsReimpressaoPERC_DES: TFMTBCDField;
    cdsReimpressaoTRANSF: TStringField;
    cdsReimpressaoID_LOJA: TIntegerField;
    cdsReimpressaoSTATUS: TStringField;
    cdsReimpressaoCOD_BARRA: TStringField;
    cdsReimpressaoDESCRICAO: TStringField;
    cdsReimpressaoUNIDADE: TStringField;
    Label8: TLabel;
    qVendedor: TSQLQuery;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    dsVendedor: TDataSource;
    P_VENDEDOR_PDV: TPanel;
    Label38: TLabel;
    DBEdit12: TDBEdit;
    qReimpressaoDT_ORCAMENTO: TDateField;
    cdsReimpressaoDT_ORCAMENTO: TDateField;
    P_VENDEDOR: TPanel;
    Label37: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit13: TDBEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    P_RECEBIMENTO: TPanel;
    Label14: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    P_VL_VENDA: TPanel;
    P_DBTEXT2: TPanel;
    DBText2: TDBText;
    P_VL_DESCONTO: TPanel;
    P_DBTEXT3: TPanel;
    DBText3: TDBText;
    P_VL_LIQUIDO: TPanel;
    P_DBTEXT4: TPanel;
    DBText4: TDBText;
    Panel2: TPanel;
    P_VALOR_PAGO: TPanel;
    edtValorPago: TEdit;
    P_TROCO: TPanel;
    edtTroco: TEdit;
    BB_CONFIRMA: TBitBtn;
    BB_CANCELAR: TBitBtn;
    qResumoVendas: TSQLQuery;
    dspResumoVendas: TDataSetProvider;
    cdsResumoVendas: TClientDataSet;
    dsResumoVendas: TDataSource;
    P_RESUMO: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet2: TTabSheet;
    BitBtn1: TBitBtn;
    qVendasVendedor: TSQLQuery;
    dspVendasVendedor: TDataSetProvider;
    cdsVendasVendedor: TClientDataSet;
    dsVendasVendedor: TDataSource;
    qVendasVendedorCODIGO: TIntegerField;
    qVendasVendedorVENDEDOR: TStringField;
    qVendasVendedorTOTAL: TFMTBCDField;
    cdsVendasVendedorCODIGO: TIntegerField;
    cdsVendasVendedorVENDEDOR: TStringField;
    cdsVendasVendedorTOTAL: TFMTBCDField;
    DBGrid3: TDBGrid;
    BitBtn4: TBitBtn;
    Label20: TLabel;
    L_TOTAL_GERAL: TLabel;
    L_RESUMO_CAIXA: TLabel;
    qVendedorID_VENDEDOR: TIntegerField;
    qVendedorID_LOJA: TIntegerField;
    qVendedorID_GRUPO: TIntegerField;
    qVendedorNOME: TStringField;
    cdsVendedorID_VENDEDOR: TIntegerField;
    cdsVendedorID_LOJA: TIntegerField;
    cdsVendedorID_GRUPO: TIntegerField;
    cdsVendedorNOME: TStringField;
    Image2: TImage;
    TabSheet3: TTabSheet;
    qTroca: TSQLQuery;
    qTrocaID_PDV: TIntegerField;
    qTrocaNR_ORCAMENTO: TIntegerField;
    qTrocaID_LOJA: TIntegerField;
    qTrocaID_GRUPO: TIntegerField;
    qTrocaDT_ORCAMENTO: TDateField;
    qTrocaVL_ORCAMENTO: TFMTBCDField;
    qTrocaVL_DESCONTO: TFMTBCDField;
    qTrocaVL_LIQUIDO: TFMTBCDField;
    qTrocaSTATUS: TStringField;
    qTrocaTRANSF: TStringField;
    qTrocaNOME_CLIENTE: TStringField;
    qTrocaCPF_CLIENTE: TStringField;
    qTrocaID_VENDEDOR: TIntegerField;
    qTrocaCAIXA: TIntegerField;
    qTrocaNOME: TStringField;
    dspTroca: TDataSetProvider;
    cdsTroca: TClientDataSet;
    cdsTrocaID_PDV: TIntegerField;
    cdsTrocaNR_ORCAMENTO: TIntegerField;
    cdsTrocaID_LOJA: TIntegerField;
    cdsTrocaID_GRUPO: TIntegerField;
    cdsTrocaDT_ORCAMENTO: TDateField;
    cdsTrocaVL_ORCAMENTO: TFMTBCDField;
    cdsTrocaVL_DESCONTO: TFMTBCDField;
    cdsTrocaVL_LIQUIDO: TFMTBCDField;
    cdsTrocaSTATUS: TStringField;
    cdsTrocaTRANSF: TStringField;
    cdsTrocaNOME_CLIENTE: TStringField;
    cdsTrocaCPF_CLIENTE: TStringField;
    cdsTrocaID_VENDEDOR: TIntegerField;
    cdsTrocaCAIXA: TIntegerField;
    cdsTrocaNOME: TStringField;
    dsTroca: TDataSource;
    qResumoVendasDT_ORCAMENTO: TDateField;
    qResumoVendasTOTAL: TFMTBCDField;
    qResumoVendasQUANT: TLargeintField;
    cdsResumoVendasDT_ORCAMENTO: TDateField;
    cdsResumoVendasTOTAL: TFMTBCDField;
    cdsResumoVendasQUANT: TLargeintField;
    Label1: TLabel;
    qResumoVendasQT_PECAS: TLargeintField;
    cdsResumoVendasQT_PECAS: TLargeintField;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    BitBtn5: TBitBtn;
    Label36: TLabel;
    Label35: TLabel;
    Label34: TLabel;
    L_TOT_TROCA: TLabel;
    L_QT_LEV: TLabel;
    L_QTDEV: TLabel;
    qEspecie: TSQLQuery;
    dspEspecie: TDataSetProvider;
    cdsEspecie: TClientDataSet;
    dsEspecie: TDataSource;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    BitBtn6: TBitBtn;
    qEspecieDESCRICAO_PAGAMENTO: TStringField;
    qEspecieTOTAL: TFMTBCDField;
    cdsEspecieDESCRICAO_PAGAMENTO: TStringField;
    cdsEspecieTOTAL: TFMTBCDField;
    Label41: TLabel;
    L_TOTAL_GERAL1: TLabel;
    dspTotalPecas: TDataSetProvider;
    cdsTotalPecas: TClientDataSet;
    qTotalPecas: TSQLQuery;
    dsTotalPecas: TDataSource;
    qTotalPecasTOTAL_PECAS: TLargeintField;
    qTotalPecasVL_UNIT: TFMTBCDField;
    cdsTotalPecasTOTAL_PECAS: TLargeintField;
    cdsTotalPecasVL_UNIT: TFMTBCDField;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    BitBtn7: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure L_NOVA_VENDAClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure L_ENCERRAR_VENDAClick(Sender: TObject);
    procedure L_INCLUIR_ITEMClick(Sender: TObject);
    procedure L_CANCELAR_VENDAClick(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1DblClick(Sender: TObject);
    procedure L_EXCLUIR_ITEMClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure L_PAGAMENTOClick(Sender: TObject);
    procedure L_TROCAR_USUARIOClick(Sender: TObject);
    procedure edtValorPagoExit(Sender: TObject);
    procedure BB_CONFIRMAClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure L_REL_VENDASClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure L_OPCOESClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure L_REIMPRESSAOClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure edtValorPagoEnter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
    procedure MakeRounded(Control: TWinControl);
    Procedure InsertItemVenda;
    Procedure SomaTotais;
    Procedure PesquisaProduto;
    Procedure NovoAcesso;
    Procedure ChecaUsuario(nivel :integer);
    Procedure CopyFile( Const sourcefilename, targetfilename: String );
    Procedure GravaRegistro;
    Procedure Imprimir;
    Procedure ImprimirMemoComCanvas(Memo: TMemo);
    Procedure ImprimirMemo(Memo: TMemo);
    Procedure Reimpressao;
    Procedure GravarVenda;
  public
    { Public declarations }
      recInformacoes: record
      login: String;
      id_Usuario:Integer;
      Nivel: Integer;
      lojaCredenciada : String;
      GrupoLoja       : Integer;
      NomeGrupo       : String;
  end;
      sNovo,sNovoAnt,sNome_Novo: String;
      bPesquisa,bSenha: Boolean;
      Procedure ImprimirTermica;

  end;

var
  frmPdv: TfrmPdv;
  SituacaoVenda : String;
  Orcamento : Integer;
  Item : Integer;
  CaminhoImpressora : string;

implementation

uses uDm, U_LIB, UD_PESQUISA, uSenha, uPagamentoPdv;

{$R *.dfm}

{ TfrmPdv }

function HavePrinter: boolean;
var
prt: TPrinter;
begin 
prt := TPrinter.Create;
try
result := prt.Printers.Count > 0;
finally
prt.Free;
end;
end;
function FileCopy(source,dest: String): Boolean;
{copia um arquivo de um lugar para outro. Retornando falso em caso de erro}
var
fSrc,fDst,len: Integer;
size: Longint;
buffer: packed array [0..2047] of Byte;
begin
if source <> dest then
   begin
   fSrc := FileOpen(source,fmOpenRead);
   if fSrc >= 0 then
      begin
      size := FileSeek(fSrc,0,2);
      FileSeek(fSrc,0,0);
      fDst := FileCreate(dest);
      if fDst >= 0 then
         begin
         while size > 0 do
               begin
               len := FileRead(fSrc,buffer,sizeof(buffer));
               FileWrite(fDst,buffer,len);
               size := size - len;
               end;
         FileSetDate(fDst,FileGetDate(fSrc));
         FileClose(fDst);
         FileSetAttr(dest,FileGetAttr(source));
         Result := True;
         end
      else
         begin
         Result := False;
         end;
      FileClose(fSrc);
      end;
   end;
end;

procedure TfrmPdv.MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
with Control do
begin
  R := ClientRect;
  rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 40, 40);
  Perform(EM_GETRECT, 0, lParam(@r));
  InflateRect(r, - 30, - 30);
  Perform(EM_SETRECTNP, 0, lParam(@r));
  SetWindowRgn(Handle, rgn, True);
  Invalidate;
end;
end;

procedure TfrmPdv.FormCreate(Sender: TObject);
begin
  // TMemo:
//  Memo1.BorderStyle := bsNone;
//  MakeRounded(Memo1);
  // TEdit:
//  Edit2.BorderStyle := bsNone;
//  MakeRounded(Edit2);
  // TPanel:

  MakeRounded(P_SISTEMA);
  MakeRounded(P_CLIENTE);
  MakeRounded(P_DATA_HORA);
  MakeRounded(P_ITEM);
  MakeRounded(P_TOTAL_VENDA);
  MakeRounded(P_ORCAMENTO);
  MakeRounded(P_SITUACAO_VENDA);
  MakeRounded(P_CODIGO);
  MakeRounded(P_QUANT);
  MakeRounded(P_UNID);
  MakeRounded(P_VL_UNI);
  MakeRounded(P_VL_TOTAL_ITEM);
  MakeRounded(P_DESC_ITEM);
  MakeRounded(P_DADOS_SISTEMA);
  MakeRounded(P_DATA_VENDA);
  MakeRounded(P_RECEBIMENTO);
  MakeRounded(P_VL_VENDA);
  MakeRounded(P_VL_DESCONTO);
  MakeRounded(P_VL_LIQUIDO);
  MakeRounded(P_DBTEXT2);
  MakeRounded(P_DBTEXT3);
  MakeRounded(P_DBTEXT4);
  MakeRounded(P_VALOR_PAGO);
  MakeRounded(P_TROCO);
  MakeRounded(Panel2);
  MakeRounded(P_VENDEDOR_PDV);
  MakeRounded(P_VENDEDOR);

  // TStaticText:
//  MakeRounded(StaticText1);
  // TForm
//  Form1.BorderStyle := bsNone;
//  MakeRounded(Form1);
  //DBGrid
//  MakeRounded(DBGrid1);
end;

procedure TfrmPdv.Timer1Timer(Sender: TObject);
begin
  L_DATA_HORA.Caption := DateToStr(StrToDate(FormatDateTime('DD/MM/YYYY',Date)))+' '+TimeToStr(Time);
end;

procedure TfrmPdv.FormShow(Sender: TObject);
begin
  NovoAcesso;
  DM.cdsPdvLocal.Close;
  DM.cdsPdvLocal.Params[0].AsInteger := StrToInt(L_CAIXA.Caption);
  DM.cdsPdvLocal.Open;
  DM.cdsItemPdvLocal.Close;
  DM.cdsItemPdvLocal.Params[0].AsInteger := DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
  DM.cdsItemPdvLocal.Params[1].AsInteger := DM.cdsPdvLocalID_LOJA.AsInteger;
  DM.cdsItemPdvLocal.Open;
  L_TOTAL_VENDA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvLocalVL_LIQUIDO.AsFloat);

  if DM.cdsItemPdvLocal.RecordCount > 0 then
    L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO'
  else
    L_SITUACAO_VENDA.Caption := 'Caixa Livre';
    frmPdv.SetFocus;
end;

procedure TfrmPdv.L_NOVA_VENDAClick(Sender: TObject);
begin
  if L_SITUACAO_VENDA.Caption = 'LAN�ANDO VENDA(S)' then
  begin
    Application.MessageBox('Nova Venda n�o Permitida. Finalize a Venda em Andamento'+#13+
                           '           Para Come�ar uma nova venda.','Aten��o',MB_OK+MB_ICONWARNING);
    Exit;
  end;

  if L_SITUACAO_VENDA.Caption = 'ESPERANDO PAGAMENTO' then
  begin
    Application.MessageBox('Nova Venda n�o Permitida. Receba a Venda em Andamento'+#13+
                           '           Para Come�ar uma nova venda.','Aten��o',MB_OK+MB_ICONWARNING);
    Exit;
  end;
  L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';
  DM.cdsPdvLocal.Close;
  DM.cdsPdvLocal.Params[0].AsInteger := StrToInt(L_CAIXA.Caption);
  DM.cdsPdvLocal.Open;

  DM.cdsPdvLocal.Insert;
  cdsVendedor.Close;
  cdsVendedor.Params[0].AsInteger := StrToInt(L_LOJA.Caption);
  cdsVendedor.Open;

  if Pesquisa(cdsVendedor,['NOME','ID_VENDEDOR'],
                                 ['',''],[30,2],'','0','','Vendedor','Vendedor','Vendedor') then
  begin
    DM.cdsPdvLocalID_VENDEDOR.AsInteger  := cdsVendedorID_VENDEDOR.AsInteger;
    DM.cdsPdvLocalNOME.Value             := cdsVendedorNOME.Value;
  end;
  GravarVenda;
  InsertItemVenda;
  Item := 0;
end;

procedure TfrmPdv.InsertItemVenda;
begin
  DM.cdsItemPdvLocal.Open;
  DM.cdsItemPdvLocal.Append;
 { cdsDinamica.Close;
  cdsDinamica.IndexFieldNames :='';
  cdsDinamica.CommandText := 'SELECT MAX(ID_ITEM_PDV) FROM TB_ITEM_PDV';
  cdsDinamica.Open;
  DM.cdsItemPdvLocalID_ITEM_PDV.AsInteger := cdsDinamica.Fields[0].AsInteger+1;}
  DM.cdsItemPdvLocalNR_ORCAMENTO.AsInteger       := DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
  DM.cdsItemPdvLocalTRANSF.Value :='N';
  if DM.cdsItemPdvLocalDESC_ITEM.IsNull then
     DM.cdsItemPdvLocalDESC_ITEM.AsFloat := 0;
  if DM.cdsItemPdvLocalPERC_DES.IsNull then
     DM.cdsItemPdvLocalPERC_DES.AsFloat := 0;
  DBEdit2.SetFocus;
end;

procedure TfrmPdv.DBEdit2Exit(Sender: TObject);
begin
  if (DBEdit1.Text <>'')and (DBEdit2.Text = '') then
  begin
    DBEdit1.SetFocus;
    Exit;
  end;
  if DBEdit2.Text = '' then
  begin
    ShowMessage('Favor Informar o C�digo do Produto');
    DBEdit2.SetFocus;
    Exit;
  end;
  if SituacaoVenda = 'Encerrada' then
  begin
    Exit;
  end
  else
  begin
    DM.cdsProduto.Open;
    if DM.cdsProduto.Locate('COD_BARRA',DM.cdsItemPdvLocalCOD_BARRA.AsString,[]) then
    begin
      DM.cdsItemPdvLocalCOD_BARRA.AsString          := DM.cdsProdutoCOD_BARRA.AsString;
      DM.cdsItemPdvLocalID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
      DM.cdsItemPdvLocalDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
      DM.cdsItemPdvLocalUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
      DM.cdsItemPdvLocalVL_UNIT.AsFloat             := DM.cdsProdutoVL_UNIT.AsFloat;
      DM.cdsItemPdvLocalNR_ORCAMENTO.AsInteger      := DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
      DM.cdsItemPdvLocalSTATUS.Value                := 'V';
      DM.cdsItemPdvLocalID_LOJA.AsInteger           := StrToInt(L_LOJA.Caption);
      DM.cdsItemPdvLocalQUANT.AsFloat               := 1;

      DBEdit3.SetFocus;//desabilitar para n�o informar quantidade;

      if DM.cdsItemPdvLocalVL_UNIT.AsFloat = 0 then
      begin
        ShowMessage('Produto com Pre�o de Venda Zerado.');
        DBEdit2.SetFocus;
      end
      else
      begin
        //GravaRegistro; //habilitar para n�o informar quantidade;
      end;
    end
    else
    begin
      ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                  '                                     '+#13+
                  '   C�digo N�o Encontrado             '+#13+
                  '                                     ');
      DBEdit2.SetFocus;
    end;
  end;
end;

procedure TfrmPdv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmPdv.SomaTotais;
begin
  cdsDinamica.Close;
  cdsDinamica.IndexFieldNames :='';
  cdsDinamica.CommandText := ' SELECT SUM(IP.VL_UNIT * IP.QUANT)'+
                                ' FROM TB_ITEM_PDV IP '+
                                ' WHERE IP.NR_ORCAMENTO = '+DM.cdsPdvLocalNR_ORCAMENTO.AsString;
                                //COLOCAR LOJA TAMBEM
  cdsDinamica.Open;

  DM.cdsPdvLocal.Edit;
  DM.cdsPdvLocalVL_LIQUIDO.AsFloat := cdsDinamica.Fields[0].AsFloat;
  L_TOTAL_VENDA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvLocalVL_LIQUIDO.AsFloat);
  DM.cdsPdvLocal.ApplyUpdates(0);
end;

procedure TfrmPdv.L_ENCERRAR_VENDAClick(Sender: TObject);
begin
  if not (DM.cdsItemPdvLocal.State in dsEditmodes) then
  begin
    ShowMessage('N�o Exite Venda Para Encerra. Favor Verifique');
    Exit;
  end;
    SituacaoVenda := 'Encerrada';
    L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO';
    DM.cdsItemPdvLocal.Cancel;
    DM.cdsItemPdvLocal.Refresh;
    DBEdit1.SetFocus;
    Exit;
    SituacaoVenda := '';
end;

procedure TfrmPdv.L_INCLUIR_ITEMClick(Sender: TObject);
begin
  if DM.cdsItemPdvLocal.State in dsEditModes then
  begin
    ShowMessage('Venda j� se Encontra em Modo de Inser��o.');
  end
  else
  begin
    if DM.cdsPdvLocal.RecordCount = 0 then
    begin
      ShowMessage('N�o Exite Venda Aberta. Para Incluir Itens');
    end
    else
    begin
      if DM.cdsPdvLocal.RecordCount > 0 then
      begin
        L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';
        SituacaoVenda := 'LAN�ANDO VENDA(S)';
        InsertItemVenda;
      end
    end;
  end;
end;

procedure TfrmPdv.L_CANCELAR_VENDAClick(Sender: TObject);
begin
  if DM.cdsPdvLocal.RecordCount = 0 then
  begin
    ShowMessage('N�o Exite Venda para Cancelar');
    Exit;
  end;
  if DM.cdsItemPdvLocal.State in dsEditModes then
  begin
    ShowMessage('Favor Encerre a Venda para Fazer o Cancelamento.');
  end
  else
  begin
    if Application.MessageBox('Deseja Realmente Cancelar esta Venda?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
    begin
      cdsCancelaItem.Params[0].AsInteger := DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
      cdsCancelaItem.Params[1].AsInteger := DM.cdsPdvLocalID_LOJA.AsInteger;
      cdsCancelaItem.Execute;
      if DM.cdsPdvLocal.ApplyUpdates(0) <> 0 then
      begin
        ShowMessage('O Sistema N�o Conseguiu Cancelar Esta Venda. Tente Novamente ou Contate o Suporte.');
      end
      else
      begin
        DM.cdsPdvLocal.ApplyUpdates(0);
        ShowMessage('Venda Cancelada com Sucesso.');
        DM.cdsPdvLocal.Refresh;
        DM.cdsPdvLocal.Close;
        DM.cdsItemPdvLocal.Close;
        L_SITUACAO_VENDA.Caption := 'Caixa Livre';
        L_TOTAL_VENDA.Caption:='R$ 0,00';
        DBEdit1.SetFocus;
        SituacaoVenda :='';
        Exit;
      end;
    end
    else
    begin
      ShowMessage('Venda N�o Foi Cancelada.');
      DBEdit1.SetFocus;
      Exit;
    end;
  end;
end;

procedure TfrmPdv.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_f1 then
  begin
    PesquisaProduto;
  end;
  if Key = Vk_f2 then
  begin
    L_NOVA_VENDAClick(Self);
  end;
  if Key = Vk_f3 then
  begin
    L_CANCELAR_VENDAClick(Self);
  end;
  if Key = Vk_f4 then
  begin
    L_ENCERRAR_VENDAClick(Self);
  end;
  if Key = Vk_f5 then
  begin
    L_EXCLUIR_ITEMClick(Self);
  end;
  if Key = Vk_f6 then
  begin
    L_INCLUIR_ITEMClick(Self);
  end;
  if Key = Vk_f7 then
  begin
    L_PAGAMENTOClick(Self);
  end;
  if Key = Vk_f8 then
  begin
    L_TROCAR_USUARIOClick(Self);
  end;
  if Key = Vk_f9 then
  begin
    L_OPCOESClick(Self);
  end;
  if Key = Vk_f10 then
  begin
    L_REL_VENDASClick(Self);
  end;
  if Key = Vk_f11 then
  begin
    L_REIMPRESSAOClick(Self);
  end;

end;

procedure TfrmPdv.PesquisaProduto;
begin
  DM.cdsProduto.Open;
  if Pesquisa(DM.cdsProduto,['DESCRICAO','COD_BARRA','VL_UNIT'],['Nome do Produto','C�d.Barra','Valor'],
    [30,13,8],'','','','','Produto','Produto') then
  begin
    DM.cdsItemPdvLocalCOD_BARRA.AsString          := DM.cdsProdutoCOD_BARRA.AsString;
    DM.cdsItemPdvLocalID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
    DM.cdsItemPdvLocalDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
    DM.cdsItemPdvLocalUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
    DM.cdsItemPdvLocalVL_UNIT.AsFloat             := DM.cdsProdutoVL_UNIT.AsFloat;
    DM.cdsItemPdvLocalSTATUS.Value                := 'V';
    DM.cdsItemPdvLocalID_LOJA.AsInteger           := StrToInt(L_LOJA.Caption);
    DBEdit3.SetFocus;
  end;
end;

procedure TfrmPdv.NovoAcesso;
Var
Loja : String;
nomeLoja : String;
grupo    : String;
CAIXA    : String;
begin
  bSenha := False;
  Application.CreateForm(TfrmSenha, frmSenha);
  frmSenha.ShowModal;
  Loja := recInformacoes.lojaCredenciada;
  ChecaUsuario(recInformacoes.Nivel);
  if Loja <> '' then
  begin
    DM.cdsTabelaLoja.Close;
    DM.cdsTabelaLoja.CommandText :='SELECT L.ID_LOJA,L.COD_MUNICIPIO,L.R_SOCIAL,L.FANTASIA,M.NOME_MUNICIPIO,L.ID_GRUPO_LOJA FROM TB_LOJAS L '+
                             'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.COD_MUNICIPIO = L.COD_MUNICIPIO) '+
                             'WHERE L.ID_LOJA = '+Loja;
    DM.cdsTabelaLoja.Open;

    nomeLoja := DM.cdsTabelaLoja.Fields[3].AsString;
    grupo    := DM.cdsTabelaLoja.Fields[5].AsString;
    L_LOJA.Caption := Loja;
    L_NOME_LOJA.Caption:= nomeLoja;
    L_ID_GRUPO.Caption := grupo;
    L_USUARIO.Caption:=recInformacoes.login;
    L_CAIXA.Caption := DM.CAIXA_LOJA;
    CaminhoImpressora := DM.IMPRESSORA;
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames :='';
    DM.cdsDinamica.CommandText :=' SELECT L.ID_GRUPO_LOJA,GL.NOME_GRUPO,L.FANTASIA FROM TB_LOJAS L '+
                                 ' LEFT OUTER JOIN TB_GRUPO_LOJA GL ON (GL.ID_GRUPO_LOJA = L.ID_GRUPO_LOJA) '+
                                 ' WHERE L.ID_LOJA = '+Loja;
    DM.cdsDinamica.Open;
    recInformacoes.GrupoLoja := DM.cdsDinamica.Fields[0].AsInteger;
    recInformacoes.NomeGrupo := DM.cdsDinamica.Fields[1].AsString;

//    StatusBar1.Panels.Items[1].Text := DM.cdsDinamica.Fields[2].AsString;;
//    frmPrincipal.Caption := 'SFC - Sistema de Faturamento Comercial';
//    StatusBar1.Panels.Items[2].Text := 'Loja Credenciada '+' '+Loja;
//    StatusBar1.Panels.Items[3].Text := 'Usu�rio Logado   '+' '+recInformacoes.login+' ';

  end
  else
  begin
    Application.MessageBox('Usu�rio sem Loja Definida. Favor Definir uma Loja','Aten��o',MB_OK+MB_ICONWARNING);
    Application.Terminate;
  end;
  DM.cdsTabelaLoja.Close;
  DM.cdsTabelaLoja.IndexFieldNames:='';
end;

procedure TfrmPdv.ChecaUsuario(nivel: integer);
begin
 //
end;

procedure TfrmPdv.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  L_TOTAL_VENDA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvLocalVL_LIQUIDO.AsFloat);
end;

procedure TfrmPdv.DBNavigator1DblClick(Sender: TObject);
begin
  L_TOTAL_VENDA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvLocalVL_LIQUIDO.AsFloat);
end;

procedure TfrmPdv.L_EXCLUIR_ITEMClick(Sender: TObject);
begin
  if DM.cdsItemPdvLocal.RecordCount = 0 then
  begin
    ShowMessage('N�o Exite(m) Registro(s) Para Excluir.');
    Exit;
  end;
  if L_SITUACAO_VENDA.Caption = 'LAN�ANDO VENDA(S)' then
  begin
    Application.MessageBox('    Impossiv�l Excluir Iten(s) com a Venda em Andamento'+#13+
                           'Por Favor Encerre a Venda e Selecione o Item que deseja Excluir','Aten��o',MB_OK+MB_ICONWARNING);
    Exit;
  end
  else
  begin
    if Application.MessageBox('Deseja Realmente Excluir Este Item?','Confirma��o',MB_YESNO+MB_ICONQUESTION)= idyes then
    begin
      if DM.cdsItemPdvLocal.ApplyUpdates(0) <> 0 then
      begin
        ShowMessage('O Sistema N�o Conseguiu Cancelar Esta Venda. Tente Novamente ou Contate o Suporte.');
      end
      else
      begin
        DM.cdsItemPdvLocal.Delete;
        DM.cdsItemPdvLocal.ApplyUpdates(0);
        SomaTotais;
       Application.MessageBox('Item Excluido Com Sucesso.','Aten��o',MB_OK);
      end;
    end
    else
    begin
      Application.MessageBox('Exclus�o do Item Cancelada.','Aten��o',MB_OK);
    end;
  end;
end;

procedure TfrmPdv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_f2 then
  begin
    L_NOVA_VENDAClick(Self);
  end;
  if Key = Vk_f3 then
  begin
    L_CANCELAR_VENDAClick(Self);
  end;
  if Key = Vk_f4 then
  begin
    L_ENCERRAR_VENDAClick(Self);
  end;
  if Key = Vk_f5 then
  begin
    L_EXCLUIR_ITEMClick(Self);
  end;
  if Key = Vk_f6 then
  begin
    L_INCLUIR_ITEMClick(Self);
  end;
  if Key = Vk_f7 then
  begin
    L_PAGAMENTOClick(Self);
  end;
  if Key = Vk_f8 then
  begin
    L_TROCAR_USUARIOClick(Self);
  end;
  if Key = Vk_f9 then
  begin
    L_OPCOESClick(Self);
  end;

  if Key = Vk_f10 then
  begin
    L_REL_VENDASClick(Self);
  end;
  if Key = Vk_f11 then
  begin
    L_REIMPRESSAOClick(Self);
  end;

end;

procedure TfrmPdv.L_PAGAMENTOClick(Sender: TObject);
begin
  L_ENCERRAR_VENDAClick(Self);
  if DM.cdsItemPdvLocal.State in dsEditModes then
  begin
    ShowMessage('Encerre a Venda Para Efetuar o Recebimento.');
    if DM.cdsPdvLocal.RecordCount > 0 then
    begin
      L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';
      SituacaoVenda :='';
      DBEdit1.SetFocus;
      Exit;
    end;
  end;
  if DM.cdsPdvLocalVL_LIQUIDO.AsFloat = 0 then
  begin
    ShowMessage('Impossiv�l Receber Esta Venda. O Valor da Venda Esta Zerado.');
    if DM.cdsPdvLocal.RecordCount > 0 then
    begin
      L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';
      SituacaoVenda :='';
      DBEdit1.SetFocus;
      InsertItemVenda;
    end;
  end;
  if DM.cdsPdvLocalVL_LIQUIDO.AsFloat > 0 then
  begin
 ///   P_RECEBIMENTO.Visible := True;
 ///   edtValorPago.SetFocus;
      frmPagamentoPdv.ShowModal;
//    BB_CONFIRMA.SetFocus;
  end;
end;

procedure TfrmPdv.L_TROCAR_USUARIOClick(Sender: TObject);
begin
  if L_SITUACAO_VENDA.Caption <> 'Caixa Livre' then
  begin
    Application.MessageBox('Favor Encerre a Venda Para Trocar de Usu�rio.','Aten��o',MB_OK);
  end
  else
  begin
    NovoAcesso;
  end;
end;

procedure TfrmPdv.edtValorPagoExit(Sender: TObject);
Var
 convertFloat,convertTroco : Double;
begin
  convertFloat :=StrToFloat(StringReplace(edtValorPago.Text,'.','',[rfReplaceAll]));
  edtValorPago.Text := FloatToStr(convertFloat);
  if StrToFloat(edtValorPago.Text) < DM.cdsPdvLocalVL_LIQUIDO.AsFloat then
  begin
    ShowMessage('Valor Pago Menor que o Valor da Compra');
    edtValorPago.SetFocus;
  end
  else
  begin
    edtValorPago.Text :=FormatFloat('###,###0.00',StrToFloat(StringReplace(edtValorPago.Text,'.','',[rfReplaceAll]))); //FormatFloat('###,###0.00',convertFloat);
    convertTroco := StrToFloat(StringReplace(edtValorPago.Text,'.','',[rfReplaceAll]));
    edtTroco.Text := FormatFloat('###,###0.00',convertFloat - DM.cdsPdvLocalVL_LIQUIDO.AsFloat);
  end;
end;

procedure TfrmPdv.BB_CONFIRMAClick(Sender: TObject);
begin
  //  if Application.MessageBox('Deseja Imprimir Venda?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
  //  begin
  //    ImprimirTermica;
  //  end;

    DM.cdsPdvLocal.Edit;
    DM.cdsPdvLocalSTATUS.Value := 'F';
    if DM.cdsPdvLocal.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema N�o Conseguiu Gravar Esta Venda. Tente Novamente ou Contate o Suporte.');
    end
    else
    begin
     //grava estoque Movimentacao Geral
      DM.cdsMovEstoque.Open;
      DM.cdsInsertSaidaEstoque.Params[0].AsInteger := StrToInt(L_LOJA.Caption);
      DM.cdsInsertSaidaEstoque.Params[1].AsDate    := StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
      DM.cdsInsertSaidaEstoque.Params[2].AsDate    := StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
      DM.cdsInsertSaidaEstoque.Params[3].AsString  :='Vendas_L_'+L_LOJA.Caption;
      DM.cdsInsertSaidaEstoque.Execute;

      DM.cdsMovEstoque.ApplyUpdates(0);
      DM.cdsMovEstoque.Refresh;

     //grava estoque por produto
      DM.cdsEstoqueProduto.Open;
      DM.cdsInsertSaidaEstoqueProduto.Params[0].AsInteger := StrToInt(L_LOJA.Caption);
      DM.cdsInsertSaidaEstoqueProduto.Params[1].AsDate    := StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
      DM.cdsInsertSaidaEstoqueProduto.Params[2].AsString  := 'S';
      DM.cdsInsertSaidaEstoqueProduto.Execute;
      DM.cdsEstoqueProduto.ApplyUpdates(0);
      DM.cdsEstoqueProduto.Refresh;

      DM.cdsPdvLocal.ApplyUpdates(0);
      DM.cdsPdvLocal.Refresh;

     //// ShowMessage('Recebimento Efetuado com Sucesso.');
      L_SITUACAO_VENDA.Caption := 'Caixa Livre';
      L_TOTAL_VENDA.Caption:=' R$ 0,00 ';
      edtValorPago.Clear;
      edtTroco.Clear;
      SituacaoVenda :='';
      frmPdv.SetFocus;
      DBEdit1.SetFocus;

      if DM.cdsPdvLocal.RecordCount > 0 then
        L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO'
      else
        L_SITUACAO_VENDA.Caption := 'Caixa Livre';
    end;
end;

procedure TfrmPdv.BB_CANCELARClick(Sender: TObject);
begin
  P_RECEBIMENTO.Visible := False;
end;

procedure TfrmPdv.BitBtn1Click(Sender: TObject);
begin
  P_RESUMO.Visible := False;
end;

procedure TfrmPdv.L_REL_VENDASClick(Sender: TObject);
begin
  if L_SITUACAO_VENDA.Caption = 'LAN�ANDO VENDA(S)' then
    ShowMessage('Termine a Venda Para Finalizar o PDV')
  else
    Application.Terminate;
end;

procedure TfrmPdv.Edit1Exit(Sender: TObject);
begin
  ShowMessage('Funcionou');
end;

procedure TfrmPdv.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    PesquisaProduto;
  end;
end;

procedure TfrmPdv.L_OPCOESClick(Sender: TObject);
begin
  if DM.cdsItemPdvLocal.State in dsEditModes then
  begin
    ShowMessage('Encerre a Venda Para Efetuar o Resumo.');
  end
  else
  begin
    cdsResumoVendas.Close;
    cdsResumoVendas.Params[0].AsDate := StrToDate(DateToStr(Date));
    cdsResumoVendas.Params[1].AsDate := StrToDate(DateToStr(Date));
    cdsResumoVendas.Params[2].AsDate := StrToDate(DateToStr(Date));
    cdsResumoVendas.Params[3].AsDate := StrToDate(DateToStr(Date));
    cdsResumoVendas.Params[4].AsInteger := StrToInt(L_CAIXA.Caption);
    cdsResumoVendas.Open;

    if cdsResumoVendas.IsEmpty then
    begin
      ShowMessage('Nenhum Registro Encontrado no momento.');
    end
    else
    begin
      cdsVendasVendedor.Close;
      cdsVendasVendedor.Params[0].AsDate := StrToDate(DateToStr(Date));
      cdsVendasVendedor.Open;

      P_RESUMO.Visible := True;
      P_RESUMO.ActivePage := TabSheet1;

      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' select sum(p.VL_LIQUIDO) from tb_pdv p ' +
                                    ' JOIN TB_VENDEDOR v on (v.ID_VENDEDOR = p.ID_VENDEDOR)' +
                                    ' and p.DT_ORCAMENTO = ' +QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(DateToStr(Date))))+
                                    ' AND P.STATUS = ''F''';
      DM.cdsDinamica.Open;
      L_TOTAL_GERAL.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
      L_RESUMO_CAIXA.Caption := 'Resumo do Caixa '+'('+L_CAIXA.Caption+')'+' '+L_USUARIO.Caption;

      cdsTroca.Close;
      cdsTroca.Params[0].AsInteger := StrToInt(L_CAIXA.Caption);
      cdsTroca.Params[1].AsDate    := StrToDate(DateToStr(Date));
      cdsTroca.Open;

      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT SUM(IP.quant), ' +
                                    '  ( SELECT SUM(IP.quant) FROM tb_item_pdv IP' +
                                    '     JOIN tb_pdv P ON (P.nr_orcamento = IP.nr_orcamento) WHERE IP.status =''D'''+
                                    '    AND P.dt_orcamento =' +QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(DateToStr(Date))))+'),'+
                                    '  ( SELECT SUM(P.vl_liquido) FROM tb_pdv P'+
                                    '      WHERE P.status =''D'' AND P.dt_orcamento = '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(DateToStr(Date))))+')'+
                                    ' FROM tb_item_pdv IP JOIN tb_pdv P ON (P.nr_orcamento = IP.nr_orcamento) '+
                                    ' WHERE IP.status =''L'' AND P.dt_orcamento = '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(DateToStr(Date))));
      DM.cdsDinamica.Open;

      L_QT_LEV.Caption := IntToStr(DM.cdsDinamica.Fields[0].AsInteger);
      L_QTDEV.Caption  := IntToStr(DM.cdsDinamica.Fields[1].AsInteger);
      L_TOT_TROCA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsDinamica.Fields[2].AsFloat);
      DM.cdsDinamica.Close;



      cdsEspecie.Close;
      cdsEspecie.Params[0].AsDate    := StrToDate(DateToStr(Date));
      cdsEspecie.Open;

      L_TOTAL_GERAL1.Caption := L_TOTAL_GERAL.Caption;

      cdsTotalPecas.Close;
      cdsTotalPecas.Params[0].AsInteger := StrToInt(L_LOJA.Caption);
      cdsTotalPecas.Params[1].AsDate    := StrToDate(DateToStr(Date));
      cdsTotalPecas.Params[2].AsDate    := StrToDate(DateToStr(Date));
      cdsTotalPecas.Open;

    end;
  end;
end;

procedure TfrmPdv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.cdsItemPdvLocal.State in dsEditModes then
  begin
    ShowMessage('Favor Encerre a Venda Para Sair Do PDV');
    Exit;
  end;

{  if Application.MessageBox('Deseja Fechar o PDV?','Aten��o',MB_YESNO+MB_ICONQUESTION)= idyes then
  begin
    Application.Terminate;
  end
  else
  begin
    ShowMessage('Fechamento Cancelado');
  end;}
end;

procedure TfrmPdv.Button1Click(Sender: TObject);
begin
  FileCopy('C:\SHOPPING10\BDADOS\BDADO_S10.FDB','C:\');
  CopyFile('C:\SHOPPING10\BDADOS\BDADOS_S10.FDB','C:\shopping10\BDADOS\BK\BDADOS_S10.FDB');
//  \\192.168.175.1\publico$\PDV\BDADOS\BDADOS_S10.FDB');
end;

procedure TfrmPdv.CopyFile(const sourcefilename, targetfilename: String);
Var
  S, T: TFileStream;
Begin
  S := TFileStream.Create( sourcefilename, fmOpenRead );
  try
  T := TFileStream.Create( targetfilename, fmOpenWrite or fmCreate );
  try
  T.CopyFrom(S, S.Size ) ;
  finally
  T.Free;
  end;
  finally
  S.Free;
  end;
end;

procedure TfrmPdv.GravaRegistro;
begin
  if DBEdit3.Text = '' then
  begin
    ShowMessage('Favor Informar Quantidade Vendida!!!');
    DBEdit3.SetFocus;
    Exit;
  end;
  if DBEdit5.Text = '' then
  begin
    ShowMessage('Favor Informar Valor de Venda !!!');
    DBEdit5.SetFocus;
    Exit;
  end;

  if (not DM.cdsItemPdvLocalQUANT.IsNull) then
  begin
    DM.cdsItemPdvLocalVL_TOTAL.AsFloat :=
      DM.cdsItemPdvLocalQUANT.AsInteger *
      DM.cdsItemPdvLocalVL_UNIT.AsFloat;
  end;
  //if Application.MessageBox('Confirma Lan�amento?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
  //begin
    if DM.cdsItemPdvLocal.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema N�o Conseguiu Salvar Esta Informa��o. Tente Novamente ou Contate o Suporte.');
    end
    else
    begin
      SomaTotais;
      DM.cdsItemPdvLocal.ApplyUpdates(0);
      InsertItemVenda;
    end;
  //end
  //else
  //begin
   // ShowMessage('Registro Cancelado.');
   // DM.cdsItemPdvLocal.Cancel;
   // SomaTotais;
   // InsertItemVenda;
  //end;
end;

procedure TfrmPdv.Imprimir;
var
     subtotal, total : currency;
     linha, item : integer;
     traco : string;
begin
     total    := 0;
     item     := 0;
     Traco    := '--------------------------------------------------';
     // Parametros para o CUPOM FISCAL
     rdprint1.TamanhoQteLinhas      := 1;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 55;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := s20cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := false;

     // Cabe�alho do Cupom...
     with rdprint1 do
        begin
        abrir;
       // impc(02,28,'SUPERMERCADO PAG & LEV LTDA',[Comp12, Negrito]);
       // impc(03,28,'Av. Sampaio Vidal, 78',[Comp12]);
       // impc(04,28,'17500-000 - Mar�lia - SP',[Comp12]);
       // impc(05,28,'Fone (14) 1234-5678',[Comp12]);
        ImpF (02,01,'N� ' +DM.cdsPdvLocalNR_ORCAMENTO.AsString  +
                   '   ' + datetimetostr(now) +
                   '    Op.: ' +L_USUARIO.Caption,[] );

        // Dados do Cliente...
        impF (03,01,traco,[]);
        impf(04,01,DM.cdsPdvLocalNOME_CLIENTE.Value,[]);
////        impf(10,01,table2endereco.value,[comp12]);
////        impf(11,01,table2cep.value    + ' - ' +
////                   table2cidade.value + ' - ' +
////                   table2estado.VALUE, [comp12]);

        // Titulo dos Itens...
        impF (05,01,traco,[]);
        ImpF (06,01,'ITEM CODIGO DESCRICAO QTD VL.UNI(R$)VL_ITEM (R$)',[negrito]);
        impF (07,01,traco,[]);
        end;

     // Imprime itens do pedido...
     linha := 08;
     DM.cdsItemPdvLocal.first;
     while not DM.cdsItemPdvLocal.eof do
        begin
        with rdprint1 do
           begin
             ITEM := ITEM +1;
             ImpVal(linha,01,'##00',ITEM,[]);
             impf(linha,06,dm.cdsItemPdvLocalCOD_BARRA.Value,[]);
             impf  (linha,20,dm.cdsItemPdvLocalDESCRICAO.value,[]);
             linha := linha+1;
             ImpVal(linha,10,'',dm.cdsItemPdvLocalQUANT.value,[]);
            // impf  (linha,13,dm.cdsItemPdvLocalUNIDADE.Value,  []);
             impf  (linha,13,' X ',[]);
             impval(linha,17,'#,##0.00', dm.cdsItemPdvLocalVL_UNIT.AsFloat,[]);
             subtotal := dm.cdsItemPdvLocalQUANT.AsFloat * dm.cdsItemPdvLocalVL_UNIT.AsFloat;
             total    := total + subtotal;
             impval(linha,35,'##,##0.00', subtotal, []);
             inc(linha);
           end;
        dm.cdsItemPdvLocal.next;
        end;

     // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
     with rdprint1 do
        begin
        // Total...
        imp   (linha,01,traco);
        inc   (linha);
        imp   (linha,01,'Total Geral do Cupom');
        impval(linha,33,'###,###,##0.00',total,[]);
        // Desconto Global
        inc (linha);
        imp (linha,01,'(-) Desconto Global');
//        impval(linha,33,'-##,###,##0.00',strtofloat(desconto.text),[]);
        // Total Liquido...
        inc (linha);
        impf(linha,01,'VALOR A PAGAR R$',[negrito]);
//        impval(linha,33,'###,###,##0.00',Total - strtofloat(desconto.text),[]);
        // Final...
        inc (linha);
        imp (linha,01,traco);
        inc (linha);
        impc(linha,28,'Obrigado pela prefer�ncia',[]);
        inc (linha);
        inc (linha);
        impc(linha,28,'VOLTE SEMPRE',[]);
        inc (linha);
        inc (linha);
        impc(linha,28,'***  SEM VALOR FISCAL  ***',[]);
        inc (linha);
        inc (linha);
        inc (linha);

        // Avan�a 7 linhas em Branco...
        linha := linha + 7;
        imp (linha,01,' '); // Para for�ar impress�o da p�gina

   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, N�O ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      rdprint1.OpcoesPreview.Preview := true;                            {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}
        // Restaura valores normais para imprimir Cupom N�o Fiscal...
        RDprint1.Impressora := Bobina;
        rdprint1.OpcoesPreview.Preview := False;
        rdprint1.TamanhoQteLinhas      := 1;

        fechar;
        end;
end;

procedure TfrmPdv.ImprimirTermica;
var
  Arquivo : TextFile;
  iCount, iCount2, iProdutos, iQuantas, iVezes,iPag: integer;
  dValor,dDesconto,dLiquido,TotalGeral,ValorPago,Troco : Double;
begin
  Memo2.Clear;
  if printer.printers.count=0 then
  showmessage('nao tem impressora instalada');


  with DM do
  begin
      dValor :=0;
    iQuantas :=0;
    dDesconto:=0;
    dLiquido :=0;
    //cdsItemPdvLocal.IndexFieldNames :='ID_ITEM_PDV';
    iProdutos := cdsItemPdvLocal.RecordCount;
    iVezes := Trunc(iProdutos/10000);
    if Round(iProdutos) > 0 then
      iVezes := iVezes +1;
    cdsItemPdvLocal.First;
    for iCount := 1 to iVezes do
    begin
    //  Memo2.Lines := Screen.Fonts; //LISTA TODOS OS TIPOS DE FONTES
    //  Memo2.Font.Name := 'ARIAL'; // ESCOLHE O TIPO DA FONTE
    //  Memo2.Font.Handle := 20;   //TAMANHO DA FONTE

      Memo2.Lines.Add(' ');
      Memo2.Lines.Add('Orcamento N.'+DefineTamanhoString(cdsPdvLocalID_PDV.AsString,8,0)
        +'  OPERADOR CAIXA:  '+L_USUARIO.Caption);
//        +'                     '+DefineTamanhoString(FormatDateTime('dd "de" mmmm "de" yyyy',Date),20,0)
//        +' '+' Hora '+DefineTamanhoString(TimeToStr(Time),10,0));
      Memo2.Lines.Add       ('------------------------------------------------------------------------------------');
      Memo2.Lines.Add('DATA DA VENDA...: '+DefineTamanhoString(FormatDateTime('DD/MM/YYYY',cdsPdvLocalDT_ORCAMENTO.AsDateTime),10,0)+'   Hora Impress�o..:'+TimeToStr(Time));

                                       //Cabe�alho de Clientes
      Memo2.Lines.Add       ('------------------------------------------------------------------------------------');
      Memo2.Lines.Add('CLIENTE...: '+DefineTamanhoString(cdsPdvLocalNOME_CLIENTE.AsString,16,0));
//      Memo2.Lines.Add(#27#15+'Vendedor(a)....: '+DefineTamanhoString(L_VENDEDOR.Caption,13,0));
      Memo2.Lines.Add(' ');
      Memo2.Lines.Add('                  *** S E M   V A L O R   F I S C A L ***                     ');
      Memo2.Lines.Add('------------------------------------------------------------------------------------');
      Memo2.Lines.Add('ITEM CODIGO DESCRICAO QTD VL_UNIT(R$) VL_ITEM(R$)     ');
      Memo2.Lines.Add('------------------------------------------------------------------------------------');

      //INICIA OS PRODUTOS
      FOR iCount2 := 1 to 10000 do
      begin
        inc(iQuantas);
        if iQuantas <= iProdutos then
        begin
          Memo2.Lines.Add(DefineTamanhoString(FormatFloat('###000',iQuantas),3,0)+ ' '+DefineTamanhoString(cdsItemPdvLocalCOD_BARRA.AsString,15,0)
           +''+DefineTamanhoString(cdsItemPdvLocalDESCRICAO.AsString,30,0));
//            +' '+DefineTamanhoString(CDS_CUPON_PRODUTOcl_ds_unidade.AsString,4,0)
           Memo2.Lines.Add('          '+DefineTamanhoString(FormatFloat('###,###,##0',cdsItemPdvLocalQUANT.AsFloat),4,1)
            +' UNI X '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsItemPdvLocalVL_UNIT.AsFloat),6,1)
            +'              '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsItemPdvLocalVL_TOTAL.AsFloat),8,1));

          dValor :=  dValor + cdsItemPdvLocalVL_TOTAL.AsFloat;
          dDesconto := cdsPdvLocalVL_DESCONTO.AsFloat;
          TotalGeral :=  cdsPdvLocalVL_LIQUIDO.AsFloat;


//          ValorPago  :=  StrToFloat(StringReplace(edtValorPago.Text,'.','',[rfReplaceAll]));
//          Troco      :=  StrToFloat(StringReplace(edtTroco.Text,'.','',[rfReplaceAll]));
          ValorPago  :=  StrToFloat(StringReplace(frmPagamentoPdv.Edit6.Text,'.','',[rfReplaceAll]));
          Troco      :=  StrToFloat(StringReplace(frmPagamentoPdv.L_TROCO.Caption,'.','',[rfReplaceAll]));
          cdsItemPdvLocal.Next;
        end
        else
        begin
//          F_MENU_CLIENTE.Memo1.Lines.Add(#27#18+' ');
        end;
      end;
        Memo2.Lines.Add('------------------------------------------------------------------------------------');
        Memo2.Lines.Add('TOTAL R$.........:'+DefineTamanhoString(FormatFloat('###,###,##0.00',TotalGeral),10,1));
        Memo2.Lines.Add('VALOR PAGO R$....:'+DefineTamanhoString(FormatFloat('###,###,##0.00',ValorPago),10,1));
        Memo2.Lines.Add('TROCO R$.........:'+DefineTamanhoString(FormatFloat('###,###,##0.00',Troco),10,1));
        Memo2.Lines.Add('------------------------------------------------------------------------------------');
        Memo2.Lines.Add('');
        Memo2.Lines.Add('VENDEDOR(A)  '+DefineTamanhoString(DM.cdsPdvLocalNOME.AsString,20,0));
        Memo2.Lines.Add('');
        Memo2.Lines.Add('');

           //CONTA QUANT DE REGISTROS DA VENDA
        DM.cdsDinamica.Close;
        DM.cdsDinamica.IndexFieldNames :='';
        DM.cdsDinamica.CommandText := ' SELECT SUM(IP.QUANT) FROM TB_ITEM_PDV IP WHERE IP.NR_ORCAMENTO = '+DM.cdsPdvLocalNR_ORCAMENTO.AsString;
        DM.cdsDinamica.Open;
        Memo2.Lines.Add('TOTAL DE PECAS        '+DefineTamanhoString(FormatFloat('###',DM.cdsDinamica.Fields[0].AsFloat),3,0));
        Memo2.Lines.Add('');

        //        Memo2.Lines.Strings[1] := Memo2.Lines.Strings[1] + 'TEXTO ADICIONAL';
        Memo2.Lines.Add('                         OBRIGADO PELA PREFER�NCIA     ');
        Memo2.Lines.Add('                                      ');
        Memo2.Lines.Add('                        **    V O L T E    S E M P R E  ** ');

        dValor := 0;
      end;
  end;
  AssignFile(Arquivo,CaminhoImpressora);
  // AssignFile(Arquivo,'\\127.0.0.1\Doro');
  //MP-2500T - PARA IMPRESSORA BEMATECH
  Rewrite(Arquivo);
{  for iCount := 1 to Memo2.Lines.Count do
  begin
    Writeln(Arquivo,Memo2.Lines[icount]); // Ejeta a p�gina
  end;}
  //Writeln(Arquivo,#12); // Ejeta a p�gina
  //Writeln(Arquivo,#27#109);//CORTA O PAPEL
//  ImprimirMemoComCanvas(Memo2);
  ImprimirMemo(Memo2);
  CloseFile(Arquivo);
end;


procedure TfrmPdv.ImprimirMemoComCanvas(Memo: TMemo);
const
  cEspacoLinha = 5;
  cMargemSuperior = 50;
  cMargemEsquerda = 30;
var
  AlturaLinha, Y, I: integer;
begin

  Printer.BeginDoc;
  try
    { Usa na impressora a mesma fonte do memo }
    Printer.Canvas.Font.Assign(Memo.Font);

    AlturaLinha := Printer.Canvas.TextHeight('Tg');

    Y := cMargemSuperior;
    for I := 0 to Memo.Lines.Count -1 do begin

      if Y > Printer.PageHeight then begin
        Printer.NewPage;
        Y := cMargemSuperior;
      end;

      Printer.Canvas.TextOut(cMargemEsquerda, Y, Memo.Lines[I]);

      Y := Y + AlturaLinha + cEspacoLinha;
    end;
  finally
    Printer.EndDoc;
  end;
end;

procedure TfrmPdv.ImprimirMemo(Memo: TMemo);
var
  I: integer;
  F: TextFile;
begin
  { Usa na impressora a mesma fonte do memo }
  Printer.Canvas.Font.Assign(Memo.Font);

  AssignPrn(F);
  Rewrite(F);
  try
    for I := 0 to Memo.Lines.Count -1 do
      WriteLn(F, Memo.Lines[I]);
  finally
    CloseFile(F);
  end;
end;

procedure TfrmPdv.L_REIMPRESSAOClick(Sender: TObject);
Var
 Valor : String;
begin
    InputQuery('Reimpress�o Or�amento', 'Digite o N� do Or�amento', Valor);
    if Valor <>'' then
    begin
      Orcamento := StrToInt(Valor);
      Reimpressao;
    end
    else
      ShowMessage('Nenhum or�amento Selecionado Para Imprimir');
end;

procedure TfrmPdv.Reimpressao;
var
  Arquivo : TextFile;
  iCount, iCount2, iProdutos, iQuantas, iVezes,iPag: integer;
  dValor,dDesconto,dLiquido,TotalGeral : Double;
begin

  Memo2.Clear;
  if printer.printers.count=0 then
  begin
    showmessage('nao tem impressora instalada');
    Exit;
  end;
  cdsReimpressao.Close;
  cdsReimpressao.Params[0].AsInteger := Orcamento;
  cdsReimpressao.Params[1].AsInteger := StrToInt(L_LOJA.Caption);
  cdsReimpressao.Open;

  if cdsReimpressaoSTATUS.Value = 'C' then
  begin
    ShowMessage('Este Or�amento Foi Cancelado.');
    exit;
  end;

  if cdsReimpressao.IsEmpty then
  begin
    ShowMessage('Documento N�o Encontrado.');
    Exit;
  end
  else
  begin
    with DM do
    begin
        dValor :=0;
      iQuantas :=0;
      dDesconto:=0;
      dLiquido :=0;
      //cdsItemPdvLocal.IndexFieldNames :='ID_ITEM_PDV';
      iProdutos := cdsReimpressao.RecordCount;
      iVezes := Trunc(iProdutos/10000);
      if Round(iProdutos) > 0 then
        iVezes := iVezes +1;
      cdsReimpressao.First;
      for iCount := 1 to iVezes do
      begin
      //  Memo2.Lines := Screen.Fonts; //LISTA TODOS OS TIPOS DE FONTES
      //  Memo2.Font.Name := 'ARIAL'; // ESCOLHE O TIPO DA FONTE
      //  Memo2.Font.Handle := 20;   //TAMANHO DA FONTE

        Memo2.Lines.Add(' ');
        Memo2.Lines.Add('Orcamento N.'+DefineTamanhoString(cdsReimpressaoNR_ORCAMENTO.AsString,8,0)
          +'  OPERADOR CAIXA:  '+L_USUARIO.Caption);
  //        +'                     '+DefineTamanhoString(FormatDateTime('dd "de" mmmm "de" yyyy',Date),20,0)
  //        +' '+' Hora '+DefineTamanhoString(TimeToStr(Time),10,0));
        Memo2.Lines.Add       ('------------------------------------------------------------------------------------');
        Memo2.Lines.Add('DATA DA VENDA...: '+DefineTamanhoString(FormatDateTime('DD/MM/YYYY',cdsReimpressaoDT_ORCAMENTO.AsDateTime),10,0)+'   Hora Impress�o..:'+TimeToStr(Time));

                                         //Cabe�alho de Clientes
        Memo2.Lines.Add       ('------------------------------------------------------------------------------------');
        Memo2.Lines.Add('CLIENTE...: '+DefineTamanhoString('CONSUMIDOR FINAL',16,0));
  //      Memo2.Lines.Add(#27#15+'Vendedor(a)....: '+DefineTamanhoString(L_VENDEDOR.Caption,13,0));
        Memo2.Lines.Add(' ');
        Memo2.Lines.Add('                  *** S E M   V A L O R   F I S C A L ***                     ');
        Memo2.Lines.Add('------------------------------------------------------------------------------------');
        Memo2.Lines.Add('ITEM CODIGO DESCRICAO QTD VL_UNIT(R$) VL_ITEM(R$)     ');
        Memo2.Lines.Add('------------------------------------------------------------------------------------');

        //INICIA OS PRODUTOS
        FOR iCount2 := 1 to 10000 do
        begin
          inc(iQuantas);
          if iQuantas <= iProdutos then
          begin
            Memo2.Lines.Add(DefineTamanhoString(FormatFloat('###000',iQuantas),3,0)+ ' '+DefineTamanhoString(cdsReimpressaoCOD_BARRA.AsString,15,0)
             +''+DefineTamanhoString(cdsReimpressaoDESCRICAO.AsString,30,0));
  //            +' '+DefineTamanhoString(CDS_CUPON_PRODUTOcl_ds_unidade.AsString,4,0)
             Memo2.Lines.Add('          '+DefineTamanhoString(FormatFloat('###,###,##0',cdsReimpressaoQUANT.AsFloat),4,1)
              +' UNI X '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsReimpressaoVL_UNIT.AsFloat),6,1)
              +'              '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsReimpressaoVL_TOTAL.AsFloat),8,1));

            dValor :=  dValor + cdsReimpressaoVL_TOTAL.AsFloat;
           // dDesconto := cdsPdvLocalVL_DESCONTO.AsFloat;
            TotalGeral :=  dValor;
            cdsReimpressao.Next;
          end
          else
          begin
  //          F_MENU_CLIENTE.Memo1.Lines.Add(#27#18+' ');
          end;
        end;
          Memo2.Lines.Add('------------------------------------------------------------------------------------');
          Memo2.Lines.Add('TOTAL R$.........:'+DefineTamanhoString(FormatFloat('###,###,##0.00',TotalGeral),10,1));
          Memo2.Lines.Add('------------------------------------------------------------------------------------');
          Memo2.Lines.Add('');
          Memo2.Lines.Add('');
           //SELECIONAR O VENDEDOR DA VENDA
          DM.cdsDinamica.Close;
          DM.cdsDinamica.IndexFieldNames :='';
          DM.cdsDinamica.CommandText := ' SELECT V.NOME FROM TB_PDV P JOIN TB_VENDEDOR V ON (V.ID_VENDEDOR = P.ID_VENDEDOR)'+
                                        ' WHERE P.NR_ORCAMENTO = '+IntToStr(Orcamento);
          DM.cdsDinamica.Open;

          Memo2.Lines.Add('VENDEDOR(A)  '+DefineTamanhoString(DM.cdsDinamica.Fields[0].AsString,20,0));
          Memo2.Lines.Add('');
          Memo2.Lines.Add('');

             //CONTA QUANT DE REGISTROS DA VENDA
          DM.cdsDinamica.Close;
          DM.cdsDinamica.IndexFieldNames :='';
          DM.cdsDinamica.CommandText := ' SELECT SUM(IP.QUANT) FROM TB_ITEM_PDV IP WHERE IP.NR_ORCAMENTO = '+IntToStr(Orcamento);
          DM.cdsDinamica.Open;
          Memo2.Lines.Add('TOTAL DE PECAS        '+DefineTamanhoString(FormatFloat('###',DM.cdsDinamica.Fields[0].AsFloat),3,0));
          Memo2.Lines.Add('');
          Memo2.Lines.Add('');

          Memo2.Lines.Add('                         OBRIGADO PELA PREFER�NCIA     ');
          Memo2.Lines.Add('                                      ');
          Memo2.Lines.Add('');

          Memo2.Lines.Add('                        **    V O L T E    S E M P R E  ** ');
          Memo2.Lines.Add('');
          Memo2.Lines.Add('');
          Memo2.Lines.Add('');
          Memo2.Lines.Add('------------------------------------------------------------------------------------');
          Memo2.Lines.Add(' *********                  R E I M P R E S S � O      ************');
          Memo2.Lines.Add('------------------------------------------------------------------------------------');

          dValor := 0;
        end;
    end;
    AssignFile(Arquivo,CaminhoImpressora);
    //\\127.0.0.1\MP-2500T

    //EPSON_TMT20
    Rewrite(Arquivo);
  {  for iCount := 1 to Memo2.Lines.Count do
    begin
      Writeln(Arquivo,Memo2.Lines[icount]); // Ejeta a p�gina
    end;}
    //Writeln(Arquivo,#12); // Ejeta a p�gina
    //Writeln(Arquivo,#27#109);//CORTA O PAPEL
  //  ImprimirMemoComCanvas(Memo2);
    ImprimirMemo(Memo2);
    CloseFile(Arquivo);
    end;
  end;
procedure TfrmPdv.BitBtn2Click(Sender: TObject);
begin
  DM.cdsPdvLocalID_VENDEDOR.AsInteger  := cdsVendedorID_VENDEDOR.AsInteger;
  DM.cdsPdvLocalNOME.Value             := cdsVendedorNOME.Value;

  if DM.cdsPdvLocal.ApplyUpdates(0) <> 0 then
  begin
    ShowMessage('O Sistema N�o Conseguiu Salvar Esta Informa��o. Tente Novamente ou Contate o Suporte.');
  end
  else
  begin
    DM.cdsPdvLocal.ApplyUpdates(0);
    P_VENDEDOR.Visible := False;
    InsertItemVenda;
  end;
end;

procedure TfrmPdv.BitBtn3Click(Sender: TObject);
begin
  DM.cdsPdvLocal.Cancel;
  P_VENDEDOR.Visible := False;
  Abort;
end;

procedure TfrmPdv.BitBtn5Click(Sender: TObject);
begin
  P_RESUMO.Visible := False;
end;

procedure TfrmPdv.BitBtn7Click(Sender: TObject);
begin
  P_RESUMO.Visible := False;
end;

procedure TfrmPdv.DBEdit3Exit(Sender: TObject);
begin
  GravaRegistro;
  //  DBEdit5.SetFocus;
end;

procedure TfrmPdv.GravarVenda;
begin
      cdsDinamica.Close;
      cdsDinamica.IndexFieldNames :='';
      cdsDinamica.CommandText := 'SELECT MAX(ID_PDV) FROM TB_PDV';
      cdsDinamica.Open;
      DM.cdsPdvLocalID_PDV.AsInteger := cdsDinamica.Fields[0].AsInteger+1;
      DM.cdsPdvLocalSTATUS.Value := 'A';
      DM.cdsPdvLocalTRANSF.Value := 'N';
      DM.cdsPdvLocalVL_DESCONTO.AsFloat := 0;
      DM.cdsPdvLocalVL_ORCAMENTO.AsFloat:= 0;
      DM.cdsPdvLocalNOME_CLIENTE.Value := 'CONSUMIDOR FINAL';
      DM.cdsPdvLocalID_LOJA.AsInteger := StrToInt(L_LOJA.Caption);
      DM.cdsPdvLocalID_GRUPO.AsInteger := StrToInt(L_ID_GRUPO.Caption);
      DM.cdsPdvLocalDT_ORCAMENTO.AsDateTime := Date;
      DM.cdsPdvLocalID_VENDEDOR.AsInteger := cdsVendedorID_VENDEDOR.AsInteger;
      DM.cdsPdvLocalCAIXA.AsInteger := StrToInt(L_CAIXA.Caption);
      cdsDinamica.Close;
      cdsDinamica.IndexFieldNames :='';
      cdsDinamica.CommandText := 'SELECT MAX(NR_ORCAMENTO) FROM TB_PDV';
      cdsDinamica.Open;
      DM.cdsPdvLocalNR_ORCAMENTO.AsInteger := cdsDinamica.Fields[0].AsInteger+1;
      // P_VENDEDOR.Visible := True;
      // DBLookupComboBox1.SetFocus;

    if DM.cdsPdvLocal.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema N�o Conseguiu Salvar Esta Informa��o. Tente Novamente ou Contate o Suporte.');
    end
    else
    begin
      DM.cdsPdvLocal.ApplyUpdates(0);
      //P_VENDEDOR.Visible := False;
    end;
end;

procedure TfrmPdv.edtValorPagoEnter(Sender: TObject);
begin
  edtValorPago.Text := FormatFloat('###,###0.00',DM.cdsPdvLocalVL_LIQUIDO.AsFloat);
  edtValorPago.SelectAll;
end;

procedure TfrmPdv.DBEdit5Exit(Sender: TObject);
begin
//  GravaRegistro;
end;

end.