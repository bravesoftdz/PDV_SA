unit uPagamentoTroca;

interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.FMTBcd, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.DBCtrls, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPagamentoTroca = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    qTipoPagamento: TSQLQuery;
    dspTipoPagamento: TDataSetProvider;
    cdsTipoPagamento: TClientDataSet;
    dsTipoPagamento: TDataSource;
    GB_ESPECIE: TGroupBox;
    DBText1: TDBText;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Edit6: TEdit;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    Label11: TLabel;
    L_VALOR_PAGO: TLabel;
    Panel3: TPanel;
    Label12: TLabel;
    L_VALOR_DIFERENCA: TLabel;
    BB_CANCELAR: TBitBtn;
    P_TROCO: TPanel;
    L_TROCO: TLabel;
    Label9: TLabel;
    Timer1: TTimer;
    qTipoPagamentoID_TIPO_PAGAMENTO: TIntegerField;
    qTipoPagamentoDESCRICAO_PAGAMENTO: TStringField;
    cdsTipoPagamentoID_TIPO_PAGAMENTO: TIntegerField;
    cdsTipoPagamentoDESCRICAO_PAGAMENTO: TStringField;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BB_CANCELARKeyPress(Sender: TObject; var Key: Char);
    procedure Edit6Exit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure SomaValorPago;
  public
    { Public declarations
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);}
  end;

var
  frmPagamentoTroca: TfrmPagamentoTroca;
    Diferenca : Double;
implementation

{$R *.dfm}

uses UtrocaMercadoria, U_LIB, UD_PESQUISA, uDm, uPagamentoPdv;

procedure TfrmPagamentoTroca.BB_CANCELARClick(Sender: TObject);
begin
  GB_ESPECIE.Visible := False;
  frmTrocaMercadoria.cdsTroca.Refresh;
  frmPagamentoTroca.Close;
{  if DM.cdsPagamentoPdv.RecordCount>0 then
  begin
    if Application.MessageBox('      Aten��o! Se retornar a tela de vendas    '+#13
                              +'ser�o cancelados todos os pagamentos efetuados'+#13+
                               '         Deseja Cancelar mesmo assim?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
    begin
      DM.cdsPagamentoPdv.Open;
      DM.cdsPagamentoPdv.Cancel;
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames;
      DM.cdsDinamica.CommandText := ' DELETE FROM tb_pagamento_pdv P '+
                                    ' WHERE P.id_pdv ='+frmTrocaMercadoria.cdsTrocaID_PDV.AsString;
      DM.cdsDinamica.Execute;
      DM.cdsPagamentoPdv.ApplyUpdates(0);
      DM.cdsPagamentoPdv.Refresh;
      DM.cdsPagamentoPdv.Close;
      DM.cdsPagamentoPdv.Params[0].AsInteger := frmTrocaMercadoria.cdsTrocaNR_ORCAMENTO.AsInteger;
      DM.cdsPagamentoPdv.Open;
  //    ShowMessage('Pagamento(s) Cancelado(s)!');
      GB_ESPECIE.Visible := False;
      frmTrocaMercadoria.cdsTroca.Refresh;
      frmPagamentoTroca.Close;
    end
    else
    begin
       DBGrid1.SetFocus;
    end;
  end
  else
  begin
    frmPagamentoTroca.Close;
  end;}
//
end;

procedure TfrmPagamentoTroca.BB_CANCELARKeyPress(Sender: TObject;var Key: Char);
Var
Valor,ValorNovo : string;
begin
  if Key = #13 then
  begin
{    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);}
    GB_ESPECIE.Visible := True;

    if Diferenca = 0 then
    begin
      Diferenca := frmTrocaMercadoria.cdsTrocaVL_LIQUIDO.AsFloat;
    end
    else
    begin
      Valor:= L_VALOR_DIFERENCA.Caption;
      valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
      Diferenca :=StrToFloat(ValorNovo);
    end;

    DBGrid1.Enabled := False;
    DM.cdsPagamentoPdv.Close;
    DM.cdsPagamentoPdv.Params[0].AsInteger := frmTrocaMercadoria.cdsTrocaNR_ORCAMENTO.AsInteger;
    DM.cdsPagamentoPdv.Open;

    DM.cdsPagamentoPdv.Append;
    DM.cdsPagamentoPdvID_TIPO_PAGAMENTO.AsInteger := cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger;
    DM.cdsPagamentoPdvID_LOJA.AsInteger := frmTrocaMercadoria.cdsTrocaID_LOJA.AsInteger;
    DM.cdsPagamentoPdvID_PDV.AsInteger  := frmTrocaMercadoria.cdsTrocaID_PDV.AsInteger;
    Edit6.Text := FormatFloat('###,###0.00',Diferenca);
    Edit6.SetFocus;

  end;

