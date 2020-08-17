unit uPdv;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Grids, DBGrids, Mask, DBCtrls, FMTBcd,
  DB, DBClient, Provider, SqlExpr, midaslib, Buttons, Menus, Printers,
  WinSpool,
  ComCtrls, Midas, Dblogdlg, Vcl.Imaging.pngimage;

type
  TfrmPdv = class(TForm)
    P_SISTEMA: TPanel;
    P_CLIENTE: TPanel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    P_DATA_HORA: TPanel;
    L_DATA_HORA: TLabel;
    Timer1: TTimer;
    Label5: TLabel;
    P_ITEM: TPanel;
    DBGrid1: TDBGrid;
    P_MENU: TPanel;
    L_ENCERRAR_VENDA: TLabel;
    L_EXCLUIR_ITEM: TLabel;
    L_INCLUIR_ITEM: TLabel;
    L_PAGAMENTO: TLabel;
    L_TROCAR_USUARIO: TLabel;
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
    P_DESC_ITEM: TPanel;
    Label29: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    P_DADOS_SISTEMA: TPanel;
    L_INFORMACOES: TLabel;
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
    qVendedorID_VENDEDOR: TIntegerField;
    qVendedorID_LOJA: TIntegerField;
    qVendedorID_GRUPO: TIntegerField;
    qVendedorNOME: TStringField;
    cdsVendedorID_VENDEDOR: TIntegerField;
    cdsVendedorID_LOJA: TIntegerField;
    cdsVendedorID_GRUPO: TIntegerField;
    cdsVendedorNOME: TStringField;
    Image2: TImage;
    Memo2: TMemo;
    L_REIMPRESSAO: TLabel;
    L_NOVA_VENDA: TLabel;
    L_CANCELAR_VENDA: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    qResumoVendas: TSQLQuery;
    qResumoVendasDT_ORCAMENTO: TDateField;
    qResumoVendasTOTAL: TFMTBCDField;
    qResumoVendasQUANT: TLargeintField;
    qResumoVendasQT_PECAS: TLargeintField;
    qResumoVendasID_USUARIO: TIntegerField;
    qResumoVendasLOGIN: TStringField;
    dspResumoVendas: TDataSetProvider;
    cdsResumoVendas: TClientDataSet;
    cdsResumoVendasDT_ORCAMENTO: TDateField;
    cdsResumoVendasTOTAL: TFMTBCDField;
    cdsResumoVendasQUANT: TLargeintField;
    cdsResumoVendasQT_PECAS: TLargeintField;
    cdsResumoVendasID_USUARIO: TIntegerField;
    cdsResumoVendasLOGIN: TStringField;
    dsResumoVendas: TDataSource;
    P_SENHA: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Image3: TImage;
    ValorNome1: TEdit;
    ValorSenha1: TEdit;
    btnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    BB_CONFIRMA: TBitBtn;
    spDelItemEstoque: TSQLStoredProc;
    dspDelItemEstoque: TDataSetProvider;
    cdsDelItemEstoque: TClientDataSet;
    Label3: TLabel;
    DBEdit7: TDBEdit;
    P_ORCAMENTO: TPanel;
    Label7: TLabel;
    DBText1: TDBText;
    P_TOTAL_VENDA: TPanel;
    Label6: TLabel;
    L_TOTAL_VENDA: TLabel;
    Label28: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    L_TOTAL_DESC_ENTRADA: TLabel;
    L_TOTAL_LIQUIDO: TLabel;
    PMENU: TPanel;
    SpeedButton3: TSpeedButton;
    edtProduto: TEdit;
    P_ECONOMIA: TPanel;
    Label11: TLabel;
    L_VLAVISTA: TLabel;
    Label12: TLabel;
    L_ECONOMIA: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Panel1: TPanel;
    Label17: TLabel;
    L_QTD_PECAS: TLabel;
    P_VLVENDA: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    P_CONSULTA_PRODUTO: TPanel;
    Label14: TLabel;
    LPRODUTO: TLabel;
    LCODIGO: TLabel;
    LVALOR: TLabel;
    L_CODIGO: TLabel;
    L_PRODUTO: TLabel;
    L_VALOR: TLabel;
    Panel2: TPanel;
    Edit1: TEdit;
    BB_SAIR: TBitBtn;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure L_PAGAMENTOClick(Sender: TObject);
    procedure L_TROCAR_USUARIOClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure L_OPCOESClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure L_REIMPRESSAOClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure L_REL_VENDASClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BB_CONFIRMAClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtProdutoExit(Sender: TObject);
    procedure edtProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BB_SAIRClick(Sender: TObject);
  private
    { Private declarations }
    procedure MakeRounded(Control: TWinControl);
    Procedure InsertItemVenda;
    Procedure SomaTotais;
    Procedure PesquisaProduto;
    Procedure ChecaUsuario(nivel: integer);
    Procedure CopyFile(Const sourcefilename, targetfilename: String);
    Procedure GravaRegistro;
    Procedure ImprimirMemoComCanvas(Memo: TMemo);
    Procedure ImprimirMemo(Memo: TMemo);
    Procedure GravarVenda;
    Procedure ChamaDesconto;
    Function VersaoExe: String;
    Procedure ValorAvista;
    Procedure PesquisaProduto2;
    Procedure SomaQtdPecas;
  public

    { Public declarations }
    recInformacoes: record login: String;
    id_Usuario: integer;
    nivel: integer;
    lojaCredenciada: String;
    GrupoLoja: integer;
    NomeGrupo: String;
  end;

sNovo, sNovoAnt, sNome_Novo: String;
bPesquisa, bSenha: Boolean;
    Procedure ImprimirTermica;
    Procedure NovoAcesso;

end;

var
  frmPdv: TfrmPdv;
  SituacaoVenda: String;
  Orcamento: integer;
  Item: integer;
  CaminhoImpressora: string;
  LOGO             : string;
  MULTI : Boolean;

implementation

uses uDm, U_LIB, UD_PESQUISA, uSenha, uPagamentoPdv, uFechamentoCaixa,
  uReimpressaoOrcamento, uReativarVendas, uDesconto, uDigitaPrecoVenda,
  uMenuCaixa;

{$R *.dfm}
{ TfrmPdv }

function DiaSemana(Data:TDateTime): String;
{Retorna dia da semana}
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String[13];
begin
{ Dias da Semana }
  DiaDasemana [1]:= 'Domingo';
  DiaDasemana [2]:= 'Segunda-feira';
  DiaDasemana [3]:= 'Ter�a-feira';
  DiaDasemana [4]:= 'Quarta-feira';
  DiaDasemana [5]:= 'Quinta-feira';
  DiaDasemana [6]:= 'Sexta-feira';
  DiaDasemana [7]:= 'S�bado';
  NoDia:=DayOfWeek(Data);
  DiaSemana:=DiaDasemana[NoDia];
end;


function HavePrinter: Boolean;
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

function FileCopy(source, dest: String): Boolean;
{ copia um arquivo de um lugar para outro. Retornando falso em caso de erro }
var
  fSrc, fDst, len: integer;
  size: Longint;
  buffer: packed array [0 .. 2047] of Byte;
begin
  if source <> dest then
  begin
    fSrc := FileOpen(source, fmOpenRead);
    if fSrc >= 0 then
    begin
      size := FileSeek(fSrc, 0, 2);
      FileSeek(fSrc, 0, 0);
      fDst := FileCreate(dest);
      if fDst >= 0 then
      begin
        while size > 0 do
        begin
          len := FileRead(fSrc, buffer, sizeof(buffer));
          FileWrite(fDst, buffer, len);
          size := size - len;
        end;
        FileSetDate(fDst, FileGetDate(fSrc));
        FileClose(fDst);
        FileSetAttr(dest, FileGetAttr(source));
        result := True;
      end
      else
      begin
        result := False;
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
    Rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 40, 40);
    Perform(EM_GETRECT, 0, lParam(@R));
    InflateRect(R, -30, -30);
    Perform(EM_SETRECTNP, 0, lParam(@R));
    SetWindowRgn(Handle, Rgn, True);
    Invalidate;
  end;
end;

procedure TfrmPdv.FormCreate(Sender: TObject);
begin
  // TMemo:
  // Memo1.BorderStyle := bsNone;
  // MakeRounded(Memo1);
  // TEdit:
  // Edit2.BorderStyle := bsNone;
  // MakeRounded(Edit2);
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
  MakeRounded(P_VENDEDOR_PDV);
  MakeRounded(P_VENDEDOR);
  MakeRounded(P_MENU);
  MakeRounded(P_ECONOMIA);

end;

procedure TfrmPdv.Timer1Timer(Sender: TObject);
begin
  L_DATA_HORA.Caption := DateToStr(StrToDate(FormatDateTime('DD/MM/YYYY', Date))
    ) + ' ' + TimeToStr(Time);
end;

procedure TfrmPdv.ValorAvista;
Var
 VlAvista, vlPdv, dESCONTO : Double;
begin

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT SUM(P.VL_VENDA*IP.QUANT) FROM TB_ITEM_PDV IP '+
                                ' JOIN TB_PDV PV ON (PV.NR_ORCAMENTO = IP.NR_ORCAMENTO) '+
                                ' JOIN TB_PRODUTO P ON (P.ID_PRODUTO = IP.ID_PRODUTO) '+
                                ' WHERE IP.NR_ORCAMENTO ='+DM.cdsPdvLocalNR_ORCAMENTO.AsString+
                                ' AND IP.STATUS =''V''';
  DM.cdsDinamica.Open;

  VlAvista := DM.cdsDinamica.Fields[0].AsFloat;
  vlPdv    := DM.cdsPdvLocalVL_ORCAMENTO.AsFloat;
  dESCONTO := (vlPdv-VlAvista);

  L_VLAVISTA.Caption := 'R$ '+FormatFloat('###,###0.00',VlAvista);
  L_ECONOMIA.Caption := 'R$ '+FormatFloat('###,###0.00',dESCONTO);

end;

function TfrmPdv.VersaoExe: String;
type
   PFFI = ^vs_FixedFileInfo;
