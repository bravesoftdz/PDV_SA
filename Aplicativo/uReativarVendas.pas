unit uReativarVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Data.SqlExpr, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Vcl.Imaging.jpeg, Vcl.ComCtrls;

type
  TfrmReativarVendas = class(TForm)
    spCancelaPagamento: TSQLStoredProc;
    dspCancelaPagamento: TDataSetProvider;
    cdsCancelaPagamento: TClientDataSet;
    qReativarVenda: TSQLDataSet;
    qReativarVendaID_PDV: TIntegerField;
    qReativarVendaNR_ORCAMENTO: TIntegerField;
    qReativarVendaID_LOJA: TIntegerField;
    qReativarVendaID_GRUPO: TIntegerField;
    qReativarVendaDT_ORCAMENTO: TDateField;
    qReativarVendaVL_ORCAMENTO: TFMTBCDField;
    qReativarVendaVL_DESCONTO: TFMTBCDField;
    qReativarVendaVL_LIQUIDO: TFMTBCDField;
    qReativarVendaSTATUS: TStringField;
    qReativarVendaTRANSF: TStringField;
    qReativarVendaNOME_CLIENTE: TStringField;
    qReativarVendaCPF_CLIENTE: TStringField;
    qReativarVendaID_VENDEDOR: TIntegerField;
    qReativarVendaCAIXA: TIntegerField;
    qReativarVendaID_USUARIO: TIntegerField;
    qReativarVendaNOME: TStringField;
    qReativarVendaLOGIN: TStringField;
    dspReativarVenda: TDataSetProvider;
    cdsReativarVenda: TClientDataSet;
    dsReativarVenda: TDataSource;
    qReativarVendaHR_ORCAMENTO: TTimeField;
    qReativarVendaCUPOM: TStringField;
    cdsReativarVendaID_PDV: TIntegerField;
    cdsReativarVendaNR_ORCAMENTO: TIntegerField;
    cdsReativarVendaID_LOJA: TIntegerField;
    cdsReativarVendaID_GRUPO: TIntegerField;
    cdsReativarVendaDT_ORCAMENTO: TDateField;
    cdsReativarVendaVL_ORCAMENTO: TFMTBCDField;
    cdsReativarVendaVL_DESCONTO: TFMTBCDField;
    cdsReativarVendaVL_LIQUIDO: TFMTBCDField;
    cdsReativarVendaSTATUS: TStringField;
    cdsReativarVendaTRANSF: TStringField;
    cdsReativarVendaNOME_CLIENTE: TStringField;
    cdsReativarVendaCPF_CLIENTE: TStringField;
    cdsReativarVendaID_VENDEDOR: TIntegerField;
    cdsReativarVendaCAIXA: TIntegerField;
    cdsReativarVendaID_USUARIO: TIntegerField;
    cdsReativarVendaNOME: TStringField;
    cdsReativarVendaLOGIN: TStringField;
    cdsReativarVendaHR_ORCAMENTO: TTimeField;
    cdsReativarVendaCUPOM: TStringField;
    PageControl1: TPageControl;
    TS_VENDAS_FINALIZADAS: TTabSheet;
    DBGrid1: TDBGrid;
    TS_CANCELADAS: TTabSheet;
    DBNavigator1: TDBNavigator;
    BB_REATIVAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    qItemReativaVenda: TSQLDataSet;
    dspItemReativaVenda: TDataSetProvider;
    cdsItemReativaVenda: TClientDataSet;
    dsItemReativaVenda: TDataSource;
    qItemReativaVendaID_ITEM_PDV: TIntegerField;
    qItemReativaVendaNR_ORCAMENTO: TIntegerField;
    qItemReativaVendaID_PRODUTO: TIntegerField;
    qItemReativaVendaQUANT: TIntegerField;
    qItemReativaVendaVL_UNIT: TFMTBCDField;
    qItemReativaVendaVL_TOTAL: TFMTBCDField;
    qItemReativaVendaDESC_ITEM: TFMTBCDField;
    qItemReativaVendaPERC_DES: TFMTBCDField;
    qItemReativaVendaTRANSF: TStringField;
    qItemReativaVendaID_LOJA: TIntegerField;
    qItemReativaVendaSTATUS: TStringField;
    qItemReativaVendaDT_ORCAMENTO: TDateField;
    qItemReativaVendaCOD_BARRA: TStringField;
    qItemReativaVendaDESCRICAO: TStringField;
    qItemReativaVendaUNIDADE: TStringField;
    cdsItemReativaVendaID_ITEM_PDV: TIntegerField;
    cdsItemReativaVendaNR_ORCAMENTO: TIntegerField;
    cdsItemReativaVendaID_PRODUTO: TIntegerField;
    cdsItemReativaVendaQUANT: TIntegerField;
    cdsItemReativaVendaVL_UNIT: TFMTBCDField;
    cdsItemReativaVendaVL_TOTAL: TFMTBCDField;
    cdsItemReativaVendaDESC_ITEM: TFMTBCDField;
    cdsItemReativaVendaPERC_DES: TFMTBCDField;
    cdsItemReativaVendaTRANSF: TStringField;
    cdsItemReativaVendaID_LOJA: TIntegerField;
    cdsItemReativaVendaSTATUS: TStringField;
    cdsItemReativaVendaDT_ORCAMENTO: TDateField;
    cdsItemReativaVendaCOD_BARRA: TStringField;
    cdsItemReativaVendaDESCRICAO: TStringField;
    cdsItemReativaVendaUNIDADE: TStringField;
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBNavigator2: TDBNavigator;
    qCanceladas: TSQLDataSet;
    qItemCancelada: TSQLDataSet;
    dspCanceladas: TDataSetProvider;
    dspItemCancelada: TDataSetProvider;
    cdsCanceladas: TClientDataSet;
    cdsItemCancelada: TClientDataSet;
    dsCanceladas: TDataSource;
    dsItemCancelada: TDataSource;
    qCanceladasID_PDV: TIntegerField;
    qCanceladasNR_ORCAMENTO: TIntegerField;
    qCanceladasID_LOJA: TIntegerField;
    qCanceladasID_GRUPO: TIntegerField;
    qCanceladasDT_ORCAMENTO: TDateField;
    qCanceladasHR_ORCAMENTO: TTimeField;
    qCanceladasVL_ORCAMENTO: TFMTBCDField;
    qCanceladasVL_DESCONTO: TFMTBCDField;
    qCanceladasVL_LIQUIDO: TFMTBCDField;
    qCanceladasSTATUS: TStringField;
    qCanceladasTRANSF: TStringField;
    qCanceladasNOME_CLIENTE: TStringField;
    qCanceladasCPF_CLIENTE: TStringField;
    qCanceladasID_VENDEDOR: TIntegerField;
    qCanceladasCAIXA: TIntegerField;
    qCanceladasID_USUARIO: TIntegerField;
    qCanceladasCUPOM: TStringField;
    qCanceladasPERC_DESC: TFMTBCDField;
    qCanceladasNOME: TStringField;
    qCanceladasLOGIN: TStringField;
    cdsCanceladasID_PDV: TIntegerField;
    cdsCanceladasNR_ORCAMENTO: TIntegerField;
    cdsCanceladasID_LOJA: TIntegerField;
    cdsCanceladasID_GRUPO: TIntegerField;
    cdsCanceladasDT_ORCAMENTO: TDateField;
    cdsCanceladasHR_ORCAMENTO: TTimeField;
    cdsCanceladasVL_ORCAMENTO: TFMTBCDField;
    cdsCanceladasVL_DESCONTO: TFMTBCDField;
    cdsCanceladasVL_LIQUIDO: TFMTBCDField;
    cdsCanceladasSTATUS: TStringField;
    cdsCanceladasTRANSF: TStringField;
    cdsCanceladasNOME_CLIENTE: TStringField;
    cdsCanceladasCPF_CLIENTE: TStringField;
    cdsCanceladasID_VENDEDOR: TIntegerField;
    cdsCanceladasCAIXA: TIntegerField;
    cdsCanceladasID_USUARIO: TIntegerField;
    cdsCanceladasCUPOM: TStringField;
    cdsCanceladasPERC_DESC: TFMTBCDField;
    cdsCanceladasNOME: TStringField;
    cdsCanceladasLOGIN: TStringField;
    cdsItemCanceladaID_ITEM_PDV: TIntegerField;
    cdsItemCanceladaNR_ORCAMENTO: TIntegerField;
    cdsItemCanceladaID_PRODUTO: TIntegerField;
    cdsItemCanceladaQUANT: TIntegerField;
    cdsItemCanceladaVL_UNIT: TFMTBCDField;
    cdsItemCanceladaVL_TOTAL: TFMTBCDField;
    cdsItemCanceladaDESC_ITEM: TFMTBCDField;
    cdsItemCanceladaPERC_DES: TFMTBCDField;
    cdsItemCanceladaTRANSF: TStringField;
    cdsItemCanceladaID_LOJA: TIntegerField;
    cdsItemCanceladaSTATUS: TStringField;
    cdsItemCanceladaDT_ORCAMENTO: TDateField;
    cdsItemCanceladaCOD_BARRA: TStringField;
    cdsItemCanceladaDESCRICAO: TStringField;
    cdsItemCanceladaUNIDADE: TStringField;
    Panel1: TPanel;
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    procedure BB_REATIVARClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure TS_CANCELADASShow(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SomaTotais;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReativarVendas: TfrmReativarVendas;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDm, uPdv;

procedure TfrmReativarVendas.BB_REATIVARClick(Sender: TObject);
begin
  if DateTimePicker1.Date < Date then
  begin
    ShowMessage('N�o � Permitido Reativar Venda Com a Data Anterior a Data Atual.');
    Exit;
  end;

  if Application.MessageBox('Deseja Realmente Reativar Esta Venda ?','Confirma��o!!!!!',MB_OK+MB_YESNO) = idyes then
  begin
    cdsReativarVenda.Edit;
    cdsReativarVendaSTATUS.Value := 'A';
    cdsReativarVenda.ApplyUpdates(0);

    DM.cdsPdvLocal.Close;
    DM.cdsPdvLocal.Params[0].AsInteger := StrToInt(frmPdv.L_CAIXA.Caption);
    DM.cdsPdvLocal.Open;

    DM.cdsItemPdvLocal.Close;
    DM.cdsItemPdvLocal.Params[0].AsInteger := DM.cdsPdvLocalID_PDV.AsInteger;
    DM.cdsItemPdvLocal.Open;

    cdsCancelaPagamento.Params[0].AsInteger := cdsReativarVendaID_PDV.AsInteger;
    cdsCancelaPagamento.Execute;

    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames;
    DM.cdsDinamica.CommandText := ' DELETE FROM TB_CONTAS_RECEBER CR '+
                                  ' WHERE CR.id_pdv ='+DM.cdsPdvLocalID_PDV.AsString;
    DM.cdsDinamica.Execute;


    if DM.cdsItemPdvLocal.RecordCount > 0 then
    begin
      frmPdv.L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO';
      frmPdv.L_TOTAL_VENDA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvLocalVL_LIQUIDO.AsFloat);
      SomaTotais;
    end
    else
      frmPdv.L_SITUACAO_VENDA.Caption := 'Caixa Livre';

    ShowMessage('Venda Reativada Com Sucesso!!!');
    Close;
  end
  else
  begin
    ShowMessage('Reativa��o Cancelada');
    DBGrid1.SetFocus;
  end;