end;

procedure TfrmPagamentoTroca.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    BB_CANCELARClick(Self);
  end;

end;

procedure TfrmPagamentoTroca.DBGrid1KeyPress(Sender: TObject; var Key: Char);
Var
Valor,ValorNovo : string;
begin
  if Key = #13 then
  begin
{    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);}
    GB_ESPECIE.Visible := True;

    if Diferenca = 0 then
    begin
      Diferenca := frmTrocaMercadoria.cdsTrocaVL_LIQUIDO.AsFloat;
    end
    else
    begin
      Valor:= L_VALOR_DIFERENCA.Caption;
      valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
      Diferenca :=StrToFloat(ValorNovo);
    end;

    DBGrid1.Enabled := False;
    DM.cdsPagamentoPdv.Close;
    DM.cdsPagamentoPdv.Params[0].AsInteger := frmTrocaMercadoria.cdsTrocaNR_ORCAMENTO.AsInteger;
    DM.cdsPagamentoPdv.Open;

    DM.cdsPagamentoPdv.Append;
    DM.cdsPagamentoPdvID_TIPO_PAGAMENTO.AsInteger := cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger;
    DM.cdsPagamentoPdvID_LOJA.AsInteger := frmTrocaMercadoria.cdsTrocaID_LOJA.AsInteger;
    DM.cdsPagamentoPdvID_PDV.AsInteger  := frmTrocaMercadoria.cdsTrocaID_PDV.AsInteger;
    Edit6.Text := FormatFloat('###,###0.00',Diferenca);
    Edit6.SetFocus;

  end;

end;

procedure TfrmPagamentoTroca.Edit6Exit(Sender: TObject);
var
Troco : Double;
Valor,ValorNovo : string;
begin
  if Edit6.Text<>'' then
  begin
    L_VALOR_PAGO.Caption := FormatFloat('###,###0.00',StrToFloat(Edit6.Text));
    Valor:= L_VALOR_PAGO.Caption;
    valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
    Diferenca :=StrToFloat(ValorNovo);

      if (frmTrocaMercadoria.cdsTrocaVL_LIQUIDO.AsFloat < Diferenca) AND (cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger > 1)then
      begin
        ShowMessage('N�o � Permitido Pagamento a mais para a Modalidade '+cdsTipoPagamentoDESCRICAO_PAGAMENTO.AsString);
        Exit;
      end;