var
   F       : PFFI;
   Handle  : Dword;
   Len     : Longint;
   Data    : Pchar;
   Buffer  : Pointer;
   Tamanho : Dword;
   Parquivo: Pchar;
   Arquivo : String;
begin
   Arquivo  := Application.ExeName;
   Parquivo := StrAlloc(Length(Arquivo) + 1);
   StrPcopy(Parquivo, Arquivo);
   Len := GetFileVersionInfoSize(Parquivo, Handle);
   Result := '';
   if Len > 0 then
   begin
      Data:=StrAlloc(Len+1);
      if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
      begin
         VerQueryValue(Data, '',Buffer,Tamanho);
         F := PFFI(Buffer);
         Result := Format('%d.%d.%d.%d',
                          [HiWord(F^.dwFileVersionMs),
                           LoWord(F^.dwFileVersionMs),
                           HiWord(F^.dwFileVersionLs),
                           Loword(F^.dwFileVersionLs)]
                         );
      end;
      StrDispose(Data);
   end;
   StrDispose(Parquivo);
end;

procedure TfrmPdv.FormShow(Sender: TObject);
begin
  NovoAcesso;
  Image2.Picture.LoadFromFile(LOGO);

  DM.cdsProduto.Close;
  DM.cdsProduto.Open;

  DM.cdsMovEstoque.Close;
  DM.cdsMovEstoque.Params[0].AsDate :=  Date;
  DM.cdsMovEstoque.Open;


  DM.cdsEstoqueProduto.Close;
  DM.cdsEstoqueProduto.Params[0].AsDate :=  Date;
  DM.cdsEstoqueProduto.Open;


  DM.cdsPdvLocal.Close;
  DM.cdsPdvLocal.Params[0].AsInteger := StrToInt(L_CAIXA.Caption);
  DM.cdsPdvLocal.Open;
  DM.cdsItemPdvLocal.Close;
  DM.cdsItemPdvLocal.Params[0].AsInteger :=
    DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
  DM.cdsItemPdvLocal.Params[1].AsInteger := DM.cdsPdvLocalID_LOJA.AsInteger;
  DM.cdsItemPdvLocal.Open;

  if DM.cdsItemPdvLocal.RecordCount > 0 then
    SomaQtdPecas
  else
    L_QTD_PECAS.Caption := '0';


  L_TOTAL_VENDA.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_ORCAMENTO.AsFloat);
  L_TOTAL_DESC_ENTRADA.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_DESCONTO.AsFloat);
  L_TOTAL_LIQUIDO.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_LIQUIDO.AsFloat);

  if DM.cdsPdvLocal.RecordCount > 0 then
    L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO'
  else
    L_SITUACAO_VENDA.Caption := 'Caixa Livre';

  if L_SITUACAO_VENDA.Caption = 'Caixa Livre' then
  begin
    edtProduto.Enabled := False;
  end;

  if L_SITUACAO_VENDA.Caption = 'ESPERANDO PAGAMENTO' then
  begin
    edtProduto.Enabled := False;
  end;

  if DM.cdsPdvLocalVL_ORCAMENTO.AsFloat > 0 then
     ValorAvista;

  frmPdv.SetFocus;
end;

procedure TfrmPdv.L_NOVA_VENDAClick(Sender: TObject);
begin
  DM.cdsProduto.Close;
  DM.cdsProduto.Open;
  if L_SITUACAO_VENDA.Caption = 'LAN�ANDO VENDA(S)' then
  begin
    Application.MessageBox
      ('Nova Venda n�o Permitida. Finalize a Venda em Andamento' + #13 +
      '           Para Come�ar uma nova venda.', 'Aten��o',
      MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if L_SITUACAO_VENDA.Caption = 'ESPERANDO PAGAMENTO' then
  begin
    Application.MessageBox
      ('Nova Venda n�o Permitida. Receba a Venda em Andamento' + #13 +
      '           Para Come�ar uma nova venda.', 'Aten��o',
      MB_OK + MB_ICONWARNING);
    Exit;
  end;
  L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';


  if L_SITUACAO_VENDA.Caption = 'LAN�ANDO VENDA(S)' then
  begin
    edtProduto.Enabled := True;
  end;


  DM.cdsPdvLocal.Close;
  DM.cdsPdvLocal.Params[0].AsInteger := StrToInt(L_CAIXA.Caption);
  DM.cdsPdvLocal.Open;

  DM.cdsPdvLocal.Insert;
  cdsVendedor.Close;
  cdsVendedor.Params[0].AsInteger := StrToInt(L_LOJA.Caption);
  cdsVendedor.Open;

  if Pesquisa(cdsVendedor, ['NOME', 'ID_VENDEDOR'], ['', ''], [30, 2], '', '0',
    '', 'Vendedor', 'Vendedor', 'Vendedor') then
  begin
    DM.cdsPdvLocalID_VENDEDOR.AsInteger := cdsVendedorID_VENDEDOR.AsInteger;
    DM.cdsPdvLocalNOME.Value := cdsVendedorNOME.Value;
  end;
  DM.cdsPdvLocalHR_ORCAMENTO.AsDateTime := Time;
  DM.cdsPdvLocalPERC_DESC.AsFloat := 0;
  DM.cdsPdvLocalCUPOM.Value := 'N';
  DBRadioGroup1.ItemIndex :=0;
  P_VLVENDA.Visible := True;
 // GravarVenda;
 // InsertItemVenda;
 // Item := 0;

//  DBRadioGroup1.SetFocus;
//  DBRadioGroup1.ItemIndex := 0;
end;

procedure TfrmPdv.InsertItemVenda;
begin
  DM.cdsItemPdvLocal.Open;
  DM.cdsItemPdvLocal.Append;
  { cdsDinamica.Close;
    cdsDinamica.IndexFieldNames :='';
    cdsDinamica.CommandText := 'SELECT MAX(ID_ITEM_PDV) FROM TB_ITEM_PDV';
    cdsDinamica.Open;
    DM.cdsItemPdvLocalID_ITEM_PDV.AsInteger := cdsDinamica.Fields[0].AsInteger+1; }
  DM.cdsItemPdvLocalNR_ORCAMENTO.AsInteger :=
    DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
  DM.cdsItemPdvLocalTRANSF.Value := 'N';
  if DM.cdsItemPdvLocalDESC_ITEM.IsNull then
    DM.cdsItemPdvLocalDESC_ITEM.AsFloat := 0;
  if DM.cdsItemPdvLocalPERC_DES.IsNull then
    DM.cdsItemPdvLocalPERC_DES.AsFloat := 0;
  //DBEdit2.SetFocus;
  edtProduto.Enabled := True;
  edtProduto.Clear;
  edtProduto.SetFocus;
end;

procedure TfrmPdv.DBEdit2Exit(Sender: TObject);
var
aux: integer;
quant: String;
codigo,CodigoPesado,codigoInterno: string;
convertQuantFloat : Double;
PrimeiraLetra,ProdutoPesado : string;
QuantPesado : Double;
Item    : Integer;
begin
{  if L_SITUACAO_VENDA.Caption = 'Caixa Livre' then
  begin
    DBEdit1.SetFocus;
    exit;
  end;
  if (DBEdit1.Text <> '') and (DBEdit2.Text = '') then
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
    if multi = True then
    begin
      aux := 0;
      aux := Pos('*',DBEdit2.Text);

      if aux <> 0 then
      begin
        aux := Pos('*',DBEdit2.Text);

        quant := Copy(DBEdit2.Text,1,aux-1);
        convertQuantFloat := StrToFloat(quant);
        if convertQuantFloat > 789 then
        begin
          ShowMessage('Quantidade N�o Permitida.');
          DBEdit2.Clear;
          DBEdit2.SetFocus;
          MULTI := False;
          Exit;
        end;
        codigo := Copy(DBEdit2.Text,aux+1,Length(DBEdit2.Text));
        codigoInterno := Copy(DBEdit2.Text,aux+1,Length(DBEdit2.Text));
      end;

    if DM.cdsProduto.Locate('COD_BARRA',DM.cdsItemPdvLocalCOD_BARRA.AsString, []) then
    begin
      DM.cdsItemPdvLocalCOD_BARRA.AsString := DM.cdsProdutoCOD_BARRA.AsString;
      DM.cdsItemPdvLocalID_PRODUTO.AsInteger :=
        DM.cdsProdutoID_PRODUTO.AsInteger;
      DM.cdsItemPdvLocalDESCRICAO.AsString := DM.cdsProdutoDESCRICAO.AsString;
      DM.cdsItemPdvLocalUNIDADE.AsString := DM.cdsProdutoUNIDADE.AsString;
      DM.cdsItemPdvLocalNCM_PRODUTO.AsString :=
        DM.cdsProdutoNCM_PRODUTO.AsString;

      if RadioGroup1.ItemIndex = 0 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat := DM.cdsProdutoVL_VENDA96.AsFloat;
      end;
      if RadioGroup1.ItemIndex = 1 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
      end;
      if RadioGroup1.ItemIndex = 2 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat :=
          DM.cdsProdutoVL_VENDA_PRAZO1.AsFloat;
      end;
      if RadioGroup1.ItemIndex = 3 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat :=
          DM.cdsProdutoVL_VENDA_PRAZO2.AsFloat;
      end;
      if RadioGroup1.ItemIndex = 4 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat :=
          DM.cdsProdutoVL_VENDA_PRAZO3.AsFloat;
      end;
      if DM.PRECONAVENDA = 'S' then
      begin
        frmDigitaPrecoVenda.ShowModal;
      end;

      DM.cdsItemPdvLocalNR_ORCAMENTO.AsInteger :=
        DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
      DM.cdsItemPdvLocalSTATUS.Value := 'V';
      DM.cdsItemPdvLocalID_LOJA.AsInteger := StrToInt(L_LOJA.Caption);
//      DM.cdsItemPdvLocalQUANT.AsFloat := 1;
      DM.cdsItemPdvlocalQUANT.AsFloat               := convertQuantFloat;


      DBEdit3.SetFocus; // desabilitar para n�o informar quantidade;

      if DM.cdsItemPdvLocalVL_UNIT.AsFloat = 0 then
      begin
        ShowMessage('Produto com Pre�o de Venda Zerado.');
        DBEdit2.SetFocus;
      end
      else
      begin
        // GravaRegistro; //habilitar para n�o informar quantidade;
      end;
    end
    else
    begin
      ShowMessage('          A T E N � � O  !!!!!!!!!   ' + #13 +
        '                                     ' + #13 +
        '   C�digo N�o Encontrado             ' + #13 +
        '                                     ');
      DBEdit2.SetFocus;
    end;
  end;
end; }
end;

procedure TfrmPdv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmPdv.SomaQtdPecas;
Var
  Sqtd : Integer;
begin
  //  ALVO DA MODA
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames :='';
  DM.cdsDinamica.CommandText := ' SELECT SUM(IP.QUANT) FROM TB_ITEM_PDV IP '+
                                ' WHERE IP.NR_ORCAMENTO =  '+DM.cdsPdvLocalNR_ORCAMENTO.AsString+
                                ' AND IP.STATUS = ''V'' ';
  DM.cdsDinamica.Open;

  Sqtd := DM.cdsDinamica.Fields[0].AsInteger ;

  L_QTD_PECAS.Caption := IntToStr(Sqtd);
end;

procedure TfrmPdv.SomaTotais;
begin
  cdsDinamica.Close;
  cdsDinamica.IndexFieldNames := '';
  cdsDinamica.CommandText := ' SELECT SUM(IP.VL_TOTAL), SUM(IP.DESC_ITEM),SUM(IP.VL_TOTAL_AV)' +
    ' FROM TB_ITEM_PDV IP ' + ' WHERE IP.NR_ORCAMENTO = ' +
    DM.cdsPdvLocalNR_ORCAMENTO.AsString + ' AND IP.STATUS =''V''';
  // COLOCAR LOJA TAMBEM
  cdsDinamica.Open;

  DM.cdsPdvLocal.Edit;
  // DM.cdsPdvLocalVL_LIQUIDO.AsFloat := cdsDinamica.Fields[0].AsFloat;
  // L_TOTAL_VENDA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvLocalVL_LIQUIDO.AsFloat);

  DM.cdsPdvLocalVL_ORCAMENTO.AsFloat := cdsDinamica.Fields[0].AsFloat;
  DM.cdsPdvLocalVL_DESCONTO.AsFloat  := cdsDinamica.Fields[1].AsFloat;
  DM.cdsPdvLocalVL_TOTAL_AV.AsFloat  := cdsDinamica.Fields[2].AsFloat;
  DM.cdsPdvLocalVL_LIQUIDO.AsFloat :=
    (DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_DESCONTO.AsFloat);
  L_TOTAL_VENDA.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_ORCAMENTO.AsFloat);
  L_TOTAL_DESC_ENTRADA.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_DESCONTO.AsFloat);
  L_TOTAL_LIQUIDO.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_LIQUIDO.AsFloat);
  DM.cdsPdvLocal.ApplyUpdates(0);

  SomaQtdPecas;