end;

procedure TfrmReativarVendas.DateTimePicker1Change(Sender: TObject);
begin
  cdsReativarVenda.Close;
  cdsReativarVenda.Params[0].AsInteger := StrToInt(frmPdv.L_CAIXA.Caption);
  cdsReativarVenda.Params[1].AsDate    := DateTimePicker1.Date;
  cdsReativarVenda.Open;

  cdsItemReativaVenda.Close;
  cdsItemReativaVenda.Params[0].AsInteger := cdsReativarVendaNR_ORCAMENTO.AsInteger;
  cdsItemReativaVenda.Params[1].AsInteger := cdsReativarVendaID_LOJA.AsInteger;
  cdsItemReativaVenda.Open;

  PageControl1.ActivePage := TS_VENDAS_FINALIZADAS;

  DBGrid1.SetFocus;
end;

procedure TfrmReativarVendas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If cdsReativarVendaCUPOM.AsString = 'S'  then // condi��o
   DBGrid1.Canvas.Font.Color:= clGreen // coloque aqui a cor desejada
  ELSE
   DBGrid1.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
   DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
   DBGrid1.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito

  if gdSelected in State then
    DBGrid1.Canvas.Brush.Color := $009BFFFF;
    DBGRid1.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmReativarVendas.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If cdsCanceladasSTATUS.AsString = 'E'  then // condi��o
   DBGrid3.Canvas.Font.Color:= clRed // coloque aqui a cor desejada
  ELSE
   DBGrid3.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
   DBGrid3.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
   DBGrid3.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito

  if gdSelected in State then
    DBGrid3.Canvas.Brush.Color := $00D7FFFF;
    DBGRid3.DefaultDrawDataCell(Rect, Column.Field, State);