//    Diferenca := StrToFloat(L_VALOR_DIFERENCA.Caption);
    if Application.MessageBox('Confirma��o','Confirma?',MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
      DM.cdsMovEstoque.Close;
      DM.cdsMovEstoque.Open;
      DM.cdsInsertSaidaTroca.Params[0].AsInteger := frmTrocaMercadoria.cdsTrocaID_LOJA.AsInteger;
      DM.cdsInsertSaidaTroca.Params[1].AsDate    :=StrToDate(frmTrocaMercadoria.cdsTrocaDT_ORCAMENTO.AsString);
      DM.cdsInsertSaidaTroca.Params[2].AsDate    :=StrToDate(frmTrocaMercadoria.cdsTrocaDT_ORCAMENTO.AsString);
      DM.cdsInsertSaidaTroca.Params[3].AsString  :='S_Troca_L_'+frmTrocaMercadoria.cdsTrocaID_LOJA.AsString;
      DM.cdsInsertSaidaTroca.Params[4].AsInteger := cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger;
      DM.cdsInsertSaidaTroca.Execute;
      DM.cdsMovEstoque.ApplyUpdates(0);
      DM.cdsMovEstoque.Refresh;
      //ENTRADA ESTOQUE
      DM.cdsMovEstoque.Close;
      DM.cdsMovEstoque.Open;
      DM.cdsInsertEntradaTroca.Params[0].AsInteger := frmTrocaMercadoria.cdsTrocaID_LOJA.AsInteger;
      DM.cdsInsertEntradaTroca.Params[1].AsDate    :=StrToDate(frmTrocaMercadoria.cdsTrocaDT_ORCAMENTO.AsString);
      DM.cdsInsertEntradaTroca.Params[2].AsDate    :=StrToDate(frmTrocaMercadoria.cdsTrocaDT_ORCAMENTO.AsString);
      DM.cdsInsertEntradaTroca.Params[3].AsString  :='E_Troca_L_'+frmTrocaMercadoria.cdsTrocaID_LOJA.AsString;
      DM.cdsInsertEntradaTroca.Execute;
      DM.cdsMovEstoque.ApplyUpdates(0);
      DM.cdsMovEstoque.Refresh;

      //TROCA
      DM.cdsMovEstoque.Close;
      DM.cdsMovEstoque.Open;
      DM.cdsGravaEstoqueProdutoTroca.Params[0].AsInteger :=  frmTrocaMercadoria.cdsTrocaID_LOJA.AsInteger;
      DM.cdsGravaEstoqueProdutoTroca.Params[1].AsDate    :=  StrToDate(frmTrocaMercadoria.cdsTrocaDT_ORCAMENTO.AsString);
      DM.cdsGravaEstoqueProdutoTroca.Params[2].AsString  :=  'D';
      DM.cdsGravaEstoqueProdutoTroca.Execute;
      DM.cdsMovEstoque.ApplyUpdates(0);
      DM.cdsMovEstoque.Refresh;


      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT MAX(ID_PAGAMENTO_PDV) FROM tb_pagamento_pdv';
      DM.cdsDinamica.Open;
      Valor := Edit6.Text;
      valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
      DM.cdsPagamentoPdvID_PAGAMENTO_PDV.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
      DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat := StrToFloat(ValorNovo);
      DM.cdsDinamica.Close;
      Troco := (Diferenca - frmTrocaMercadoria.cdsTrocaVL_LIQUIDO.AsFloat);
      DM.cdsPagamentoPdv.Open;
      DM.cdsPagamentoPdv.Edit;
      DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat := ( DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat - Troco);
      DM.cdsPagamentoPdv.ApplyUpdates(0);
      DM.cdsPagamentoPdv.Refresh;


      if Application.MessageBox('Deseja Imprimir Troca?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
      begin
       frmTrocaMercadoria.ImprimirTermica;
      end;
      //


      frmTrocaMercadoria.cdsTroca.Edit;
      frmTrocaMercadoria.cdsTrocaSTATUS.Value:='D';
      frmTrocaMercadoria.cdsTroca.ApplyUpdates(0);
      frmTrocaMercadoria.cdsTroca.Refresh;
      ShowMessage(' TROCA REALIZADA COM SUCESSO !!!! ');
      //GerenciaBotoes2;
      //GB_ESPECIE.Visible := False;
      //DBGrid1.Enabled := True;
      //DBGrid1.SetFocus;
      Close;
      end
      else
      begin
        GB_ESPECIE.Visible := False;
        DBGrid1.Enabled := True;
        DBGrid1.SetFocus;
      end;
 end;

end;

procedure TfrmPagamentoTroca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    BB_CANCELARClick(Self);
  end;

end;

procedure TfrmPagamentoTroca.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmPagamentoTroca.FormShow(Sender: TObject);
begin
  DBGrid1.Enabled := True;
  DBGrid1.SetFocus;
  Edit6.Text := '0,00';
  L_VALOR_PAGO.Caption := '0,00';
  L_VALOR_DIFERENCA.Caption := FormatFloat('###,###0.00',frmTrocaMercadoria.cdsTrocaVL_LIQUIDO.AsFloat);
  cdsTipoPagamento.Close;
  cdsTipoPagamento.Open;
  frmTrocaMercadoria.cdsTroca.Open;
  DBGrid1.SetFocus;
  BB_CANCELAR.Visible := True;

end;

procedure TfrmPagamentoTroca.SomaValorPago;
Var
 SOMA : Double;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT SUM(P.vl_pagamento) FROM tb_pagamento_pdv P '+
                                ' WHERE P.id_pdv = '+frmTrocaMercadoria.cdsTrocaID_PDV.AsString;
  DM.cdsDinamica.Open;

  L_VALOR_PAGO.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
  SOMA := (frmTrocaMercadoria.cdsTrocaVL_LIQUIDO.AsFloat - DM.cdsDinamica.Fields[0].AsFloat);

  L_VALOR_DIFERENCA.Caption := FormatFloat('###,,###0.00',SOMA);

end;

procedure TfrmPagamentoTroca.Timer1Timer(Sender: TObject);
begin
  P_TROCO.Visible := False;
{  Label1.Visible := True;
  Label8.Visible := True;
  Label11.Visible := True;
  Label12.Visible := True;}
  Panel2.Visible := True;
  Panel3.Visible := True;
  L_VALOR_PAGO.Visible := True;
  L_VALOR_DIFERENCA.Visible := True;
  Timer1.Enabled := False;
  //Timer2.Enabled := False;
  frmPagamentoPdv.Close;
  frmTrocaMercadoria.BB_CONFIRMARClick(Self);

end;

end.