end;

procedure TfrmPdv.SpeedButton3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPdv.L_ENCERRAR_VENDAClick(Sender: TObject);
begin
  if not(DM.cdsItemPdvLocal.State in dsEditmodes) then
  begin
    if DM.cdsItemPdvLocal.RecordCount > 0 then
    begin
      frmPagamentoPdv.ShowModal;
      Exit;
    end
    else
    begin
      ShowMessage('N�o Exite Venda Para Encerra. Favor Verifique');
      Exit;
    end;
  end;
  SituacaoVenda := 'Encerrada';
  L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO';
  DM.cdsItemPdvLocal.Cancel;

   DM.cdsPdvLocal.Close;
   DM.cdsPdvLocal.Params[0].AsInteger := StrToInt(L_CAIXA.Caption);
   DM.cdsPdvLocal.Open;
   DM.cdsItemPdvLocal.Close;
   DM.cdsItemPdvLocal.Params[0].AsInteger := DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
   DM.cdsItemPdvLocal.Params[1].AsInteger := DM.cdsPdvLocalID_LOJA.AsInteger;
   DM.cdsItemPdvLocal.Open;

  DBEdit1.SetFocus;
  Exit;
  SituacaoVenda := '';
end;

procedure TfrmPdv.L_INCLUIR_ITEMClick(Sender: TObject);
begin
  if DM.cdsItemPdvLocal.State in dsEditmodes then
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
  if DM.cdsItemPdvLocal.State in dsEditmodes then
  begin
    ShowMessage('Favor Encerre a Venda para Fazer o Cancelamento.');
  end
  else
  begin
    if Application.MessageBox('Deseja Realmente Cancelar esta Venda?',
      'Confirma��o', MB_YESNO + MB_ICONQUESTION) = idyes then
    begin

      DM.cdsItemPdvLocal.Close;
      DM.cdsItemPdvLocal.Params[0].AsInteger :=
        DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
      DM.cdsItemPdvLocal.Params[1].AsInteger := DM.cdsPdvLocalID_LOJA.AsInteger;
      DM.cdsItemPdvLocal.Open;
      DM.cdsItemPdvLocal.DisableControls;
      while not DM.cdsItemPdvLocal.Eof do
      begin
        DM.cdsEstoqueProduto.Open;
        cdsDelItemEstoque.Params[0].AsDate :=
          DM.cdsPdvLocalDT_ORCAMENTO.AsDateTime;
        cdsDelItemEstoque.Params[1].AsInteger :=
          DM.cdsItemPdvLocalID_PRODUTO.AsInteger;
        cdsDelItemEstoque.Params[2].AsInteger :=
          DM.cdsPdvLocalID_LOJA.AsInteger;
        cdsDelItemEstoque.Params[3].AsFloat := DM.cdsItemPdvLocalQUANT.AsFloat;
        cdsDelItemEstoque.Execute;
        DM.cdsEstoqueProduto.ApplyUpdates(0);
        DM.cdsEstoqueProduto.Refresh;
        DM.cdsItemPdvLocal.Next;
      end;
      DM.cdsItemPdvLocal.EnableControls;

      cdsCancelaItem.Params[0].AsInteger :=
        DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
      cdsCancelaItem.Params[1].AsInteger := DM.cdsPdvLocalID_LOJA.AsInteger;
      cdsCancelaItem.Execute;
      //
        //cancela contas a receber.
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := 'DELETE FROM TB_CONTAS_RECEBER CR '+' WHERE CR.ID_PDV = '+DM.cdsPdvLocalID_PDV.AsString;
      DM.cdsDinamica.Execute;
      DM.cdsDinamica.Close;

      // grava estoque Movimentacao Geral
      DM.cdsMovEstoque.Open;
      DM.cdsInsertSaidaEstoque.Params[0].AsInteger := StrToInt(L_LOJA.Caption);
      DM.cdsInsertSaidaEstoque.Params[1].AsDate :=
        StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
      DM.cdsInsertSaidaEstoque.Params[2].AsDate :=
        StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
      DM.cdsInsertSaidaEstoque.Params[3].AsString := 'Vendas_L_' +
        L_LOJA.Caption;
      DM.cdsInsertSaidaEstoque.Execute;
      DM.cdsMovEstoque.ApplyUpdates(0);
      DM.cdsMovEstoque.Refresh;

      // grava estoque por produto
      DM.cdsEstoqueProduto.Open;
      DM.cdsInsertSaidaEstoqueProduto.Params[0].AsInteger :=
        StrToInt(L_LOJA.Caption);
      DM.cdsInsertSaidaEstoqueProduto.Params[1].AsDate :=
        StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
      DM.cdsInsertSaidaEstoqueProduto.Params[2].AsString := 'S';
      DM.cdsInsertSaidaEstoqueProduto.Execute;
      DM.cdsEstoqueProduto.ApplyUpdates(0);
      DM.cdsEstoqueProduto.Refresh;

      //

      if DM.cdsPdvLocal.ApplyUpdates(0) <> 0 then
      begin
        ShowMessage
          ('O Sistema N�o Conseguiu Cancelar Esta Venda. Tente Novamente ou Contate o Suporte.');
      end
      else
      begin
        DM.cdsPdvLocal.ApplyUpdates(0);
       // DM.cdsPdvLocal.Close;
        ShowMessage('Venda Cancelada com Sucesso.');
//        DM.cdsPdvLocal.Refresh;
          DM.cdsPdvLocal.Close;
          DM.cdsPdvLocal.Params[0].AsInteger := StrToInt(L_CAIXA.Caption);
          DM.cdsPdvLocal.Open;
          DM.cdsItemPdvLocal.Close;
          DM.cdsItemPdvLocal.Params[0].AsInteger :=
            DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
          DM.cdsItemPdvLocal.Params[1].AsInteger := DM.cdsPdvLocalID_LOJA.AsInteger;
          DM.cdsItemPdvLocal.Open;
          L_VLAVISTA.Caption := 'R$ 0,00';
          L_ECONOMIA.Caption := 'R$ 0,00';

        if DM.cdsItemPdvLocal.RecordCount > 0 then
        begin
          DM.cdsItemPdvLocal.Refresh;
          DM.cdsPdvLocal.Refresh;
        end;
        L_SITUACAO_VENDA.Caption := 'Caixa Livre';
        L_TOTAL_VENDA.Caption := 'R$ 0,00';
        L_TOTAL_DESC_ENTRADA.Caption := 'R$ 0,00';
        L_TOTAL_LIQUIDO.Caption := 'R$ 0,00';
        DBEdit1.SetFocus;
        SituacaoVenda := '';
        Exit;
      end;
{        if DM.cdsItemPdvLocal.RecordCount > 0 then
        begin
          DM.cdsItemPdvLocal.Refresh;
          DM.cdsPdvLocal.Refresh;
        end;
        L_SITUACAO_VENDA.Caption := 'Caixa Livre';
        L_TOTAL_VENDA.Caption := 'R$ 0,00';
        L_TOTAL_DESC_ENTRADA.Caption := 'R$ 0,00';
        L_TOTAL_LIQUIDO.Caption := 'R$ 0,00';
        DBEdit1.SetFocus;
        SituacaoVenda := '';
        Exit; }

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
{  if (Shift = [ssCtrl]) and (Key = 68) then
  begin
    ChamaDesconto;
  end;
  if Key = VK_DELETE then
  begin
    MULTI := False;
  end;

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
  end; }