end;

procedure TfrmReativarVendas.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If cdsItemCanceladaSTATUS.AsString = 'C'  then // condi��o
   DBGrid4.Canvas.Font.Color:= clRed // coloque aqui a cor desejada
  ELSE
   DBGrid4.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
   DBGrid4.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
   DBGrid4.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito

  if gdSelected in State then
    DBGrid4.Canvas.Brush.Color := $00D7FFFF;
    DBGRid4.DefaultDrawDataCell(Rect, Column.Field, State);


end;

procedure TfrmReativarVendas.BB_CANCELARClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmReativarVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmReativarVendas := nil;
end;

procedure TfrmReativarVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    BB_CANCELARClick(Self);
  end;
  if Key = 13 then
  begin
    BB_REATIVARClick(Self);
  end;

end;

procedure TfrmReativarVendas.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  cdsReativarVenda.Close;
  cdsReativarVenda.Params[0].AsInteger := StrToInt(frmPdv.L_CAIXA.Caption);
  cdsReativarVenda.Params[1].AsDate    := DateTimePicker1.Date;
  cdsReativarVenda.Open;

  cdsItemReativaVenda.Close;
  cdsItemReativaVenda.Params[0].AsInteger := cdsReativarVendaNR_ORCAMENTO.AsInteger;
  cdsItemReativaVenda.Params[1].AsInteger := cdsReativarVendaID_LOJA.AsInteger;
  cdsItemReativaVenda.Open;

  PageControl1.ActivePage := TS_VENDAS_FINALIZADAS;
  DateTimePicker1.Date := Date;

  DBGrid1.SetFocus;
