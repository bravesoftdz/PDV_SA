unit UtrocaMercadoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ImgList,
  Vcl.ExtCtrls, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons;

type
  TfrmTrocaMercadoria = class(TForm)
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    TB_NOVO: TToolButton;
    TB_ALTERAR: TToolButton;
    TB_EXCLUIR: TToolButton;
    TB_CANCELAR: TToolButton;
    TB_SALVAR: TToolButton;
    TB_PESQUISAR: TToolButton;
    TB_SAIR: TToolButton;
    qTroca: TSQLQuery;
    dspTroca: TDataSetProvider;
    cdsTroca: TClientDataSet;
    dsTroca: TDataSource;
    qItemTroca: TSQLQuery;
    dspItemTroca: TDataSetProvider;
    cdsItemTroca: TClientDataSet;
    dsItemTroca: TDataSource;
    qItemTrocaID_ITEM_PDV: TIntegerField;
    qItemTrocaNR_ORCAMENTO: TIntegerField;
    qItemTrocaID_PRODUTO: TIntegerField;
    qItemTrocaQUANT: TIntegerField;
    qItemTrocaVL_UNIT: TFMTBCDField;
    qItemTrocaVL_TOTAL: TFMTBCDField;
    qItemTrocaDESC_ITEM: TFMTBCDField;
    qItemTrocaPERC_DES: TFMTBCDField;
    qItemTrocaTRANSF: TStringField;
    qItemTrocaID_LOJA: TIntegerField;
    qItemTrocaSTATUS: TStringField;
    qItemTrocaCOD_BARRA: TStringField;
    qItemTrocaDESCRICAO: TStringField;
    qItemTrocaUNIDADE: TStringField;
    cdsItemTrocaID_ITEM_PDV: TIntegerField;
    cdsItemTrocaNR_ORCAMENTO: TIntegerField;
    cdsItemTrocaID_PRODUTO: TIntegerField;
    cdsItemTrocaQUANT: TIntegerField;
    cdsItemTrocaVL_UNIT: TFMTBCDField;
    cdsItemTrocaVL_TOTAL: TFMTBCDField;
    cdsItemTrocaDESC_ITEM: TFMTBCDField;
    cdsItemTrocaPERC_DES: TFMTBCDField;
    cdsItemTrocaTRANSF: TStringField;
    cdsItemTrocaID_LOJA: TIntegerField;
    cdsItemTrocaSTATUS: TStringField;
    cdsItemTrocaCOD_BARRA: TStringField;
    cdsItemTrocaDESCRICAO: TStringField;
    cdsItemTrocaUNIDADE: TStringField;
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
    P_TROCA: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    EdtUsuario: TEdit;
    GroupBox1: TGroupBox;
    L_LOJA: TLabel;
    L_NOME_LOJA: TLabel;
    L_ID_GRUPO: TLabel;
    P_BOTOES1: TPanel;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    BB_INCLUIR: TBitBtn;
    BB_ALTERAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    BB_SALVAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_FINALIZAR: TBitBtn;
    P_PRODUTO: TPanel;
    DBEdit7: TDBEdit;
    DBText1: TDBText;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label9: TLabel;
    Descri��o: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    L_MSG: TLabel;
    Label17: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_SAIRClick(Sender: TObject);
    procedure TB_NOVOClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TB_SALVARClick(Sender: TObject);
    procedure dspTrocaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspItemTrocaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure TB_PESQUISARClick(Sender: TObject);
    procedure TB_CANCELARClick(Sender: TObject);
    procedure TB_ALTERARClick(Sender: TObject);
    procedure TB_EXCLUIRClick(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure BB_SALVARClick(Sender: TObject);
    procedure BB_INCLUIRClick(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure BB_FINALIZARClick(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
    Procedure GerenciaBotoes2;
    Procedure SomaTotais;
  public
    { Public declarations }
  Procedure AddDisplay(Texto : String = ''; Style : TFontStyles = []; Size : Integer = 10);
  end;

var
  frmTrocaMercadoria: TfrmTrocaMercadoria;
  tpRegistro : string;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDm, uPdv, uRetaguarda;

procedure TfrmTrocaMercadoria.AddDisplay(Texto: String; Style: TFontStyles;
  Size: Integer);
begin
{  RichEdit1.SelAttributes.Style:=Style;
  RichEdit1.SelAttributes.Size:=Size;
  RichEdit1.Lines.Add(Texto);}
end;

procedure TfrmTrocaMercadoria.BB_CANCELARClick(Sender: TObject);
begin
  cdsItemTroca.Cancel;
  GerenciaBotoes2;
end;

procedure TfrmTrocaMercadoria.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Item?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
  begin
    cdsItemTroca.Delete;
    cdsItemTroca.ApplyUpdates(0);
    cdsItemTroca.Refresh;
  end
  else
  begin
    ShowMessage('Exclus�o Cancelada!!!');
  end;
  SomaTotais;
end;

procedure TfrmTrocaMercadoria.BB_FINALIZARClick(Sender: TObject);
var
 valor : string;
begin
  valor := FormatFloat('###,###0.00',cdsTrocaVL_LIQUIDO.AsFloat);
  if cdsTrocaVL_LIQUIDO.AsFloat < 0 then
  begin
   ShowMessage(' ATEN��O... VALOR DA TROCA N�O PODE SER MENOR QUE O VALOR DEVOLVIDO!!! ');
   Exit;
   GerenciaBotoes2;
  end;
  if cdsTrocaVL_ORCAMENTO.AsFloat > cdsTrocaVL_DESCONTO.AsFloat then
  begin
   ShowMessage(' ATEN��O... VALOR A SER RECEBIDO.  '+'R$ '+valor);
   //SAIDA ESTOQUE
   DM.cdsMovEstoque.Close;
   DM.cdsMovEstoque.Open;
   DM.cdsInsertSaidaTroca.Params[0].AsInteger := cdsTrocaID_LOJA.AsInteger;
   DM.cdsInsertSaidaTroca.Params[1].AsDate    :=StrToDate(cdsTrocaDT_ORCAMENTO.AsString);
   DM.cdsInsertSaidaTroca.Params[2].AsDate    :=StrToDate(cdsTrocaDT_ORCAMENTO.AsString);
   DM.cdsInsertSaidaTroca.Params[3].AsString  :='S_Troca_L_'+cdsTrocaID_LOJA.AsString;
   DM.cdsInsertSaidaTroca.Execute;
   DM.cdsMovEstoque.ApplyUpdates(0);
   DM.cdsMovEstoque.Refresh;
   //ENTRADA ESTOQUE
   DM.cdsMovEstoque.Close;
   DM.cdsMovEstoque.Open;
   DM.cdsInsertEntradaTroca.Params[0].AsInteger := cdsTrocaID_LOJA.AsInteger;
   DM.cdsInsertEntradaTroca.Params[1].AsDate    :=StrToDate(cdsTrocaDT_ORCAMENTO.AsString);
   DM.cdsInsertEntradaTroca.Params[2].AsDate    :=StrToDate(cdsTrocaDT_ORCAMENTO.AsString);
   DM.cdsInsertEntradaTroca.Params[3].AsString  :='E_Troca_L_'+cdsTrocaID_LOJA.AsString;
   DM.cdsInsertEntradaTroca.Execute;
   DM.cdsMovEstoque.ApplyUpdates(0);
   DM.cdsMovEstoque.Refresh;

   cdsTroca.Edit;
   cdsTrocaSTATUS.Value:='D';
   cdsTroca.ApplyUpdates(0);
   cdsTroca.Refresh;
   ShowMessage(' TROCA REALIZADA COM SUCESSO !!!! ');
   GerenciaBotoes2;
  end;
  if cdsTrocaVL_ORCAMENTO.AsFloat = cdsTrocaVL_DESCONTO.AsFloat then
  begin
   //SAIDA ESTOQUE
   DM.cdsMovEstoque.Close;
   DM.cdsMovEstoque.Open;
   DM.cdsInsertSaidaTroca.Params[0].AsInteger := cdsTrocaID_LOJA.AsInteger;
   DM.cdsInsertSaidaTroca.Params[1].AsDate    :=StrToDate(cdsTrocaDT_ORCAMENTO.AsString);
   DM.cdsInsertSaidaTroca.Params[2].AsDate    :=StrToDate(cdsTrocaDT_ORCAMENTO.AsString);
   DM.cdsInsertSaidaTroca.Params[3].AsString  :='S_Troca_L_'+cdsTrocaID_LOJA.AsString;
   DM.cdsInsertSaidaTroca.Execute;
   DM.cdsMovEstoque.ApplyUpdates(0);
   DM.cdsMovEstoque.Refresh;
   //ENTRADA ESTOQUE
   DM.cdsMovEstoque.Close;
   DM.cdsMovEstoque.Open;
   DM.cdsInsertEntradaTroca.Params[0].AsInteger := cdsTrocaID_LOJA.AsInteger;
   DM.cdsInsertEntradaTroca.Params[1].AsDate    :=StrToDate(cdsTrocaDT_ORCAMENTO.AsString);
   DM.cdsInsertEntradaTroca.Params[2].AsDate    :=StrToDate(cdsTrocaDT_ORCAMENTO.AsString);
   DM.cdsInsertEntradaTroca.Params[3].AsString  :='E_Troca_L_'+cdsTrocaID_LOJA.AsString;
   DM.cdsInsertEntradaTroca.Execute;
   DM.cdsMovEstoque.ApplyUpdates(0);
   DM.cdsMovEstoque.Refresh;

   cdsTroca.Edit;
   cdsTrocaSTATUS.Value:='D';
   cdsTroca.ApplyUpdates(0);
   cdsTroca.Refresh;
   ShowMessage(' TROCA REALIZADA COM SUCESSO !!!! ');
   GerenciaBotoes2;
  end;

end;

procedure TfrmTrocaMercadoria.BB_INCLUIRClick(Sender: TObject);
begin
  TpRegistro := 'Insert';
  cdsItemTroca.Open;
  cdsItemTroca.Append;
  cdsItemTrocaNR_ORCAMENTO.AsInteger := cdsTrocaNR_ORCAMENTO.AsInteger;
  cdsItemTrocaDESC_ITEM.AsFloat :=0;
  cdsItemTrocaPERC_DES.AsFloat :=0;
  cdsItemTrocaTRANSF.AsString :='N';
  cdsItemTrocaID_LOJA.AsInteger := cdsTrocaID_LOJA.AsInteger;
  GerenciaBotoes2;
  DBEdit7.SetFocus;

//  AddDisplay('ITEM, C�DIGO, DESCRI��O, QTD, Valor',[fsBold],10);

end;

procedure TfrmTrocaMercadoria.BB_SALVARClick(Sender: TObject);
begin
  if TpRegistro = 'Insert' Then
  begin
    if DBEdit8.Text = '' then
    begin
      ShowMessage('Campo "Quant." n�o pode ser Vazio ');
      DBEdit8.SetFocus;
      Exit;
    end;

   { DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames :='';
    DM.cdsDinamica.CommandText := 'SELECT MAX(ID_ITEM_PDV) FROM TB_ITEM_PDV ';
    DM.cdsDinamica.Open;

    cdsItemTrocaID_ITEM_PDV.AsInteger  := DM.cdsDinamica.Fields[0].AsInteger +1;}

    if cdsItemTroca.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
    end
    else
    begin
      cdsItemTroca.ApplyUpdates(0);
      SomaTotais;
      GerenciaBotoes2;
      BB_INCLUIRClick(Self);
    end;
  end;
  if TpRegistro = 'Edit' Then
  begin
    if cdsItemTroca.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
    end
    else
    begin
      cdsItemTroca.ApplyUpdates(0);
      SomaTotais;
      GerenciaBotoes2;
      BB_INCLUIRClick(Self);
    end;
  end;
  GerenciaBotoes2;
end;

procedure TfrmTrocaMercadoria.DBEdit10Exit(Sender: TObject);
begin
  if Application.MessageBox('Confirma Registro?','Confirma��o',MB_YESNO+MB_ICONQUESTION) =IDYES then
  begin
    BB_SALVARClick(Self);
  end
  else
  begin
    BB_CANCELARClick(Self);
  end;

end;

procedure TfrmTrocaMercadoria.DBEdit7Exit(Sender: TObject);
begin
  DM.cdsProduto.Open;
  if DBEdit7.Text = '' Then
  begin
    BB_CANCELAR.SetFocus;
    exit;
  end;
  if DM.cdsProduto.Locate('COD_BARRA',cdsItemTrocaCOD_BARRA.AsString,[]) then
  begin
    cdsItemTrocaCOD_BARRA.AsString          := DM.cdsProdutoCOD_BARRA.AsString;
    cdsItemTrocaID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
    cdsItemTrocaDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
    cdsItemTrocaUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
    cdsItemTrocaVL_UNIT.AsFloat             := DM.cdsProdutoVL_UNIT.AsFloat;

    if Application.MessageBox('Produto Devolvido?','Confirma��o',MB_YESNO+MB_ICONHAND)= idyes then
    begin
      cdsItemTrocaSTATUS.Value:='D';
      DBEdit8.SetFocus;
    end
    else
    begin
      cdsItemTrocaSTATUS.Value:='L';
      DBEdit8.SetFocus;
    end;

  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   C�digo N�o Encontrado             '+#13+
                '                                     ');
    SpeedButton1Click(Self);
  end;

end;

procedure TfrmTrocaMercadoria.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton1Click(self);
  end;
end;

procedure TfrmTrocaMercadoria.DBEdit8Exit(Sender: TObject);
begin
  cdsItemTrocaVL_TOTAL.AsFloat :=
   (cdsItemTrocaVL_UNIT.AsFloat * cdsItemTrocaQUANT.AsFloat);
end;

procedure TfrmTrocaMercadoria.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If cdsItemTrocaSTATUS.Value = 'L'  then // condi��o
   DBGrid1.Canvas.Font.Color:= clRed // coloque aqui a cor desejada
  ELSE
   DBGrid1.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
   DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
   DBGrid1.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito
end;

procedure TfrmTrocaMercadoria.dspItemTrocaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'TB_ITEM_PDV';
end;

procedure TfrmTrocaMercadoria.dspTrocaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName:='TB_PDV';
end;

procedure TfrmTrocaMercadoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmTrocaMercadoria := nil;
end;

procedure TfrmTrocaMercadoria.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmTrocaMercadoria.FormShow(Sender: TObject);
Var
 IdLoja, nomeLoja,grupo  : string;
begin
  IdLoja := frmRetagurda.recInformacoes.lojaCredenciada;

  if IdLoja <> '' then
  begin
    DM.cdsTabelaLoja.Close;
    DM.cdsTabelaLoja.CommandText :='SELECT L.ID_LOJA,L.COD_MUNICIPIO,L.R_SOCIAL,L.FANTASIA,M.NOME_MUNICIPIO,L.ID_GRUPO_LOJA FROM TB_LOJAS L '+
                             'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.COD_MUNICIPIO = L.COD_MUNICIPIO) '+
                             'WHERE L.ID_LOJA = '+IdLoja;
    DM.cdsTabelaLoja.Open;

    nomeLoja := DM.cdsTabelaLoja.Fields[3].AsString;
    grupo    := DM.cdsTabelaLoja.Fields[5].AsString;
    L_LOJA.Caption := IdLoja;
    L_NOME_LOJA.Caption:= nomeLoja;
    L_ID_GRUPO.Caption := grupo;
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames :='';
    DM.cdsDinamica.CommandText :=' SELECT L.ID_GRUPO_LOJA,GL.NOME_GRUPO,L.FANTASIA FROM TB_LOJAS L '+
                                 ' LEFT OUTER JOIN TB_GRUPO_LOJA GL ON (GL.ID_GRUPO_LOJA = L.ID_GRUPO_LOJA) '+
                                 ' WHERE L.ID_LOJA = '+IdLoja;
    DM.cdsDinamica.Open;
    frmRetagurda.recInformacoes.GrupoLoja := DM.cdsDinamica.Fields[0].AsInteger;
    frmRetagurda.recInformacoes.NomeGrupo := DM.cdsDinamica.Fields[1].AsString;

    cdsTroca.Close;
    cdsTroca.Params[0].AsInteger := StrToInt(DM.CAIXA_LOJA);
    cdsTroca.Open;


    if cdsTroca.IsEmpty then
    begin

    end
    else
    begin
      cdsItemTroca.Close;
      cdsItemTroca.Params[0].AsInteger := cdsTrocaNR_ORCAMENTO.AsInteger;
      cdsItemTroca.Params[1].AsInteger := cdsTrocaID_LOJA.AsInteger;
      cdsItemTroca.Open;


    if cdsTrocaVL_LIQUIDO.AsFloat < 0 then
    begin
      L_MSG.Caption := ' ATEN��O... VALOR DA TROCA N�O PODE SER MENOR QUE O VALOR DEVOLVIDO!!! ';
    end
    else
    begin
      L_MSG.Caption := '.';
    end;


      EdtUsuario.Text := frmRetagurda.recInformacoes.login;
    end;

  end
  else
  begin
    Application.MessageBox('Usu�rio sem Loja Definida. Favor Definir uma Loja','Aten��o',MB_OK+MB_ICONWARNING);
    Application.Terminate;
  end;
  DM.cdsTabelaLoja.Close;
  DM.cdsTabelaLoja.IndexFieldNames:='';
  GerenciaBotoes;
  GerenciaBotoes2;
  ToolBar1.SetFocus;

end;

procedure TfrmTrocaMercadoria.GerenciaBotoes;
begin
  TB_NOVO.Enabled     := not (cdsTroca.State in dsEditModes);
  TB_SALVAR.Enabled   := NOT TB_NOVO.Enabled;
  TB_EXCLUIR.Enabled  := TB_NOVO.Enabled and not (cdsTroca.IsEmpty);
  TB_CANCELAR.Enabled := TB_SALVAR.Enabled;
  TB_ALTERAR.Enabled  := TB_EXCLUIR.Enabled;
  TB_SAIR.Enabled     := TB_NOVO.Enabled;
  TB_PESQUISAR.Enabled:= TB_NOVO.Enabled;
  P_TROCA.Enabled     := NOT TB_NOVO.Enabled;
end;

procedure TfrmTrocaMercadoria.GerenciaBotoes2;
begin
  if cdsTroca.RecordCount = 0 then
  begin
    BB_INCLUIR.Enabled    := False;
    BB_ALTERAR.Enabled    := False;
    BB_CANCELAR.Enabled   := False;
    BB_SALVAR.Enabled     := False;
    BB_EXCLUIR.Enabled    := False;
    BB_FINALIZAR.Enabled  := False;
  end
  else
  begin
    BB_INCLUIR.Enabled       := not (cdsItemTroca.State in dsEditModes);
    BB_SALVAR.Enabled        := NOT BB_INCLUIR.Enabled;
    BB_EXCLUIR.Enabled       := BB_INCLUIR.Enabled and not (cdsItemTroca.IsEmpty);
    BB_CANCELAR.Enabled      := BB_SALVAR.Enabled;
    BB_ALTERAR.Enabled       := BB_EXCLUIR.Enabled;
    //BB_FECHAR.Enabled        := BB_INCLUIR.Enabled;
    BB_FINALIZAR.Enabled     := BB_EXCLUIR.Enabled; //and not (cdsItemTroca.IsEmpty);
    P_PRODUTO.Enabled        := not BB_INCLUIR.Enabled;
  end;
end;

procedure TfrmTrocaMercadoria.SomaTotais;
var
  Valor : string;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText:=' select sum(ip.vl_total) from tb_item_pdv ip'+
                              ' where ip.nr_orcamento ='+cdsTrocaNR_ORCAMENTO.AsString+
                              ' AND IP.status =''D''';
  DM.cdsDinamica.Open;

  cdsTroca.Edit;
  cdsTrocaVL_DESCONTO.AsFloat := DM.cdsDinamica.Fields[0].AsFloat;
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText:=' select sum(ip.vl_total) from tb_item_pdv ip'+
                              ' where ip.nr_orcamento ='+cdsTrocaNR_ORCAMENTO.AsString+
                              ' AND IP.status =''L''';
  DM.cdsDinamica.Open;
  cdsTrocaVL_ORCAMENTO.AsFloat := DM.cdsDinamica.Fields[0].AsFloat;

  cdsTrocaVL_LIQUIDO.AsFloat :=  cdsTrocaVL_ORCAMENTO.AsFloat - cdsTrocaVL_DESCONTO.AsFloat ;
  valor := FormatFloat('###,###0.00',cdsTrocaVL_LIQUIDO.AsFloat);
  if cdsTrocaVL_LIQUIDO.AsFloat < 0 then
  begin
    L_MSG.Caption := ' ATEN��O... VALOR DA TROCA N�O PODE SER MENOR QUE O VALOR DEVOLVIDO!!! ';
  end;
  if cdsTrocaVL_ORCAMENTO.AsFloat > cdsTrocaVL_DESCONTO.AsFloat then
  begin
   L_MSG.Caption :=' ATEN��O... VALOR A SER RECEBIDO.  '+'R$ '+valor;
  end;

  cdsTroca.ApplyUpdates(0);

end;

procedure TfrmTrocaMercadoria.SpeedButton1Click(Sender: TObject);
begin
  DM.cdsProduto.Close;
  DM.cdsProduto.Open;
  if Pesquisa(DM.cdsProduto,['DESCRICAO','COD_BARRA','VL_UNIT'],
                              ['','',''],[35,13,10],'','0','','Produto','Produto','Produto') Then
  Begin
    cdsItemTrocaCOD_BARRA.AsString          := DM.cdsProdutoCOD_BARRA.AsString;
    cdsItemTrocaID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
    cdsItemTrocaDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
    cdsItemTrocaUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
    cdsItemTrocaVL_UNIT.AsFloat             := DM.cdsProdutoVL_UNIT.AsFloat;
    DBEdit8.SetFocus;
  end;
end;

procedure TfrmTrocaMercadoria.TB_ALTERARClick(Sender: TObject);
begin
  cdsTroca.Edit;
  GerenciaBotoes;
  GerenciaBotoes2;
end;

procedure TfrmTrocaMercadoria.TB_CANCELARClick(Sender: TObject);
begin
  cdsTroca.Cancel;
  GerenciaBotoes;
  GerenciaBotoes2;
end;

procedure TfrmTrocaMercadoria.TB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Esta Troca ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    cdsTroca.Edit;
    cdsTrocaSTATUS.Value :='E';
    cdsTroca.ApplyUpdates(0);
    cdsTroca.Refresh;
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Troca N�o Exclu�da');
  end;
    GerenciaBotoes;
    GerenciaBotoes2;
end;

procedure TfrmTrocaMercadoria.TB_NOVOClick(Sender: TObject);
var
 sQlCaixa : string;
begin
  L_MSG.Caption :='.';
  sQlCaixa := DM.CAIXA_LOJA;
  EdtUsuario.Text := frmRetagurda.recInformacoes.login;

  cdsTroca.Insert;
  cdsTrocaID_LOJA.AsInteger := StrToInt(L_LOJA.Caption);
  cdsTrocaID_GRUPO.AsInteger := StrToInt(L_ID_GRUPO.Caption);
  cdsTrocaDT_ORCAMENTO.AsDateTime := Date;
  cdsTrocaCAIXA.AsInteger := StrToInt(sQlCaixa);;
  cdsTrocaNOME_CLIENTE.Value := 'CONSUMIDOR FINAL';
  DM.cdsVendedor.Close;
  DM.cdsVendedor.Params[0].AsInteger := StrToInt(L_LOJA.Caption);
  DM.cdsVendedor.Open;

  if Pesquisa(DM.cdsVendedor,['NOME','ID_VENDEDOR'],
                                 ['',''],[30,2],'','0','','Vendedor','Vendedor','Vendedor') then
  begin
    cdsTrocaID_VENDEDOR.AsInteger  := DM.cdsVendedorID_VENDEDOR.AsInteger;
    cdsTrocaNOME.Value             := DM.cdsVendedorNOME.Value;
    TB_SALVARClick(Self);
  end;
  GerenciaBotoes;
  GerenciaBotoes2;
end;

procedure TfrmTrocaMercadoria.TB_PESQUISARClick(Sender: TObject);
begin
  Pesquisa(cdsTroca,['NR_ORCAMENTO','NOME_CLIENTE','DT_ORCAMENTO','VL_ORCAMENTO'],['N� Or�amento','Cliente','Data Or�amento','Valor'],
    [10,20,8,15],'','','','','Troca de Mercadoria','Troca de Mercadoria');
  GerenciaBotoes;
  GerenciaBotoes2;
  SomaTotais;
end;

procedure TfrmTrocaMercadoria.TB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTrocaMercadoria.TB_SALVARClick(Sender: TObject);
begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames :='';
    DM.cdsDinamica.CommandText := 'SELECT MAX(ID_PDV) FROM TB_PDV';
    DM.cdsDinamica.Open;
    cdsTrocaID_PDV.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
    cdsTrocaSTATUS.Value := 'T';
    cdsTrocaTRANSF.Value := 'N';
    cdsTrocaVL_DESCONTO.AsFloat := 0;
    cdsTrocaVL_ORCAMENTO.AsFloat:= 0;
    cdsTrocaVL_LIQUIDO.AsFloat := 0;
    cdsTrocaNOME_CLIENTE.Value := 'CONSUMIDOR FINAL';
    cdsTrocaID_LOJA.AsInteger := StrToInt(L_LOJA.Caption);
    cdsTrocaID_GRUPO.AsInteger := StrToInt(L_ID_GRUPO.Caption);
    cdsTrocaDT_ORCAMENTO.AsDateTime := Date;
    cdsTrocaID_VENDEDOR.AsInteger := DM.cdsVendedorID_VENDEDOR.AsInteger;
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames :='';
    DM.cdsDinamica.CommandText := 'SELECT MAX(NR_ORCAMENTO) FROM TB_PDV';
    DM.cdsDinamica.Open;
    cdsTrocaNR_ORCAMENTO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
  if cdsTroca.ApplyUpdates(0) <> 0 then
  begin
    ShowMessage('O Sistema N�o Conseguiu Salvar Esta Informa��o. Tente Novamente ou Contate o Suporte.');
  end
  else
  begin
    cdsTroca.ApplyUpdates(0);
    BB_INCLUIRClick(Self);
  end;
  GerenciaBotoes;
  GerenciaBotoes2;
end;

end.