end;

procedure TfrmPdv.PesquisaProduto;
begin
  if L_SITUACAO_VENDA.Caption = 'ESPERANDO PAGAMENTO' then
  begin
   ShowMessage('Situa��o da Venda Esperando Pagamento, ou F6+Item(s)');
   edtProduto.SetFocus;
   edtProduto.Clear;
   Exit;
  end;

  DM.cdsProduto.Open;
  if Pesquisa(DM.cdsProduto, ['DESCRICAO', 'COD_BARRA', 'VL_VENDA_PRAZO1'],
    ['Nome do Produto', 'C�d.Barra', 'Vl.Prazo'], [30, 13, 8], '', '', '', '',
    'Produto', 'Produto') then
  begin
    DM.cdsItemPdvLocalCOD_BARRA.AsString   := DM.cdsProdutoCOD_BARRA.AsString;
    DM.cdsItemPdvLocalID_PRODUTO.AsInteger := DM.cdsProdutoID_PRODUTO.AsInteger;
    DM.cdsItemPdvLocalDESCRICAO.AsString   := DM.cdsProdutoDESCRICAO.AsString;
    DM.cdsItemPdvLocalUNIDADE.AsString     := DM.cdsProdutoUNIDADE.AsString;
    DM.cdsItemPdvLocalVL_UNIT.AsFloat      := DM.cdsProdutoVL_VENDA_PRAZO1.AsFloat;
    DM.cdsItemPdvLocalVL_AVISTA.AsFloat    := DM.cdsProdutoVL_VENDA.AsFloat;

    edtProduto.Text                        := edtProduto.Text+DM.cdsProdutoCOD_BARRA.AsString;



 {   if DM.cdsPdvLocalMODALIDADE.AsInteger = 0 then
    begin
      DM.cdsItemPdvLocalVL_UNIT.AsFloat := DM.cdsProdutoVL_VENDA.AsFloat;
    end;

    if DM.cdsPdvLocalMODALIDADE.AsInteger = 1 then
    begin
      DM.cdsItemPdvLocalVL_UNIT.AsFloat := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
    end;

    if DM.cdsPdvLocalMODALIDADE.AsInteger = 2 then
    begin
      DM.cdsItemPdvLocalVL_UNIT.AsFloat := DM.cdsProdutoVL_VENDA_PRAZO1.AsFloat;
    end;

    if DM.cdsPdvLocalMODALIDADE.AsInteger = 3 then
    begin
      DM.cdsItemPdvLocalVL_UNIT.AsFloat := DM.cdsProdutoVL_VENDA_PRAZO2.AsFloat;
    end;

    if DM.cdsPdvLocalMODALIDADE.AsInteger = 4 then
    begin
      DM.cdsItemPdvLocalVL_UNIT.AsFloat := DM.cdsProdutoVL_VENDA_PRAZO3.AsFloat;
    end;}

   // edtProduto.Text                     := DM.cdsProdutoCOD_BARRA.AsString;
    DM.cdsItemPdvLocalSTATUS.Value := 'V';
    DM.cdsItemPdvLocalID_LOJA.AsInteger := StrToInt(L_LOJA.Caption);

    edtProdutoExit(Self);
  end;
end;

procedure TfrmPdv.PesquisaProduto2;
begin
  DM.cdsProduto.Open;
  if Pesquisa(DM.cdsProduto, ['COD_BARRA','DESCRICAO', 'VL_VENDA_PRAZO1'],
    ['C�d.Barra','Nome do Produto', 'Valor'], [13,30, 8], '', '', '', '',
    'Produto', 'Produto') then
  begin
     L_CODIGO.Caption  := DM.cdsProdutoCOD_BARRA.AsString;
     L_PRODUTO.Caption := DM.cdsProdutoDESCRICAO.AsString;
     L_VALOR.Caption   := FormatFloat('###,###0.00',DM.cdsProdutoVL_VENDA_PRAZO1.AsFloat);
     Edit1.SetFocus;
  end;

end;

procedure TfrmPdv.NovoAcesso;
Var
  Loja: String;
  nomeLoja: String;
  grupo: String;
  CAIXA: String;
begin
  bSenha := False;
  Application.CreateForm(TfrmSenha, frmSenha);
  frmSenha.ShowModal;
  Loja := recInformacoes.lojaCredenciada;
  ChecaUsuario(recInformacoes.nivel);
  if Loja <> '' then
  begin
    DM.cdsTabelaLoja.Close;
    DM.cdsTabelaLoja.CommandText :=
      'SELECT L.ID_LOJA,L.COD_MUNICIPIO,L.R_SOCIAL,L.FANTASIA,M.NOME_MUNICIPIO,M.UF_MUNICIPIO,L.ID_GRUPO_LOJA FROM TB_LOJAS L '
      + 'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.COD_MUNICIPIO = L.COD_MUNICIPIO) '
      + 'WHERE L.ID_LOJA = ' + Loja;
    DM.cdsTabelaLoja.Open;
    PMENU.Caption :='                    '+DM.cdsTabelaLoja.Fields[4].AsString+'-'+DM.cdsTabelaLoja.Fields[5].AsString+'                    '+DiaSemana(StrToDate(DateToStr(Date)))+'                        '+DateToStr(Date);
    L_INFORMACOES.Caption :='Informa��es do Sistema : PromptPdv Vers�o '+VersaoExe;
    nomeLoja := DM.cdsTabelaLoja.Fields[3].AsString;
    grupo := DM.cdsTabelaLoja.Fields[6].AsString;
    L_LOJA.Caption := Loja;
    L_NOME_LOJA.Caption := nomeLoja;
    L_ID_GRUPO.Caption := grupo;
    L_USUARIO.Caption := recInformacoes.login;
    L_CAIXA.Caption := DM.CAIXA_LOJA;
    CaminhoImpressora := DM.IMPRESSORA;
    LOGO              := DM.LOGO;
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames := '';
    DM.cdsDinamica.CommandText :=
      ' SELECT L.ID_GRUPO_LOJA,GL.NOME_GRUPO,L.FANTASIA FROM TB_LOJAS L ' +
      ' LEFT OUTER JOIN TB_GRUPO_LOJA GL ON (GL.ID_GRUPO_LOJA = L.ID_GRUPO_LOJA) '
      + ' WHERE L.ID_LOJA = ' + Loja;
    DM.cdsDinamica.Open;
    recInformacoes.GrupoLoja := DM.cdsDinamica.Fields[0].AsInteger;
    recInformacoes.NomeGrupo := DM.cdsDinamica.Fields[1].AsString;

    // StatusBar1.Panels.Items[1].Text := DM.cdsDinamica.Fields[2].AsString;;
    // frmPrincipal.Caption := 'SFC - Sistema de Faturamento Comercial';
    // StatusBar1.Panels.Items[2].Text := 'Loja Credenciada '+' '+Loja;
    // StatusBar1.Panels.Items[3].Text := 'Usu�rio Logado   '+' '+recInformacoes.login+' ';

  end
  else
  begin
    Application.MessageBox('Usu�rio sem Loja Definida. Favor Definir uma Loja',
      'Aten��o', MB_OK + MB_ICONWARNING);
    Application.Terminate;
  end;
  DM.cdsTabelaLoja.Close;
  DM.cdsTabelaLoja.IndexFieldNames := '';
end;

procedure TfrmPdv.ChamaDesconto;
begin
  if L_SITUACAO_VENDA.Caption = 'LAN�ANDO VENDA(S)' then
  begin
  //    Application.MessageBox
  //      ('N�o � Permitido Realizar Desconto Com a Venda em Aberto.' + #13 +
  //      '   (F4-Para Pausar a Venda Para Realizar o Desconto).', 'Aten��o',
  //      MB_OK + MB_ICONWARNING);
  //    Exit;
    L_ENCERRAR_VENDAClick(Self);
    frmDesconto.ShowModal;
  end;

  if L_SITUACAO_VENDA.Caption = 'Caixa Livre' then
  begin
    Application.MessageBox('N�o Existe Venda Aberta Para Realizar Desconto.',
      'Aten��o', MB_OK + MB_ICONWARNING);
    Exit;
  end;

//  if L_SITUACAO_VENDA.Caption = 'ESPERANDO PAGAMENTO' then
//  begin
//    frmDesconto.ShowModal;
//  end;

end;

procedure TfrmPdv.ChecaUsuario(nivel: integer);
begin
  //
end;

procedure TfrmPdv.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  L_TOTAL_VENDA.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_ORCAMENTO.AsFloat);
  L_TOTAL_DESC_ENTRADA.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_DESCONTO.AsFloat);
  L_TOTAL_LIQUIDO.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_LIQUIDO.AsFloat);

end;