end;

procedure TfrmReativarVendas.SomaTotais;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames := '';
  DM.cdsDinamica.CommandText := ' SELECT SUM(IP.VL_TOTAL), SUM(IP.DESC_ITEM),SUM(IP.VL_TOTAL_AV),SUM(IP.QUANT)' +
    ' FROM TB_ITEM_PDV IP ' + ' WHERE IP.NR_ORCAMENTO = ' +
    DM.cdsPdvLocalNR_ORCAMENTO.AsString + ' AND IP.STATUS =''V''';
  // COLOCAR LOJA TAMBEM
  DM.cdsDinamica.Open;

  DM.cdsPdvLocal.Edit;
  // DM.cdsPdvLocalVL_LIQUIDO.AsFloat := cdsDinamica.Fields[0].AsFloat;
  // L_TOTAL_VENDA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvLocalVL_LIQUIDO.AsFloat);

  DM.cdsPdvLocalVL_ORCAMENTO.AsFloat := DM.cdsDinamica.Fields[0].AsFloat;
  DM.cdsPdvLocalVL_DESCONTO.AsFloat  := DM.cdsDinamica.Fields[1].AsFloat;
  DM.cdsPdvLocalVL_TOTAL_AV.AsFloat  := DM.cdsDinamica.Fields[2].AsFloat;

  DM.cdsPdvLocalVL_LIQUIDO.AsFloat :=
    (DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_DESCONTO.AsFloat);
  frmPdv.L_TOTAL_VENDA.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_ORCAMENTO.AsFloat);
  frmPdv.L_TOTAL_DESC_ENTRADA.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_DESCONTO.AsFloat);
  frmPdv.L_TOTAL_LIQUIDO.Caption := 'R$ ' + FormatFloat('###,###0.00',
    DM.cdsPdvLocalVL_LIQUIDO.AsFloat);
  frmPdv.L_QTD_PECAS.Caption := IntToStr(DM.cdsDinamica.Fields[3].AsInteger);

  DM.cdsPdvLocal.ApplyUpdates(0);

end;

procedure TfrmReativarVendas.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmReativarVendas.TS_CANCELADASShow(Sender: TObject);
begin
  cdsCanceladas.Close;
  cdsCanceladas.Params[0].AsDate    := DateTimePicker1.Date;
  cdsCanceladas.Params[1].AsInteger := StrToInt(frmPdv.L_CAIXA.Caption);
  cdsCanceladas.Open;

  cdsItemCancelada.Close;
  cdsItemCancelada.Params[0].AsInteger := cdsCanceladasNR_ORCAMENTO.AsInteger;
  cdsItemCancelada.Params[1].AsInteger := cdsCanceladasID_LOJA.AsInteger;
  cdsItemCancelada.Open;

end;

end.