procedure TfrmPdv.DBNavigator1DblClick(Sender: TObject);
begin
  L_TOTAL_VENDA.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_ORCAMENTO.AsFloat);
  L_TOTAL_DESC_ENTRADA.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_DESCONTO.AsFloat);
  L_TOTAL_LIQUIDO.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_LIQUIDO.AsFloat);

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
    Application.MessageBox
      ('    Impossiv�l Excluir Iten(s) com a Venda em Andamento' + #13 +
      'Por Favor Encerre a Venda e Selecione o Item que deseja Excluir',
      'Aten��o', MB_OK + MB_ICONWARNING);
    Exit;
  end
  else
  begin
    if Application.MessageBox('Deseja Realmente Excluir Este Item?',
      'Confirma��o', MB_YESNO + MB_ICONQUESTION) = idyes then
    begin
      if DM.cdsItemPdvLocal.ApplyUpdates(0) <> 0 then
      begin
        ShowMessage
          ('O Sistema N�o Conseguiu Cancelar Esta Venda. Tente Novamente ou Contate o Suporte.');
      end
      else
      begin
        DM.cdsEstoqueProduto.Open;
        cdsDelItemEstoque.Params[0].AsDate :=
          DM.cdsPdvLocalDT_ORCAMENTO.AsDateTime;
        cdsDelItemEstoque.Params[1].AsInteger :=
          DM.cdsItemPdvLocalID_PRODUTO.AsInteger;
        cdsDelItemEstoque.Params[2].AsInteger :=
          DM.cdsPdvLocalID_LOJA.AsInteger;
        cdsDelItemEstoque.Params[3].AsFloat := DM.cdsItemPdvLocalQUANT.AsFloat;
        cdsDelItemEstoque.Execute;
        DM.cdsEstoqueProduto.ApplyUpdates(0);
        DM.cdsEstoqueProduto.Refresh;

        DM.cdsItemPdvLocal.Edit;
        DM.cdsItemPdvLocalSTATUS.Value := 'C';
        DM.cdsItemPdvLocal.ApplyUpdates(0);
        DM.cdsPdvLocal.Refresh;
        DM.cdsItemPdvLocal.Refresh;
        SomaTotais;
        //
        // grava estoque Movimentacao Geral
        DM.cdsMovEstoque.Open;
        DM.cdsInsertSaidaEstoque.Params[0].AsInteger :=
          StrToInt(L_LOJA.Caption);
        DM.cdsInsertSaidaEstoque.Params[1].AsDate :=
          StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
        DM.cdsInsertSaidaEstoque.Params[2].AsDate :=
          StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
        DM.cdsInsertSaidaEstoque.Params[3].AsString := 'Vendas_L_' +
          L_LOJA.Caption;
        DM.cdsInsertSaidaEstoque.Execute;

        DM.cdsMovEstoque.ApplyUpdates(0);
        DM.cdsMovEstoque.Refresh;

        { //grava estoque por produto
          DM.cdsEstoqueProduto.Open;
          DM.cdsInsertSaidaEstoqueProduto.Params[0].AsInteger := StrToInt(L_LOJA.Caption);
          DM.cdsInsertSaidaEstoqueProduto.Params[1].AsDate    := StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
          DM.cdsInsertSaidaEstoqueProduto.Params[2].AsString  := 'S';
          DM.cdsInsertSaidaEstoqueProduto.Execute;
          DM.cdsEstoqueProduto.ApplyUpdates(0);
          DM.cdsEstoqueProduto.Refresh;

          DM.cdsPdvLocal.ApplyUpdates(0);
          DM.cdsPdvLocal.Refresh; }
        //
        DM.cdsItemPdvLocal.Close;
        DM.cdsItemPdvLocal.Params[0].AsInteger :=
          DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
        DM.cdsItemPdvLocal.Params[1].AsInteger :=
          DM.cdsPdvLocalID_LOJA.AsInteger;
        DM.cdsItemPdvLocal.Open;
        Application.MessageBox('Item Excluido Com Sucesso.', 'Aten��o', MB_OK);
      end;
    end
    else
    begin
      Application.MessageBox('Exclus�o do Item Cancelada.', 'Aten��o', MB_OK);
    end;
  end;
  ValorAvista;
  DBGrid1.SetFocus;
end;

procedure TfrmPdv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
  if (Shift = [ssCtrl]) and (Key = 68) then
  begin
    ChamaDesconto;
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
//    L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO';
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
//    ShowMessage('Pressione "ENTER" Pare Receber Venda.');
//    L_INCLUIR_ITEMClick(Self);
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
  if Key = Vk_f12 then
  begin
    P_CONSULTA_PRODUTO.Visible := True;
    Edit1.SetFocus;
  end;

end;

procedure TfrmPdv.L_PAGAMENTOClick(Sender: TObject);
begin
  L_ENCERRAR_VENDAClick(Self);
  if DM.cdsItemPdvLocal.State in dsEditmodes then
  begin
    ShowMessage('Encerre a Venda Para Efetuar o Recebimento.');
    if DM.cdsPdvLocal.RecordCount > 0 then
    begin
      L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';
      SituacaoVenda := '';
      DBEdit1.SetFocus;
      Exit;
    end;
  end;
  if (DM.cdsPdvLocalVL_LIQUIDO.AsFloat = 0 ) and (L_SITUACAO_VENDA.Caption <> 'Caixa Livre') then
  begin
    ShowMessage('Impossiv�l Receber Esta Venda. O Valor da Venda Esta Zerado.');
    if DM.cdsPdvLocal.RecordCount > 0 then
    begin
      L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';
      SituacaoVenda := '';
      DBEdit1.SetFocus;
      InsertItemVenda;
    end;
  end;
  if DM.cdsPdvLocalVL_LIQUIDO.AsFloat > 0 then
  begin
    /// P_RECEBIMENTO.Visible := True;
    /// edtValorPago.SetFocus;
    frmPagamentoPdv.ShowModal;
    // BB_CONFIRMA.SetFocus;
  end;
end;

procedure TfrmPdv.L_TROCAR_USUARIOClick(Sender: TObject);
begin
  if L_SITUACAO_VENDA.Caption <> 'Caixa Livre' then
  begin
    Application.MessageBox('Favor Encerre a Venda Para Trocar de Usu�rio.',
      'Aten��o', MB_OK);
  end
  else
  begin
    NovoAcesso;
  end;
end;

procedure TfrmPdv.Edit1Exit(Sender: TObject);
begin
    if Edit1.Text <>'' then
    begin
      DM.cdsProduto.Close;
      DM.cdsProduto.Open;
      if DM.cdsProduto.Locate('COD_BARRA',Edit1.Text, []) then
      begin
         L_CODIGO.Caption  := DM.cdsProdutoCOD_BARRA.AsString;
         L_PRODUTO.Caption := DM.cdsProdutoDESCRICAO.AsString;
         L_VALOR.Caption   := FormatFloat('###,###0.00',DM.cdsProdutoVL_VENDA_PRAZO1.AsFloat);
         Edit1.SetFocus;
         Edit1.Clear;
      end
      else
      begin
        DM.cdsProduto.Close;
        ShowMessage('          A T E N � � O  !!!!!!!!!   ' + #13 +
          '                                     ' + #13 +
          '   C�digo N�o Encontrado             ' + #13 +
          '                                     ');
         L_CODIGO.Caption  := '.';
         L_PRODUTO.Caption := '.';
         L_VALOR.Caption   := '.';

          Edit1.Clear;
          Edit1.SetFocus;
      end;
    end;

end;

procedure TfrmPdv.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_f1 then
  begin
    PesquisaProduto2;
  end;
  if Key = 27 then
  begin
    //Edit1Exit(Self);
    P_CONSULTA_PRODUTO.Visible := False;
    L_CODIGO.Caption  := 'C�DIGO    : ';
    L_PRODUTO.Caption := 'PRODUTO   : ';
    L_VALOR.Caption   := 'VALOR R$  : ';
    Edit1.Clear;
    Edit1.Clear;
    DM.cdsProduto.Close;
    DBEdit1.SetFocus;
  end;

end;

procedure TfrmPdv.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmPdv.edtProdutoExit(Sender: TObject);
var
aux: integer;
quant: String;
codigo,CodigoPesado,codigoInterno: string;
convertQuantFloat : Double;
PrimeiraLetra,ProdutoPesado : string;
QuantPesado : Double;
Item    : Integer;
begin
  if L_SITUACAO_VENDA.Caption = 'Caixa Livre' then
  begin
    DBEdit1.SetFocus;
    exit;
  end;
  if (L_SITUACAO_VENDA.Caption = 'ESPERANDO PAGAMENTO)') and (edtProduto.Text = '') then
  begin
   DBEdit1.SetFocus;
   Exit;
  end;

  if (L_SITUACAO_VENDA.Caption = 'LAN�ANDO VENDA(S)') and (edtProduto.Text = '') then
  begin
    ShowMessage('Campo C�digo Produto N�o Pode Ser Vazio Com e Venda Em Aberto.');
    edtProduto.SetFocus;
    Exit;
  end;
  if (L_SITUACAO_VENDA.Caption = 'LAN�ANDO VENDA(S)') and (edtProduto.Text = '') then
  begin
    ShowMessage('Favor Informar o C�digo do Produto');
    edtProduto.SetFocus;
    Exit;
  end;
  if SituacaoVenda = 'Encerrada' then
  begin
    Exit;
  end
  else
  begin
    if multi = True then
    begin
      aux := 0;
      aux := Pos('*',edtProduto.Text);

      if aux <> 0 then
      begin
        aux := Pos('*',edtProduto.Text);

        quant := Copy(edtProduto.Text,1,aux-1);
        convertQuantFloat := StrToFloat(quant);
        if convertQuantFloat = 0 then
        begin
          quant := '1';
          convertQuantFloat := StrToFloat(quant);
        end;
        if convertQuantFloat > 789 then
        begin
          ShowMessage('Quantidade N�o Permitida.');
          edtProduto.Clear;
          edtProduto.SetFocus;
          MULTI := False;
          Exit;
        end;
        codigo := Copy(edtProduto.Text,aux+1,Length(edtProduto.Text));
        codigoInterno := Copy(edtProduto.Text,aux+1,Length(edtProduto.Text));
      end
      else
      begin
        codigo := edtProduto.Text;
        if convertQuantFloat = 0 then
        begin
          quant := '1';
          convertQuantFloat := StrToFloat(quant);
        end;

      end;


    if DM.cdsProduto.Locate('COD_BARRA',codigo, []) then
    begin
      DM.cdsItemPdvLocalCOD_BARRA.AsString := DM.cdsProdutoCOD_BARRA.AsString;
      DM.cdsItemPdvLocalID_PRODUTO.AsInteger :=
        DM.cdsProdutoID_PRODUTO.AsInteger;
      DM.cdsItemPdvLocalDESCRICAO.AsString := DM.cdsProdutoDESCRICAO.AsString;
      DM.cdsItemPdvLocalUNIDADE.AsString := DM.cdsProdutoUNIDADE.AsString;
      DM.cdsItemPdvLocalNCM_PRODUTO.AsString :=
        DM.cdsProdutoNCM_PRODUTO.AsString;
     DM.cdsItemPdvLocalVL_UNIT.AsFloat   := DM.cdsProdutoVL_VENDA_PRAZO1.AsFloat;
     DM.cdsItemPdvLocalVL_AVISTA.AsFloat := DM.cdsProdutoVL_VENDA.AsFloat;

      if DBRadioGroup1.ItemIndex = 0 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat := DM.cdsProdutoVL_VENDA.AsFloat;
      end;
      if DBRadioGroup1.ItemIndex = 1 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
      end;
      if DBRadioGroup1.ItemIndex = 2 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat :=
          DM.cdsProdutoVL_VENDA_PRAZO1.AsFloat;
      end;
      if DBRadioGroup1.ItemIndex = 3 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat :=
          DM.cdsProdutoVL_VENDA_PRAZO2.AsFloat;
      end;
      if DBRadioGroup1.ItemIndex = 4 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat :=
          DM.cdsProdutoVL_VENDA_PRAZO3.AsFloat;
      end;


{      if DM.PRECONAVENDA = 'S' then
      begin
        frmDigitaPrecoVenda.ShowModal;
      end;
 }
      DM.cdsItemPdvLocalNR_ORCAMENTO.AsInteger :=
        DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
      DM.cdsItemPdvLocalSTATUS.Value := 'V';
      DM.cdsItemPdvLocalID_LOJA.AsInteger := StrToInt(L_LOJA.Caption);
//      DM.cdsItemPdvLocalQUANT.AsFloat := 1;
      DM.cdsItemPdvlocalQUANT.AsFloat               := convertQuantFloat;
      DM.cdsItemPdvLocalCOD_BARRA.AsString          := DM.cdsProdutoCOD_BARRA.AsString;

      if DM.PRECONAVENDA = 'S' then
      begin
        frmDigitaPrecoVenda.ShowModal;
      end;


      //DBEdit3.SetFocus; // desabilitar para n�o informar quantidade;

      if DM.cdsItemPdvLocalVL_UNIT.AsFloat = 0 then
      begin
        ShowMessage('Produto com Pre�o de Venda Zerado.');
        edtProduto.SetFocus;
      end
      else
      begin
         GravaRegistro; //habilitar para n�o informar quantidade;
//         MULTI := False;
      end;
    end
    else
    begin
      ShowMessage('          A T E N � � O  !!!!!!!!!   ' + #13 +
        '                                     ' + #13 +
        '   C�digo N�o Encontrado             ' + #13 +
        '                                     ');
      edtProduto.SetFocus;
    end;
  end;
end;

    if multi = false then
    begin
      if DM.cdsProduto.Locate('COD_BARRA',edtProduto.Text, []) then
      begin
        DM.cdsItemPdvLocalCOD_BARRA.AsString := DM.cdsProdutoCOD_BARRA.AsString;
        DM.cdsItemPdvLocalID_PRODUTO.AsInteger :=
          DM.cdsProdutoID_PRODUTO.AsInteger;
        DM.cdsItemPdvLocalDESCRICAO.AsString := DM.cdsProdutoDESCRICAO.AsString;
        DM.cdsItemPdvLocalUNIDADE.AsString := DM.cdsProdutoUNIDADE.AsString;
        DM.cdsItemPdvLocalNCM_PRODUTO.AsString :=
          DM.cdsProdutoNCM_PRODUTO.AsString;
        DM.cdsItemPdvLocalVL_UNIT.AsFloat   := DM.cdsProdutoVL_VENDA_PRAZO1.AsFloat;
        DM.cdsItemPdvLocalVL_AVISTA.AsFloat := DM.cdsProdutoVL_VENDA.AsFloat;

      if DBRadioGroup1.ItemIndex = 0 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat := DM.cdsProdutoVL_VENDA.AsFloat;
      end;
      if DBRadioGroup1.ItemIndex = 1 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
      end;
      if DBRadioGroup1.ItemIndex = 2 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat :=
          DM.cdsProdutoVL_VENDA_PRAZO1.AsFloat;
      end;
      if DBRadioGroup1.ItemIndex = 3 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat :=
          DM.cdsProdutoVL_VENDA_PRAZO2.AsFloat;
      end;
      if DBRadioGroup1.ItemIndex = 4 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat :=
          DM.cdsProdutoVL_VENDA_PRAZO3.AsFloat;
      end;


 {       if DM.PRECONAVENDA = 'S' then
        begin
          frmDigitaPrecoVenda.ShowModal;
        end;
  }
        DM.cdsItemPdvLocalNR_ORCAMENTO.AsInteger :=
          DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
        DM.cdsItemPdvLocalSTATUS.Value := 'V';
        DM.cdsItemPdvLocalID_LOJA.AsInteger := StrToInt(L_LOJA.Caption);
        DM.cdsItemPdvLocalQUANT.AsFloat := 1;
        DM.cdsItemPdvLocalCOD_BARRA.AsString          := DM.cdsProdutoCOD_BARRA.AsString;
       ///-- DM.cdsItemPdvLocalVL_UNIT.AsFloat   := DM.cdsProdutoVL_VENDA_PRAZO1.AsFloat;
        DM.cdsItemPdvLocalVL_AVISTA.AsFloat := DM.cdsProdutoVL_VENDA.AsFloat;
        if DM.PRECONAVENDA = 'S' then
        begin
          frmDigitaPrecoVenda.ShowModal;
        end;


      if DBRadioGroup1.ItemIndex = 0 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat := DM.cdsProdutoVL_VENDA.AsFloat;
      end;
      if DBRadioGroup1.ItemIndex = 1 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
      end;
      if DBRadioGroup1.ItemIndex = 2 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat :=
          DM.cdsProdutoVL_VENDA_PRAZO1.AsFloat;
      end;
      if DBRadioGroup1.ItemIndex = 3 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat :=
          DM.cdsProdutoVL_VENDA_PRAZO2.AsFloat;
      end;
      if DBRadioGroup1.ItemIndex = 4 then
      begin
        DM.cdsItemPdvLocalVL_UNIT.AsFloat :=
          DM.cdsProdutoVL_VENDA_PRAZO3.AsFloat;
      end;

        //DBEdit3.SetFocus; // desabilitar para n�o informar quantidade;

        if DM.cdsItemPdvLocalVL_UNIT.AsFloat = 0 then
        begin
          ShowMessage('Produto com Pre�o de Venda Zerado.');
          edtProduto.SetFocus;
        end
        else
        begin
           GravaRegistro; //habilitar para n�o informar quantidade;
//           MULTI := False;
        end;
      end
      else
      begin
        ShowMessage('          A T E N � � O  !!!!!!!!!   ' + #13 +
          '                                     ' + #13 +
          '   C�digo N�o Encontrado             ' + #13 +
          '                                     ');
        edtProduto.SetFocus;
      end;
    end
    else
    begin
      MULTI := False;
    end;
end;

procedure TfrmPdv.edtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 68) then
  begin
    ChamaDesconto;
  end;
  if Key = 13 then
  begin
    MULTI := True;
  end;

  if Key = VK_DELETE then
  begin
    MULTI := False;
  end;

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
    L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO';
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
  if KEY = VK_RETURN then
  begin
    MULTI := True;
  end;

end;

procedure TfrmPdv.edtProdutoKeyPress(Sender: TObject; var Key: Char);
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
  if key = #8 then
  begin
    MULTI := False;
  end;
  if key = #46 then
  begin
    MULTI := False;
  end;
  if key = #32 then
  begin
    MULTI := False;
  end;
  if key = '' then
  begin
    MULTI := False;
  end;

if key in ['*','x','X'] then
begin
  if Length(edtProduto.Text) <=0 then
  begin
    key := #0;
    exit;
  end;

  if multi = False then
    multi := True
  else
  begin
    key := #0;
    exit;
  end;
end;
if not (key in ['-','0'..'9',#8,'*',',','.','X','x','a'..'z','A'..'Z',' ']) then
key := #0;


end;

procedure TfrmPdv.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
{  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    PesquisaProduto;
  end;
  if key = #8 then
  begin
    MULTI := False;
  end;
  if key = #46 then
  begin
    MULTI := False;
  end;
  if key = #32 then
  begin
    MULTI := False;
  end;
  if key = '' then
  begin
    MULTI := False;
  end;

if key in ['*','x','X'] then
begin
  if Length(DBEdit2.Text) <=0 then
  begin
    key := #0;
    exit;
  end;

  if multi = False then
    multi := True
  else
  begin
    key := #0;
    exit;
  end;
end;
if not (key in ['-','0'..'9',#8,'*',',','.','X','x','a'..'z','A'..'Z',' ']) then
key := #0; }

end;

procedure TfrmPdv.L_OPCOESClick(Sender: TObject);
begin
{  if DM.cdsItemPdvLocal.State in dsEditmodes then
  begin
    ShowMessage('Encerre a Venda Para Efetuar o Resumo.');
  end
  else
  begin
    cdsResumoVendas.Close;
    cdsResumoVendas.Params[0].AsDate := StrToDate(DateToStr(Date));
    cdsResumoVendas.Params[1].AsInteger := recInformacoes.id_Usuario;
    cdsResumoVendas.Params[2].AsDate := StrToDate(DateToStr(Date));
    cdsResumoVendas.Params[3].AsInteger := recInformacoes.id_Usuario;
    cdsResumoVendas.Params[4].AsDate := StrToDate(DateToStr(Date));
    cdsResumoVendas.Params[5].AsInteger := recInformacoes.id_Usuario;
    cdsResumoVendas.Params[6].AsDate := StrToDate(DateToStr(Date));
    cdsResumoVendas.Params[7].AsInteger := StrToInt(L_CAIXA.Caption);
    cdsResumoVendas.Params[8].AsInteger := recInformacoes.id_Usuario;
    cdsResumoVendas.Open;

    if cdsResumoVendas.IsEmpty then
    begin
      ShowMessage('Nenhum Registro Encontrado no momento.');
    end
    else
    begin
      // cdsVendasVendedor.Close;
      // cdsVendasVendedor.Params[0].AsDate := StrToDate(DateToStr(Date));
      // cdsVendasVendedor.Open;
      //
      // P_RESUMO.Visible := True;
      // P_RESUMO.ActivePage := TabSheet1;
      //
      // DM.cdsDinamica.Close;
      // DM.cdsDinamica.IndexFieldNames:='';
      // DM.cdsDinamica.CommandText := ' select sum(p.VL_LIQUIDO) from tb_pdv p ' +
      // ' JOIN TB_VENDEDOR v on (v.ID_VENDEDOR = p.ID_VENDEDOR)' +
      // ' and p.DT_ORCAMENTO = ' +QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(DateToStr(Date))))+
      // ' AND P.STATUS = ''F''';
      // DM.cdsDinamica.Open;
      // L_TOTAL_GERAL.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
      // L_RESUMO_CAIXA.Caption := 'Resumo do Caixa '+'('+L_CAIXA.Caption+')'+' '+L_USUARIO.Caption;
      //
      // cdsTroca.Close;
      // cdsTroca.Params[0].AsInteger := StrToInt(L_CAIXA.Caption);
      // cdsTroca.Params[1].AsDate    := StrToDate(DateToStr(Date));
      // cdsTroca.Open;
      //
      // DM.cdsDinamica.Close;
      // DM.cdsDinamica.IndexFieldNames:='';
      // DM.cdsDinamica.CommandText := ' SELECT SUM(IP.quant), ' +
      // '  ( SELECT SUM(IP.quant) FROM tb_item_pdv IP' +
      // '     JOIN tb_pdv P ON (P.nr_orcamento = IP.nr_orcamento) WHERE IP.status =''D'''+
      // '    AND P.dt_orcamento =' +QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(DateToStr(Date))))+'),'+
      // '  ( SELECT SUM(P.vl_liquido) FROM tb_pdv P'+
      // '      WHERE P.status =''D'' AND P.dt_orcamento = '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(DateToStr(Date))))+')'+
      // ' FROM tb_item_pdv IP JOIN tb_pdv P ON (P.nr_orcamento = IP.nr_orcamento) '+
      // ' WHERE IP.status =''L'' AND P.dt_orcamento = '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(DateToStr(Date))));
      // DM.cdsDinamica.Open;
      //
      // L_QT_LEV.Caption := IntToStr(DM.cdsDinamica.Fields[0].AsInteger);
      // L_QTDEV.Caption  := IntToStr(DM.cdsDinamica.Fields[1].AsInteger);
      // L_TOT_TROCA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsDinamica.Fields[2].AsFloat);
      // DM.cdsDinamica.Close;
      //
      //
      //
      // cdsEspecie.Close;
      // cdsEspecie.Params[0].AsDate    := StrToDate(DateToStr(Date));
      // cdsEspecie.Open;
      //
      // L_TOTAL_GERAL1.Caption := L_TOTAL_GERAL.Caption;
      //
      // cdsTotalPecas.Close;
      // cdsTotalPecas.Params[0].AsInteger := StrToInt(L_LOJA.Caption);
      // cdsTotalPecas.Params[1].AsDate    := StrToDate(DateToStr(Date));
      // cdsTotalPecas.Params[2].AsDate    := StrToDate(DateToStr(Date));
      // cdsTotalPecas.Open;
      if frmFechamentoCaixa = nil then
      begin
        frmFechamentoCaixa := TfrmFechamentoCaixa.Create(Application);
        frmFechamentoCaixa.ShowModal;
      end;
    end;
  end; }
  if DM.cdsItemPdvLocal.State in dsEditmodes then
  begin
    ShowMessage('Encerre a Venda Para Efetuar o Resumo.');
  end
  else
  begin
    if frmMenuCaixa = nil then
    begin
      frmMenuCaixa := TfrmMenuCaixa.Create(Application);
      frmMenuCaixa.ShowModal;
    end;
  end;

end;

procedure TfrmPdv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.cdsItemPdvLocal.State in [dsEdit, dsInsert] then
  begin
    ShowMessage('Favor Encerre a Venda Para Sair Do PDV');
    Abort;
  end;
end;

procedure TfrmPdv.CopyFile(const sourcefilename, targetfilename: String);
Var
  S, T: TFileStream;
Begin
  S := TFileStream.Create(sourcefilename, fmOpenRead);
  try
    T := TFileStream.Create(targetfilename, fmOpenWrite or fmCreate);
    try
      T.CopyFrom(S, S.size);
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
    DM.cdsItemPdvLocalVL_TOTAL.AsFloat := DM.cdsItemPdvLocalQUANT.AsInteger *
      DM.cdsItemPdvLocalVL_UNIT.AsFloat;
    DM.cdsItemPdvLocalVL_TOTAL_AV.AsFloat := DM.cdsItemPdvLocalQUANT.AsInteger *
      DM.cdsItemPdvLocalVL_AVISTA.AsFloat;

  end;
    DM.cdsItemPdvLocalDESC_ITEM.AsFloat := (DM.cdsItemPdvLocalDESC_ITEM.AsFloat)*(DM.cdsItemPdvLocalQUANT.AsFloat);

  if DM.cdsItemPdvLocal.ApplyUpdates(0) <> 0 then
  begin
    ShowMessage
      ('O Sistema N�o Conseguiu Salvar Esta Informa��o. Tente Novamente ou Contate o Suporte.');
  end
  else
  begin
    // grava estoque Movimentacao Geral
///    DM.cdsMovEstoque.Open;
    DM.cdsInsertSaidaEstoque.Params[0].AsInteger := StrToInt(L_LOJA.Caption);
    DM.cdsInsertSaidaEstoque.Params[1].AsDate :=
      StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
    DM.cdsInsertSaidaEstoque.Params[2].AsDate :=
      StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
    DM.cdsInsertSaidaEstoque.Params[3].AsString := 'Vendas_L_' + L_LOJA.Caption;
    DM.cdsInsertSaidaEstoque.Execute;

    DM.cdsMovEstoque.ApplyUpdates(0);
    DM.cdsMovEstoque.Refresh;

    // grava estoque por produto
///    DM.cdsEstoqueProduto.Open;
    DM.cdsInsertSaidaEstoqueProduto.Params[0].AsInteger :=
      StrToInt(L_LOJA.Caption);
    DM.cdsInsertSaidaEstoqueProduto.Params[1].AsDate :=
      StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
    DM.cdsInsertSaidaEstoqueProduto.Params[2].AsString := 'S';
    DM.cdsInsertSaidaEstoqueProduto.Execute;
    DM.cdsEstoqueProduto.ApplyUpdates(0);
    DM.cdsEstoqueProduto.Refresh;
    edtProduto.Clear;

    SomaTotais;
    DM.cdsItemPdvLocal.ApplyUpdates(0);
    InsertItemVenda;
  end;

//  MULTI := False;
  ValorAvista;
end;

procedure TfrmPdv.ImprimirTermica;
var
  Arquivo: TextFile;
  iCount, iCount2,iCount4, iProdutos, iQuantas,iQuantasPag,iPagamentos, iVezes, iPag: integer;
  dValor, dDesconto, dLiquido, TotalGeral, ValorPago, Troco: Double;
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
      Memo2.Lines.Add('ITEM CODIGO DESCRICAO QTD VL_UNIT(R$) TOTAL  (R$)     ');
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
        Memo2.Lines.Add('TOTAL R$.........:'+DefineTamanhoString(FormatFloat('###,###,##0.00',dValor),10,1));
        Memo2.Lines.Add('DESCONTO R$......:'+DefineTamanhoString(FormatFloat('###,###,##0.00',dDesconto),10,1));
        Memo2.Lines.Add('TOTAL LIQUIDO R$.:'+DefineTamanhoString(FormatFloat('###,###,##0.00',TotalGeral),10,1));
        Memo2.Lines.Add('VALOR PAGO R$....:'+DefineTamanhoString(FormatFloat('###,###,##0.00',ValorPago),10,1));
        Memo2.Lines.Add('TROCO R$.........:'+DefineTamanhoString(FormatFloat('###,###,##0.00',Troco),10,1));
        Memo2.Lines.Add('-----------------------------------------------------------------------');
        Memo2.Lines.Add('       ***       FORMA PAGAMENTO /  VALOR R$    ***                    ');
        Memo2.Lines.Add('-----------------------------------------------------------------------');
       FOR iCount4 := 1 to 100 do
        begin
          inc(iQuantasPag);
          if iQuantasPag <= iPagamentos then
          begin
            Memo2.Lines.Add(DefineTamanhoString(DM.cdsPagamentoPdvDESCRICAO_PAGAMENTO.AsString,15,1)
            +'     R$ '+DefineTamanhoString(FormatFloat('###,###,##0.00',DM.cdsPagamentoPDVVL_PAGAMENTO.AsFloat),8,16));
            DM.cdsPagamentoPDV.Next;
          end;
        end;
        Memo2.Lines.Add('-----------------------------------------------------------------------');

        Memo2.Lines.Add('');
        Memo2.Lines.Add('VENDEDOR(A)  '+DefineTamanhoString(DM.cdsPdvLocalNOME.AsString,20,0));
        Memo2.Lines.Add('');
        Memo2.Lines.Add('');

           //CONTA QUANT DE REGISTROS DA VENDA
        DM.cdsDinamica.Close;
        DM.cdsDinamica.IndexFieldNames :='';
        DM.cdsDinamica.CommandText := ' SELECT SUM(IP.QUANT) FROM TB_ITEM_PDV IP WHERE IP.NR_ORCAMENTO = '+DM.cdsPdvLocalNR_ORCAMENTO.AsString+
                                      ' AND IP.STATUS =''V''';
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

  printer.BeginDoc;
  try
    { Usa na impressora a mesma fonte do memo }
    printer.Canvas.Font.Assign(Memo.Font);

    AlturaLinha := printer.Canvas.TextHeight('Tg');

    Y := cMargemSuperior;
    for I := 0 to Memo.Lines.Count - 1 do
    begin

      if Y > printer.PageHeight then
      begin
        printer.NewPage;
        Y := cMargemSuperior;
      end;

      printer.Canvas.TextOut(cMargemEsquerda, Y, Memo.Lines[I]);

      Y := Y + AlturaLinha + cEspacoLinha;
    end;
  finally
    printer.EndDoc;
  end;
end;

procedure TfrmPdv.ImprimirMemo(Memo: TMemo);
var
  I: integer;
  F: TextFile;
begin
  { Usa na impressora a mesma fonte do memo }
  printer.Canvas.Font.Assign(Memo.Font);

  AssignPrn(F);
  Rewrite(F);
  try
    for I := 0 to Memo.Lines.Count - 1 do
      WriteLn(F, Memo.Lines[I]);
  finally
    CloseFile(F);
  end;
end;

procedure TfrmPdv.L_REIMPRESSAOClick(Sender: TObject);
begin
  if frmReimpressaoOrcamento = nil then
  begin
    frmReimpressaoOrcamento := TfrmReimpressaoOrcamento.Create(Application);
    frmReimpressaoOrcamento.ShowModal;
  end;
end;

procedure TfrmPdv.L_REL_VENDASClick(Sender: TObject);
begin
  if L_SITUACAO_VENDA.Caption = 'Caixa Livre' then
  begin
    P_SENHA.Visible := True;
    ValorNome1.SetFocus;
    ValorNome1.Clear;
    ValorSenha1.Clear;
  end
  else
  begin
    ShowMessage('Existe Uma Venda em Aberto, Favor Finalizar. ');
    Abort;
  end;
end;

procedure TfrmPdv.BB_CONFIRMAClick(Sender: TObject);
begin
  DM.cdsPdvLocal.Edit;
  DM.cdsPdvLocalSTATUS.Value := 'F';
  if DM.cdsPdvLocal.ApplyUpdates(0) <> 0 then
  begin
    ShowMessage
      ('O Sistema N�o Conseguiu Gravar Esta Venda. Tente Novamente ou Contate o Suporte.');
  end
  else
  begin
    { if (DM.cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger = 1) OR (DM.cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger = 2) then
      begin
      if Application.MessageBox('Grava no Contas a Receber?','Aten��o',MB_YESNO+MB_ICONQUESTION) = idyes then
      begin
      GravaReceber;
      end;
      end; }

    // //grava estoque Movimentacao Geral
    // DM.cdsMovEstoque.Open;
    // DM.cdsInsertSaidaEstoque.Params[0].AsInteger := StrToInt(L_LOJA.Caption);
    // DM.cdsInsertSaidaEstoque.Params[1].AsDate    := StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
    // DM.cdsInsertSaidaEstoque.Params[2].AsDate    := StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
    // DM.cdsInsertSaidaEstoque.Params[3].AsString  :='Vendas_L_'+L_LOJA.Caption;
    // DM.cdsInsertSaidaEstoque.Execute;
    //
    // DM.cdsMovEstoque.ApplyUpdates(0);
    // DM.cdsMovEstoque.Refresh;
    //
    // //grava estoque por produto
    // DM.cdsEstoqueProduto.Open;
    // DM.cdsInsertSaidaEstoqueProduto.Params[0].AsInteger := StrToInt(L_LOJA.Caption);
    // DM.cdsInsertSaidaEstoqueProduto.Params[1].AsDate    := StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
    // DM.cdsInsertSaidaEstoqueProduto.Params[2].AsString  := 'S';
    // DM.cdsInsertSaidaEstoqueProduto.Execute;
    // DM.cdsEstoqueProduto.ApplyUpdates(0);
    // DM.cdsEstoqueProduto.Refresh;

    DM.cdsPdvLocal.ApplyUpdates(0);
    DM.cdsPdvLocal.Refresh;
    L_SITUACAO_VENDA.Caption := 'Caixa Livre';
    L_TOTAL_VENDA.Caption := ' R$ 0,00 ';
    L_TOTAL_DESC_ENTRADA.Caption := 'R$ 0,00';
    L_TOTAL_LIQUIDO.Caption := 'R$ 0,00';
    // MULTI := False;
    // edtValorPago.Clear;
    // edtTroco.Clear;
    SituacaoVenda := '';

    if DM.cdsPdvLocal.RecordCount > 0 then
    begin
      L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO';
      SomaQtdPecas;
    end
    else
    begin
      L_SITUACAO_VENDA.Caption := 'Caixa Livre';
      L_QTD_PECAS.Caption := '0';
    // P_RECEBIMENTO.Visible := False;
    // MULTI := False;
    end;
  end;
  // MULTI := False;


end;

procedure TfrmPdv.BB_SAIRClick(Sender: TObject);
begin
  P_CONSULTA_PRODUTO.Visible := False;
  L_CODIGO.Caption  := 'C�DIGO    : ';
  L_PRODUTO.Caption := 'PRODUTO   : ';
  L_VALOR.Caption   := 'VALOR R$  : ';
  Edit1.Clear;
  Edit1.Clear;
  DM.cdsProduto.Close;
  DBEdit1.SetFocus;

end;

procedure TfrmPdv.BitBtn1Click(Sender: TObject);
begin
  P_VLVENDA.Visible := False;
  GravarVenda;
  InsertItemVenda;
  Item := 0;
end;

procedure TfrmPdv.BitBtn2Click(Sender: TObject);
begin
  DM.cdsPdvLocalID_VENDEDOR.AsInteger := cdsVendedorID_VENDEDOR.AsInteger;
  DM.cdsPdvLocalNOME.Value := cdsVendedorNOME.Value;

  if DM.cdsPdvLocal.ApplyUpdates(0) <> 0 then
  begin
    ShowMessage
      ('O Sistema N�o Conseguiu Salvar Esta Informa��o. Tente Novamente ou Contate o Suporte.');
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

procedure TfrmPdv.BitBtn4Click(Sender: TObject);
begin
  P_VLVENDA.Visible := False;
  L_SITUACAO_VENDA.Caption := 'Caixa Livre';
  DM.cdsPdvLocal.Cancel;
end;

procedure TfrmPdv.BtnCancelarClick(Sender: TObject);
begin
  P_SENHA.Visible := False;
end;

procedure TfrmPdv.btnOkClick(Sender: TObject);
Var
  User: string;
  pass: string;
  nivel: integer;
begin
  pass := ValorSenha1.Text;
  User := ValorNome1.Text;

  pass := EncryptMsg(pass, 10);

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames := '';
  DM.cdsDinamica.CommandText :=
    ' SELECT U.LOGIN, U.SENHA, U.NIVEL_ACESSO FROM TB_USUARIOS U ' +
    ' WHERE U.SENHA = ' + QuotedStr(pass) + ' AND U.LOGIN = ' + QuotedStr(User)
    + ' ORDER BY U.LOGIN ';
  DM.cdsDinamica.Open;

  if DM.cdsDinamica.IsEmpty then
  begin
    ShowMessage('Usuario ou Senha Inv�lidos');
    ValorNome1.SetFocus;
  end
  else
  begin
    User := DM.cdsDinamica.Fields[0].AsString;
    pass := DM.cdsDinamica.Fields[1].AsString;
    nivel := DM.cdsDinamica.Fields[2].AsInteger;
    if nivel <> 0 then
    begin
      ShowMessage('Usu�rio Sem Permiss�o, Consulte a Gerencia');
      P_SENHA.Visible := False;
      Abort;
    end
    else
    begin
      P_SENHA.Visible := False;
      if frmReativarVendas = nil then
      begin
        frmReativarVendas := TfrmReativarVendas.Create(Application);
        frmReativarVendas.ShowModal;
      end;
    end;
  end;
end;

procedure TfrmPdv.DBEdit3Exit(Sender: TObject);
begin
  if L_SITUACAO_VENDA.Caption = 'Caixa Livre' then
  begin
    DBEdit1.SetFocus;
    exit;
  end;

  GravaRegistro;
end;

procedure TfrmPdv.GravarVenda;
begin
  cdsDinamica.Close;
  cdsDinamica.IndexFieldNames := '';
  cdsDinamica.CommandText := 'SELECT MAX(ID_PDV) FROM TB_PDV';
  cdsDinamica.Open;
  DM.cdsPdvLocalID_PDV.AsInteger := cdsDinamica.Fields[0].AsInteger + 1;
  DM.cdsPdvLocalSTATUS.Value := 'A';
  DM.cdsPdvLocalTRANSF.Value := 'N';
  DM.cdsPdvLocalVL_DESCONTO.AsFloat := 0;
  DM.cdsPdvLocalVL_ORCAMENTO.AsFloat := 0;
  DM.cdsPdvLocalNOME_CLIENTE.Value := 'CONSUMIDOR FINAL';
  DM.cdsPdvLocalID_LOJA.AsInteger := StrToInt(L_LOJA.Caption);
  DM.cdsPdvLocalID_GRUPO.AsInteger := StrToInt(L_ID_GRUPO.Caption);
  DM.cdsPdvLocalDT_ORCAMENTO.AsDateTime := Date;
  DM.cdsPdvLocalID_VENDEDOR.AsInteger := cdsVendedorID_VENDEDOR.AsInteger;
  DM.cdsPdvLocalCAIXA.AsInteger := StrToInt(L_CAIXA.Caption);
  DM.cdsPdvLocalID_USUARIO.AsInteger := recInformacoes.id_Usuario;
  DM.cdsPdvLocalMODALIDADE.AsInteger := DBRadioGroup1.ItemIndex;
  cdsDinamica.Close;
  cdsDinamica.IndexFieldNames := '';
  cdsDinamica.CommandText := 'SELECT MAX(NR_ORCAMENTO) FROM TB_PDV';
  cdsDinamica.Open;
  DM.cdsPdvLocalNR_ORCAMENTO.AsInteger := cdsDinamica.Fields[0].AsInteger + 1;

  if DM.cdsPdvLocal.ApplyUpdates(0) <> 0 then
  begin
    ShowMessage
      ('O Sistema N�o Conseguiu Salvar Esta Informa��o. Tente Novamente ou Contate o Suporte.');
  end
  else
  begin
    DM.cdsPdvLocal.ApplyUpdates(0);
  end;
end;

procedure TfrmPdv.DBEdit5Exit(Sender: TObject);
begin
  // GravaRegistro;
end;

end.
