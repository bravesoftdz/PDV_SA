unit uPagamentoPdv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.jpeg,Printers,DateUtils;

type
  TfrmPagamentoPdv = class(TForm)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qTipoPagamento: TSQLQuery;
    dspTipoPagamento: TDataSetProvider;
    cdsTipoPagamento: TClientDataSet;
    dsTipoPagamento: TDataSource;
    qTipoPagamentoID_TIPO_PAGAMENTO: TIntegerField;
    qTipoPagamentoDESCRICAO_PAGAMENTO: TStringField;
    cdsTipoPagamentoID_TIPO_PAGAMENTO: TIntegerField;
    cdsTipoPagamentoDESCRICAO_PAGAMENTO: TStringField;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    GB_ESPECIE: TGroupBox;
    DBEdit6: TDBEdit;
    DBGrid2: TDBGrid;
    DBText1: TDBText;
    Timer1: TTimer;
    Label8: TLabel;
    Timer2: TTimer;
    BB_CANCELAR: TBitBtn;
    Edit6: TEdit;
    BB_CUPOM: TBitBtn;
    Label7: TLabel;
    Memo2: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Label11: TLabel;
    L_VALOR_PAGO: TLabel;
    Panel3: TPanel;
    Label12: TLabel;
    L_VALOR_DIFERENCA: TLabel;
    qContasReceber: TSQLQuery;
    dspContasReceber: TDataSetProvider;
    cdsContasReceber: TClientDataSet;
    dsContasReceber: TDataSource;
    qContasReceberID_CONTAS_RECEBER: TIntegerField;
    qContasReceberID_PDV: TIntegerField;
    qContasReceberID_LOJA: TIntegerField;
    qContasReceberID_PLANO_PAGAMENTO: TIntegerField;
    qContasReceberID_FORMA_PAGAMENTO: TIntegerField;
    qContasReceberID_VENDEDOR: TIntegerField;
    qContasReceberID_USUARIO: TIntegerField;
    qContasReceberDT_EMISSAO: TDateField;
    qContasReceberDT_VENCIMENTO: TDateField;
    qContasReceberDT_PAGAMENTO: TDateField;
    qContasReceberQT_DIAS: TIntegerField;
    qContasReceberQT_DIAS_ATRAZO: TIntegerField;
    qContasReceberQT_PARCELA: TIntegerField;
    qContasReceberNR_DOC: TStringField;
    qContasReceberVL_COMPRA: TFMTBCDField;
    qContasReceberVL_PARCELA: TFMTBCDField;
    qContasReceberNR_PARCELA: TStringField;
    qContasReceberSTATUS: TStringField;
    qContasReceberVENEDOR: TStringField;
    qContasReceberFORMA_PAGAMENTO: TStringField;
    cdsContasReceberID_CONTAS_RECEBER: TIntegerField;
    cdsContasReceberID_PDV: TIntegerField;
    cdsContasReceberID_LOJA: TIntegerField;
    cdsContasReceberID_PLANO_PAGAMENTO: TIntegerField;
    cdsContasReceberID_FORMA_PAGAMENTO: TIntegerField;
    cdsContasReceberID_VENDEDOR: TIntegerField;
    cdsContasReceberID_USUARIO: TIntegerField;
    cdsContasReceberDT_EMISSAO: TDateField;
    cdsContasReceberDT_VENCIMENTO: TDateField;
    cdsContasReceberDT_PAGAMENTO: TDateField;
    cdsContasReceberQT_DIAS: TIntegerField;
    cdsContasReceberQT_DIAS_ATRAZO: TIntegerField;
    cdsContasReceberQT_PARCELA: TIntegerField;
    cdsContasReceberNR_DOC: TStringField;
    cdsContasReceberVL_COMPRA: TFMTBCDField;
    cdsContasReceberVL_PARCELA: TFMTBCDField;
    cdsContasReceberNR_PARCELA: TStringField;
    cdsContasReceberSTATUS: TStringField;
    cdsContasReceberVENEDOR: TStringField;
    cdsContasReceberFORMA_PAGAMENTO: TStringField;
    DBGrid3: TDBGrid;
    DB_PLANOPG: TDBGrid;
    qContasReceberCAIXA: TIntegerField;
    cdsContasReceberCAIXA: TIntegerField;
    Panel4: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    P_TROCO: TPanel;
    L_TROCO: TLabel;
    Label9: TLabel;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit6Exit(Sender: TObject);
    procedure BB_CUPOMClick(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure DB_PLANOPGKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    Procedure SomaValorPago;
    procedure GeraCupomFiscal;
    Procedure ImprimirTermica;
    Procedure ImprimirMemo(Memo: TMemo);
    Procedure GerarParcelas;
    Procedure GravarVendaAvista;
    function UltimoDia: integer;
  public
    { Public declarations }
  end;

var
  frmPagamentoPdv: TfrmPagamentoPdv;
  Diferenca : Double;
  CaminhoImpressora : string;
  DiasDoMes : TDate;
  vEsc      : Boolean;


implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDm, uPdv, uDigitaPrecoVenda;

procedure TfrmPagamentoPdv.BB_CANCELARClick(Sender: TObject);
begin
  if DM.cdsPagamentoPdv.RecordCount>0 then
  begin
    if Application.MessageBox('      Aten��o! Se retornar a tela de vendas    '+#13
                              +'ser�o cancelados todos os pagamentos efetuados'+#13+
                               '         Deseja Cancelar mesmo assim?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
    begin
      DM.cdsPagamentoPdv.Open;
      DM.cdsPagamentoPdv.Cancel;
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames;
      DM.cdsDinamica.CommandText := ' DELETE FROM TB_PAGAMENTO_PDV P '+
                                    ' WHERE P.id_pdv ='+DM.cdsPdvLocalID_PDV.AsString;
      DM.cdsDinamica.Execute;
      DM.cdsPagamentoPdv.ApplyUpdates(0);
      DM.cdsPagamentoPdv.Refresh;
      DM.cdsPagamentoPdv.Close;
      DM.cdsPagamentoPdv.Params[0].AsInteger := DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
      DM.cdsPagamentoPdv.Open;
  //    ShowMessage('Pagamento(s) Cancelado(s)!');
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames;
      DM.cdsDinamica.CommandText := ' DELETE FROM TB_CONTAS_RECEBER CR '+
                                    ' WHERE CR.id_pdv ='+DM.cdsPdvLocalID_PDV.AsString;
      DM.cdsDinamica.Execute;

      GB_ESPECIE.Visible := False;
      DM.cdsPdvLocal.Refresh;
      frmPagamentoPdv.Close;
    end
    else
    begin
       DBGrid1.SetFocus;
    end;
  end
  else
  begin
    DM.cdsPagamentoPdv.CancelUpdates;
    frmPagamentoPdv.Close;
    frmPdv.L_INCLUIR_ITEMClick(Self);
  end;
end;

procedure TfrmPagamentoPdv.BB_CUPOMClick(Sender: TObject);
begin
  if DM.cdsPdvLocalCUPOM.Value ='S' then
  begin
    ShowMessage('Cupom J� Emitido Para Esse Or�amento.');
    Exit;
  end;
  if Application.MessageBox('Deseja Realmente Enviar Venda Para NFC-e ?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes  then
  begin
    GeraCupomFiscal;
  end;

end;

procedure TfrmPagamentoPdv.DBEdit6Exit(Sender: TObject);
var
Troco : Double;
Valor,ValorNovo : string;
begin
    SomaValorPago;
    Valor:= L_VALOR_DIFERENCA.Caption;
    valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
    Diferenca :=StrToFloat(ValorNovo);
    if Application.MessageBox('Confirma��o','Confirma?',MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT MAX(ID_PAGAMENTO_PDV) FROM tb_pagamento_pdv';
      DM.cdsDinamica.Open;

      DM.cdsPagamentoPdvID_PAGAMENTO_PDV.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
      DM.cdsDinamica.Close;


      GB_ESPECIE.Visible := False;
      DBGrid1.Enabled := True;
      DBGrid1.SetFocus;

      if (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat > Diferenca) AND (DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger > 1)then
      begin
        ShowMessage('N�o � Permitido Pagamento a mais para a Modalidade '+DM.cdsPlanoPagamentoDESCRICAO_PAGAMENTO.AsString);
        Exit;
      end;

      if (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat > Diferenca) AND (DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger = 1)then
      begin
        Troco := (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat - Diferenca);
        P_TROCO.Visible := True;
        P_TROCO.Align   := alClient;
        L_TROCO.Caption := ' T R O C O    '+FormatFloat('###,###0.00',Troco);
        Timer1.Enabled := True;
        Label1.Visible := False;
        Label8.Visible := False;
        Label11.Visible := False;
        Label12.Visible := False;
        Panel2.Visible := False;
        Panel3.Visible := False;
        L_VALOR_PAGO.Visible := False;
        L_VALOR_DIFERENCA.Visible := False;
        BB_CANCELAR.Visible := False;
        BB_CUPOM.Visible := False;
       // Diferenca := (Diferenca - DM.cdsPdvLocalVL_LIQUIDO.AsFloat);
        DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat := ( DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat - Troco);

        DM.cdsPagamentoPdv.ApplyUpdates(0);
        DM.cdsPagamentoPdv.Refresh;
        cdsContasReceber.ApplyUpdates(0);
        SomaValorPago;
        {DM.cdsPdvLocal.Edit;
        DM.cdsPdvLocalSTATUS.Value:='F';
        DM.cdsPdvLocal.ApplyUpdates(0);
        DM.cdsPdvLocal.Refresh;}

      end
      else
      begin
        //Diferenca := (DM.cdsPdvLocalVL_LIQUIDO.AsFloat - Diferenca);
        DM.cdsPagamentoPdv.ApplyUpdates(0);
        DM.cdsPagamentoPdv.Refresh;

        cdsContasReceber.ApplyUpdates(0);

        SomaValorPago;
        {DM.cdsPdvLocal.Edit;
        DM.cdsPdvLocalSTATUS.Value:='F';
        DM.cdsPdvLocal.ApplyUpdates(0);
        DM.cdsPdvLocal.Refresh;}
        if L_VALOR_DIFERENCA.Caption = '0,00' then
        begin
            P_TROCO.Visible := True;
            P_TROCO.Align   := alClient;
            L_TROCO.Caption := '.';
            Timer1.Enabled := True;
            Label1.Visible := False;
            Label8.Visible := False;
            Label11.Visible := False;
            Label12.Visible := False;
            Panel2.Visible := False;
            Panel3.Visible := False;
            L_VALOR_PAGO.Visible := False;
            L_VALOR_DIFERENCA.Visible := False;
            BB_CANCELAR.Visible := False;
            BB_CUPOM.Visible := False;
        end;
      end;
    end
    else
    begin
      GB_ESPECIE.Visible := False;
      DBGrid1.Enabled := True;
      DBGrid1.SetFocus;
    end;
end;

procedure TfrmPagamentoPdv.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmPagamentoPdv.DBGrid1CellClick(Column: TColumn);
Var
Valor,ValorNovo : string;
begin
      if (DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger >1) or (DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger <= 3)  then
      begin
        SomaValorPago;

//        DB_PLANOPG.Visible := True;
//        DB_PLANOPG.SetFocus;
      end
      else
      begin
        GB_ESPECIE.Visible := True;

        if Diferenca = 0 then
        begin
          SomaValorPago;
        end
        else
        begin
          Valor:= L_VALOR_DIFERENCA.Caption;
          valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
          Diferenca :=StrToFloat(ValorNovo);
        end;

        DBGrid1.Enabled := False;
        DM.cdsPagamentoPdv.Close;
        DM.cdsPagamentoPdv.Params[0].AsInteger := DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
        DM.cdsPagamentoPdv.Open;

        DM.cdsPagamentoPdv.Append;
        DM.cdsPagamentoPdvID_TIPO_PAGAMENTO.AsInteger := DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger;
        DM.cdsPagamentoPdvID_LOJA.AsInteger := DM.cdsPdvLocalID_LOJA.AsInteger;
        DM.cdsPagamentoPdvID_PDV.AsInteger  := DM.cdsPdvLocalID_PDV.AsInteger;
        SomaValorPago;

        Edit6.Text := FormatFloat('###,###0.00',Diferenca);
        Edit6.SetFocus;
      end;

end;

procedure TfrmPagamentoPdv.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  Valor,ValorNovo : string;
begin
{   if (DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger = 1) and (DM.cdsPlanoPagamentoID_FORMA_PAGAMENTO.AsInteger > 1) then
  begin
    ShowMessage(' Tipo de Recebimento DINHEIRO. Forma de Recebimento N�o Pode Ser Parceleda. Favor Selecionar Avista.');
    DB_PLANOPG.SetFocus;
    Exit;
  end;}

 if vEsc = False then
 begin
  GB_ESPECIE.Visible := True;
  if Diferenca = 0 then
  begin
    SomaValorPago;
  end
  else
  begin
    Valor:= L_VALOR_DIFERENCA.Caption;
    valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
    Diferenca :=StrToFloat(ValorNovo);
  end;

  DBGrid1.Enabled := False;
  DM.cdsPagamentoPdv.Close;
  DM.cdsPagamentoPdv.Params[0].AsInteger := DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
  DM.cdsPagamentoPdv.Open;

  DM.cdsPagamentoPdv.Append;
  DM.cdsPagamentoPdvID_TIPO_PAGAMENTO.AsInteger := DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger;
  DM.cdsPagamentoPdvID_LOJA.AsInteger := DM.cdsPdvLocalID_LOJA.AsInteger;
  DM.cdsPagamentoPdvID_PDV.AsInteger  := DM.cdsPdvLocalID_PDV.AsInteger;
  Edit6.Text := FormatFloat('###,###0.00',Diferenca);
  Edit6.SetFocus;
 end
 else
 begin
   Exit;
 end;


end;

procedure TfrmPagamentoPdv.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
Valor,ValorNovo : string;
begin
      if (DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger >1) or (DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger <= 3)  then
      begin
        SomaValorPago;

//        DB_PLANOPG.Visible := True;
//        DB_PLANOPG.SetFocus;
      end
      else
      begin
        GB_ESPECIE.Visible := True;

        if Diferenca = 0 then
        begin
          SomaValorPago;
        end
        else
        begin
          Valor:= L_VALOR_DIFERENCA.Caption;
          valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
          Diferenca :=StrToFloat(ValorNovo);
        end;

        DBGrid1.Enabled := False;
        DM.cdsPagamentoPdv.Close;
        DM.cdsPagamentoPdv.Params[0].AsInteger := DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
        DM.cdsPagamentoPdv.Open;

        DM.cdsPagamentoPdv.Append;
        DM.cdsPagamentoPdvID_TIPO_PAGAMENTO.AsInteger := DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger;
        DM.cdsPagamentoPdvID_LOJA.AsInteger := DM.cdsPdvLocalID_LOJA.AsInteger;
        DM.cdsPagamentoPdvID_PDV.AsInteger  := DM.cdsPdvLocalID_PDV.AsInteger;
        SomaValorPago;

        Edit6.Text := FormatFloat('###,###0.00',Diferenca);
        Edit6.SetFocus;
      end;

end;

procedure TfrmPagamentoPdv.DB_PLANOPGKeyPress(Sender: TObject; var Key: Char);
var
  Valor,ValorNovo : string;
begin
 {  if (cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger = 1) and (DM.cdsPlanoPagamentoID_FORMA_PAGAMENTO.AsInteger > 1) then
  begin
    ShowMessage(' Tipo de Recebimento DINHEIRO. Forma de Recebimento N�o Pode Ser Parceleda. Favor Selecionar Avista.');
    DB_PLANOPG.SetFocus;
    Exit;
  end;



  GB_ESPECIE.Visible := True;

  if Diferenca = 0 then
  begin
    SomaValorPago;
  end
  else
  begin
    Valor:= L_VALOR_DIFERENCA.Caption;
    valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
    Diferenca :=StrToFloat(ValorNovo);
  end;

  DBGrid1.Enabled := False;
  DM.cdsPagamentoPdv.Close;
  DM.cdsPagamentoPdv.Params[0].AsInteger := DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
  DM.cdsPagamentoPdv.Open;

  DM.cdsPagamentoPdv.Append;
  DM.cdsPagamentoPdvID_TIPO_PAGAMENTO.AsInteger := cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger;
  DM.cdsPagamentoPdvID_LOJA.AsInteger := DM.cdsPdvLocalID_LOJA.AsInteger;
  DM.cdsPagamentoPdvID_PDV.AsInteger  := DM.cdsPdvLocalID_PDV.AsInteger;
  Edit6.Text := FormatFloat('###,###0.00',Diferenca);
  Edit6.SetFocus;
 }
end;

procedure TfrmPagamentoPdv.Edit6Enter(Sender: TObject);
begin

{  if (DM.cdsPdvLocalMODALIDADE.AsInteger = 4 ) and (DM.cdsPdvLocalVL_LIQUIDO.AsFloat < 300) and (cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger = 2) then
  begin
    ShowMessage('Plano de Pagamento Inv�lido Para Valor da Compra, Permitido Apenas Para Compras a Partir de R$ 300,00.');
    Edit6.Clear;
    BB_CANCELARClick(Self);
  end;}
end;

procedure TfrmPagamentoPdv.Edit6Exit(Sender: TObject);
var
Troco : Double;
Valor,ValorNovo : string;
begin
  if Edit6.Text<>'' then
  begin
//---    VERIFICAR ERRO AQUI NO L_VALOR_DIFERENCA *----

    SomaValorPago;
    Valor:= L_VALOR_DIFERENCA.Caption;
    valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
    Diferenca :=StrToFloat(ValorNovo);
//
    cdsContasReceber.Close;
    cdsContasReceber.Params[0].AsInteger := StrToInt(DM.cdsPdvLocalID_LOJA.AsString);
    cdsContasReceber.Params[1].AsDate    := StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
    cdsContasReceber.Params[2].AsInteger := StrToInt(DM.cdsPdvLocalID_PDV.AsString);
    cdsContasReceber.Open;

    if (DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger > 1) AND (cdsContasReceber.RecordCount >= 0) then
    begin
      frmPagamentoPdv.ClientHeight := 366;
      GerarParcelas;
    end
    else
    begin
      frmPagamentoPdv.ClientHeight := 366;
      GravarVendaAvista;
    end;

//    Diferenca := StrToFloat(L_VALOR_DIFERENCA.Caption);
    if Application.MessageBox('Confirma��o','Confirma?',MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT MAX(ID_PAGAMENTO_PDV) FROM tb_pagamento_pdv';
      DM.cdsDinamica.Open;
      Valor := Edit6.Text;
      valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
      DM.cdsPagamentoPdvID_PAGAMENTO_PDV.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
      DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat := StrToFloat(ValorNovo);
      DM.cdsDinamica.Close;

      cdsContasReceber.ApplyUpdates(0);

      GB_ESPECIE.Visible := False;
      DBGrid1.Enabled := True;
      DBGrid1.SetFocus;

      if (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat > Diferenca) AND (DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger > 1)then
      begin
        ShowMessage('N�o � Permitido Pagamento a mais para a Modalidade '+DM.cdsPlanoPagamentoDESCRICAO_PAGAMENTO.AsString);
        Exit;
      end;

      if (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat > Diferenca) AND (DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger = 1)then
      begin
        Troco := (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat - Diferenca);
        L_TROCO.Caption := FormatFloat('###,###0.00',Troco);
        if Application.MessageBox('Deseja Imprimir Venda?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
        begin
          ImprimirTermica;
          DM.cdsPdvLocal.Edit;
//          DM.cdsPdvLocalVL_DESCONTO.AsFloat :=(DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_TOTAL_AV.AsFloat);
          DM.cdsPdvLocalVL_LIQUIDO.AsFloat  :=(DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_DESCONTO.AsFloat);
          DM.cdsPdvLocal.ApplyUpdates(0);
        end;
          DM.cdsPdvLocal.Edit;
//          DM.cdsPdvLocalVL_DESCONTO.AsFloat :=(DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_TOTAL_AV.AsFloat);
          DM.cdsPdvLocalVL_LIQUIDO.AsFloat  :=(DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_DESCONTO.AsFloat);
          DM.cdsPdvLocal.ApplyUpdates(0);
        P_TROCO.Visible := True;
      //  DBGrid2.SetFocus;
        P_TROCO.Align   := alClient;
        L_TROCO.Caption := ' T R O C O    '+FormatFloat('###,###0.00',Troco);
        frmPdv.L_VLAVISTA.Caption := 'R$ 0,00';
        frmPdv.L_ECONOMIA.Caption := 'R$ 0,00';
        Timer1.Enabled := True;
        Label1.Visible := False;
        Label8.Visible := False;
        Label11.Visible := False;
        Label12.Visible := False;
        Panel2.Visible := False;
        Panel3.Visible := False;
        DB_PLANOPG.Visible := False;
        L_VALOR_PAGO.Visible := False;
        L_VALOR_DIFERENCA.Visible := False;
        BB_CANCELAR.Visible := False;
        BB_CUPOM.Visible := False;
        DM.cdsPagamentoPdv.Open;
        DM.cdsPagamentoPdv.Edit;
        DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat := ( DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat - Troco);
        DM.cdsPagamentoPdv.ApplyUpdates(0);
        DM.cdsPagamentoPdv.Refresh;


        cdsContasReceber.Close;
        cdsContasReceber.Params[0].AsInteger := StrToInt(DM.cdsPdvLocalID_LOJA.AsString);
        cdsContasReceber.Params[1].AsDate    := StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
        cdsContasReceber.Params[2].AsInteger := StrToInt(DM.cdsPdvLocalID_PDV.AsString);
        cdsContasReceber.Open;
        SomaValorPago;
      end
      else
      begin
        DM.cdsPagamentoPdv.ApplyUpdates(0);
        DM.cdsPagamentoPdv.Refresh;
        SomaValorPago;
        if L_VALOR_DIFERENCA.Caption = '0,00' then
        begin
          L_TROCO.Caption := '0,00';
          if Application.MessageBox('Deseja Imprimir Venda?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
          begin
            ImprimirTermica;
            DM.cdsPdvLocal.Edit;
//            DM.cdsPdvLocalVL_DESCONTO.AsFloat :=(DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_TOTAL_AV.AsFloat);
            DM.cdsPdvLocalVL_LIQUIDO.AsFloat  :=(DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_DESCONTO.AsFloat);
            DM.cdsPdvLocal.ApplyUpdates(0);

          end;
            DM.cdsPdvLocal.Edit;
//            DM.cdsPdvLocalVL_DESCONTO.AsFloat :=(DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_TOTAL_AV.AsFloat);
            DM.cdsPdvLocalVL_LIQUIDO.AsFloat  :=(DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_DESCONTO.AsFloat);
            DM.cdsPdvLocal.ApplyUpdates(0);
            P_TROCO.Visible := True;
//            DBGrid2.SetFocus;
            frmPdv.L_VLAVISTA.Caption := 'R$ 0,00';
            frmPdv.L_ECONOMIA.Caption := 'R$ 0,00';

            P_TROCO.Align   := alClient;
            L_TROCO.Caption := '.';
            Timer1.Enabled := True;
            Label1.Visible := False;
            Label8.Visible := False;
            Label11.Visible := False;
            Label12.Visible := False;
            Panel2.Visible := False;
            Panel3.Visible := False;
            DB_PLANOPG.Visible := False;
            L_VALOR_PAGO.Visible := False;
            L_VALOR_DIFERENCA.Visible := False;
            BB_CANCELAR.Visible := False;
            BB_CUPOM.Visible := False;

            cdsContasReceber.Close;
            cdsContasReceber.Params[0].AsInteger := StrToInt(DM.cdsPdvLocalID_LOJA.AsString);
            cdsContasReceber.Params[1].AsDate    := StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
            cdsContasReceber.Params[2].AsInteger := StrToInt(DM.cdsPdvLocalID_PDV.AsString);
            cdsContasReceber.Open;
        end;
      end;
    end
    else
    begin
      DM.cdsPagamentoPdv.Cancel;
      GB_ESPECIE.Visible := False;
      DBGrid1.Enabled := True;
      DBGrid1.SetFocus;
    end;
  end;
end;

procedure TfrmPagamentoPdv.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    DM.cdsPagamentoPdv.Cancel;
    Edit6.Clear;
    BB_CANCELARClick(Self);
  end;
end;

procedure TfrmPagamentoPdv.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmPagamentoPdv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := False;
  Timer2.Enabled := False;
end;

procedure TfrmPagamentoPdv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    BB_CANCELARClick(Self);
    vEsc := True;
    Exit;
  end;

end;

Procedure TfrmPagamentoPdv.FormShow(Sender: TObject);
begin
  vEsc := False;
  DBGrid1.Enabled := True;
  DBGrid1.SetFocus;
  L_VALOR_PAGO.Caption := '0,00';

{  if cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger = 1 then
  begin
    L_VALOR_DIFERENCA.Caption := FormatFloat('###,###0.00',dm.cdsPdvLocalVL_TOTAL_AV.AsFloat);
  end
  else
  begin
    L_VALOR_DIFERENCA.Caption := FormatFloat('###,###0.00',dm.cdsPdvLocalVL_LIQUIDO.AsFloat);
  end;}
  SomaValorPago;
  cdsTipoPagamento.Close;
  cdsTipoPagamento.Open;
  DM.cdsPdvLocal.Open;
  DBGrid1.SetFocus;

  DM.cdsPagamentoPdv.Close;
  DM.cdsPagamentoPdv.Params[0].AsInteger := DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
  DM.cdsPagamentoPdv.Open;

  BB_CANCELAR.Visible := True;
  BB_CUPOM.Visible := True;
  CaminhoImpressora := DM.IMPRESSORA;

  DM.cdsPlanoPagamento.Close;
  DM.cdsPlanoPagamento.Open;


end;

procedure TfrmPagamentoPdv.GeraCupomFiscal;
var arq: TextFile;
linha,cnpj , aliquota,vlVenda: String;
item: Integer;
CaminhoExporta,vldiferenca : String;

vldiferencaNovo,vlDiferencaD,vlUnit, vlTotal, TotalLiqui,Desconto,TotalVenda : Double;
Var
    StrX : String;
begin
//StrX := '10';
//InputBox('CPF','CPF Cliente ', StrX);
//ShowMessage(StrX);

  CaminhoExporta := DM.EXPORTAR;

InputQuery('','C.P.F', StrX);
//ShowMessage(StrX);
  if StrX = '' then
  begin
    cnpj:=''
  end
  else
  begin
    cnpj:= StrX ;
 end;

  try
    //
    TotalLiqui  := DM.cdsPdvLocalVL_ORCAMENTO.AsFloat;;
    vldiferenca := StringReplace(L_VALOR_DIFERENCA.Caption,'.','',[rfReplaceAll]);
    vlDiferencaD := StrToFloat(vldiferenca);
    vldiferencanovo := vlDiferencaD;
    TotalVenda := vldiferencaNovo;
    Desconto   := (TotalLiqui-TotalVenda);
    AssignFile (arq,CaminhoExporta+DM.cdsPdvLocalNR_ORCAMENTO.AsString+'.djp');
    Rewrite ( arq );
    Write ( arq,('PRE|'+DM.cdsPdvLocalNR_ORCAMENTO.AsString+'|'
                       +FormatDateTime('DDMMYYYY',StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString))
                       +FormatDateTime('HHMMSS',Time))+'|'+'|'
                       +DM.cdsPdvLocalNOME_CLIENTE.AsString+'|'
                       +cnpj+'|'+DM.cdsPagamentoPdvID_TIPO_PAGAMENTO.AsString+'|'
                       +FormatFloat('###0.00',TotalLiqui)+'|'
                       +FormatFloat('###0.00',Desconto)+'|'
                       +FormatFloat('###0.00',0)+'|'//ACRESCIMO
                       +FormatFloat('###0.00',0)+'|'// TOTAL ITENS
                       +DM.cdsPdvLocalID_VENDEDOR.AsString+'|'   //cod.vendedor
                       +''+'|'  //obs
                       +''+'|'  //RG/Inscri��o Estadual
                       +''+'|'  //Endere�o
                       +''+'|'  //N�mero
                       +''+'|'  // complemento
                       +''+'|'  // Bairro
                       +''+'|'  //cidade
                       +''+'|'  // uf
                       +''+'|'  // cep
                       +''+'|'  // nivel credito

          );

    item := 1;

  {  if (cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger = 1) or (cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger = 3) then
    begin
      vlUnit := DM.cdsItemPdvLocalVL_AVISTA.AsFloat;
      vlTotal:= DM.cdsItemPdvLocalVL_TOTAL_AV.AsFloat;
    end
    else
    begin
      vlUnit   := DM.cdsItemPdvLocalVL_UNIT.AsFloat;
      vlTotal  := DM.cdsItemPdvLocalVL_TOTAL.AsFloat;
    end; }




    DM.cdsItemPdvLocal.First;
    while not DM.cdsItemPdvLocal.Eof do
    begin
      WriteLn ( arq );
      Write ( arq,('PIT|'+IntToStr(item)+'|'+DM.cdsItemPdvLocalID_PRODUTO.AsString+'|'
              +FormatFloat('###0.000',DM.cdsItemPdvLocalQUANT.AsFloat)+'|'
              +FormatFloat('###0.00',DM.cdsItemPdvLocalVL_UNIT.AsFloat)+'|'
              +FormatFloat('###0.00',0)+'|'
              +FormatFloat('###0.00',0)+'|'
              +FormatFloat('###0.00',DM.cdsItemPdvLocalVL_TOTAL.AsFloat)+'|'
              +DM.cdsItemPdvLocalCOD_BARRA.AsString+'|'
              +DM.cdsItemPdvLocalDESCRICAO.AsString+'|'
              +''+'|'
              +DM.cdsItemPdvLocalUNIDADE.AsString+'|'
              +'T'+'|'
              +FormatFloat('###0.00',18.00)+'|'
              +'N'+'|'
              +'N'+'|'
              +'N'+'|'
              +'N'+'|'
              +FormatFloat('###0.00',0.00)+'|'
              +'0.00'+'|'
              +DM.cdsPDVLocalID_VENDEDOR.AsString+'|'
              +DM.cdsPdvLocalNOME.AsString+'|'
              +''+'|' //23 Gtin Cont�bil AN Tamanho m�ximo de 20 caracteres
              +''+'|' //24 Ext IPI AN Tamanho m�ximo de 20 caracteres
              +''+'|' //25 Gtin Tribut�vel AN Tamanho m�ximo de 20 caracteres
              +''+'|' //26 ID ICMS N Chave estrangeira para a Tabela de ICMS. (NFe)M�ximo de 6 d�gitos.
              +''+'|' //27 ID IPI N Chave estrangeira para a Tabela de IPI. (NFe) M�ximo de 6 d�gitos.
              +''+'|' //28 ID ISSQN N Chave estrangeira para a Tabela de ISSQN. (NFe) M�ximo de 6 d�gitos.
              +''+'|' //29 ID II N Chave estrangeira para a Tabela de Impostos de Importa��o. (NFe) M�ximo de 6 d�gitos.
              +''+'|' //30 ID PIS N Chave estrangeira para a Tabela de PIS. (NFe) M�ximo de 6 d�gitos.
              +''+'|' //31 ID PIS ST N Chave estrangeira para a Tabela de PIS ST. (NFe) M�ximo de 6 d�gitos.
              +''+'|' //32 ID COFINS N Chave estrangeira para a Tabela de COFINS. (NFe) M�ximo de 6 d�gitos.
              +''+'|'  //33 ID CONFINS ST N
              +DM.cdsItemPdvLocalNCM_PRODUTO.AsString+'|'//34 NCM AN Tamanho m�ximo de 20 caracteres. Atualiza��o de layout na vers�o 0.3.19 do DJIntegra��o.
              +'N'+'|' //35 KIT AN Informe 'S' caso este produto seja um Kit.
              +'N'+'|' //36 Prazo Devolu��o. AN Prazo para a devolu��o de um item especifico. Para
                        //marcar no item sem prazo de devolu��o, informar o
                        //valor �0�; para marcar no item n�o � poss�vel devolver,
                        //informar o valor �-1�. Lembrando que o prazo de
                        //devolu��o pode ser configurado nos par�metros do
                        //DJMonitor.
              +IntToStr(0)+'|'  //37 CEST N Obrigat�rio para produtos com Substitui��o Tribut�ria
                        //a partir de 01/04/2016
          //    +'S'+'|' //38 Controla Estoque AN 'S' ou ' ' (vazio) para Controlar o Estoque e 'N' para
                        //N�o Controlar Estoque
         //     +''+'|' //39 ANP N C�digo ANP (Ag�ncia Nacional de Petr�leo).
              )
      );
      DM.cdsItemPdvLocal.Next;
      item := item+1;
    end;
    WriteLn ( arq );
    CloseFile ( arq );
//   try
//      DM.cdsProduto.Open;
//      cdsSaidaEstoqueCupom.Params[0].AsInteger := DM.cdsPDVID_PDV.AsInteger;
//      cdsSaidaEstoqueCupom.Execute;
//      DM.cdsProduto.ApplyUpdates(0);
//    except
//      ShowMessage('Erro Ao Gravar Estoque Fiscal, Tente Novamente');
//      Exit;
//    end;
    ShowMessage('Cupom Exportado Com Sucesso!!');
    DM.cdsPdvLocal.Edit;
    DM.cdsPdvLocalCUPOM.Value := 'S';
    DBGrid1.SetFocus;
  except
    ShowMessage('Erro ao Enviar Cupom Fiscal, Verifique o Caminho/IP  nas Configura��es e Tente Novamente.');
    Exit;
  end;
end;

procedure TfrmPagamentoPdv.GerarParcelas;
var
i,dias: Byte;
Valor : Double;
ultimaData : Tdate;
begin
//Abro o Banco
  cdsContasReceber.Close;
  cdsContasReceber.Params[0].AsInteger := StrToInt(DM.cdsPdvLocalID_LOJA.AsString);
  cdsContasReceber.Params[1].AsDate    := StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
  cdsContasReceber.Params[2].AsInteger := StrToInt(DM.cdsPdvLocalID_PDV.AsString);
  cdsContasReceber.Open;
  //Chamo um procedimento para verificar se tem presta��o pendente
  //verificaparcela;
  // Minha vari�vel no caso i inicialmente � 0
  i:=0;
  // minha vari�vel recebe 1 do numero de parcelas no caso o digitado dentro de edParcela.Text
{  for i := 1 to StrToInt(DM.cdsPlanoPagamentoQT_PARCELAS.AsString) do
  begin
    cdsContasReceber.Insert;

    if i = 1 then
    begin
      dias := DM.cdsPlanoPagamentoQT_DIAS_PRIMEIRA_PARCELA.AsInteger;
      if DiasDoMes <  now  then
      begin
       DiasDoMes := DM.cdsPdvLocalDT_ORCAMENTO.AsDateTime+dias;
      end;
       if UltimoDia = 28 then
       begin
         if ultimaData <> DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+1;
         end;
       end;
       if UltimoDia = 29 then
       begin
         if ultimaData <> DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+1;
         end;

       end;
       if UltimoDia = 30 then
       begin
         if ultimaData <> DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+1;
         end;
       end;
       if UltimoDia = 31 then
       begin
         if ultimaData <> DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+1;
         end;
       end;
    end
    else
    begin
      dias := DM.cdsPlanoPagamentoQT_DIAS_ENTRE_PARCELAS.AsInteger;
      DiasDoMes := ultimaData;
//      DiasDoMes := DiasDoMes+dias;
      if DiasDoMes <  now  then
      begin
       //DiasDoMes := DM.cdsPdvDT_VENDA.AsDateTime+dias;
      end;
       if UltimoDia = 28then
       begin
         if ultimaData = DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+dias;
         end;
       end;
       if UltimoDia = 29 then
       begin
         if ultimaData = DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+dias;
         end;
       end;
       if UltimoDia = 30 then
       begin
         if ultimaData = DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+dias;
         end;
       end;
       if UltimoDia = 31 then
       begin
         if ultimaData = DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+dias+1;
         end;
       end;
    end;


    Valor := (StrToFloat(StringReplace(Edit6.Text,'.','',[rfReplaceAll])));
    //-(StrToFloat(EdtEntrada.Text)));
    cdsContasReceber.FieldByName('NR_PARCELA').Value      := IntToStr(i)+'/'+DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('QT_PARCELA').Value      := DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('ID_LOJA').Value         := DM.cdsPdvLocalID_LOJA.AsInteger;
    cdsContasReceber.FieldByName('VL_PARCELA').Value      := Valor /(StrToInt(DM.cdsPlanoPagamentoQT_PARCELAS.AsString));
    cdsContasReceber.FieldByName('VL_COMPRA').Value       := DM.cdsPdvLocalVL_LIQUIDO.AsFloat ;
//    cdsContasReceber.FieldByName('DT_VENCIMENTO').Value   := IncMonth(DM.cdsPdvDT_VENDA.AsDateTime, i - 0);
    cdsContasReceber.FieldByName('DT_VENCIMENTO').Value   := DiasDoMes; //DM.cdsPdvDT_VENDA.AsDateTime+dias;
    cdsContasReceber.FieldByName('NR_DOC').Value          := DM.cdsPdvLocalID_PDV.AsString +'/'+IntToStr(i)+'-'+DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('CAIXA').AsInteger       := StrToInt(frmPdv.L_CAIXA.Caption);
    cdsContasReceber.FieldByName('DT_EMISSAO').Value      := DM.cdsPdvLocalDT_ORCAMENTO.AsDateTime;
    cdsContasReceber.FieldByName('QT_DIAS').Value         := IncMonth(DM.cdsPdvLocalDT_ORCAMENTO.AsDateTime, i - 0) -DM.cdsPdvLocalDT_ORCAMENTO.AsDateTime;
    cdsContasReceber.FieldByName('ID_FORMA_PAGAMENTO').Value  := DM.cdsPlanoPagamentoID_FORMA_PAGAMENTO.AsInteger;
    cdsContasReceber.FieldByName('ID_PLANO_PAGAMENTO').Value  := DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger;
    cdsContasReceber.FieldByName('ID_PDV').Value  := DM.cdsPdvLocalID_PDV.AsInteger;
    cdsContasReceber.FieldByName('ID_VENDEDOR').Value  := DM.cdsPdvLocalID_VENDEDOR.AsInteger;
    cdsContasReceber.FieldByName('ID_USUARIO').Value  := frmPdv.recInformacoes.id_Usuario;
    cdsContasReceber.FieldByName('QT_PARCELA').Value  := DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('STATUS').Value  := 'A';


    cdsContasReceber.Post;
    DiasDoMes := cdsContasReceberDT_VENCIMENTO.AsDateTime;
    ultimaData := DiasDoMes;
    Next;
    //bb_confirmar.Enabled := True;
  end; }
end;

procedure TfrmPagamentoPdv.GravarVendaAvista;
Var
i : Byte;
Valor : Double;
begin
  //Abro o Banco
    cdsContasReceber.Close;
    cdsContasReceber.Params[0].AsInteger := StrToInt(DM.cdsPdvLocalID_LOJA.AsString);
    cdsContasReceber.Params[1].AsDate    := StrToDate(DM.cdsPdvLocalDT_ORCAMENTO.AsString);
    cdsContasReceber.Params[2].AsInteger := StrToInt(DM.cdsPdvLocalID_PDV.AsString);
    cdsContasReceber.Open;

{    i := StrToInt(DM.cdsPlanoPagamentoQT_PARCELAS.AsString);
    cdsContasReceber.Insert;
    Valor := (StrToFloat(StringReplace(Edit6.Text,'.','',[rfReplaceAll])));
    //-(StrToFloat(EdtEntrada.Text)));
    cdsContasReceber.FieldByName('NR_PARCELA').Value      := IntToStr(i)+'/'+DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('QT_PARCELA').Value      := DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('ID_LOJA').Value         := DM.cdsPDVLocalID_LOJA.AsInteger;
    cdsContasReceber.FieldByName('VL_PARCELA').Value      := Valor /(StrToInt(DM.cdsPlanoPagamentoQT_PARCELAS.AsString));
    cdsContasReceber.FieldByName('VL_COMPRA').Value       := DM.cdsPdvLocalVL_LIQUIDO.AsFloat ;
    cdsContasReceber.FieldByName('DT_PAGAMENTO').Value    := DM.cdsPdvLocalDT_ORCAMENTO.AsDateTime;
    cdsContasReceber.FieldByName('DT_VENCIMENTO').Value   := DM.cdsPdvLocalDT_ORCAMENTO.AsDateTime;
    cdsContasReceber.FieldByName('NR_DOC').Value          := DM.cdsPdvLocalID_PDV.AsString +'/'+IntToStr(i)+'-'+DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('CAIXA').AsInteger       := StrToInt(frmPdv.L_CAIXA.Caption);
    cdsContasReceber.FieldByName('DT_EMISSAO').Value      := DM.cdsPdvLocalDT_ORCAMENTO.AsDateTime;
    cdsContasReceber.FieldByName('QT_DIAS').Value         := 0;//IncMonth(DM.cdsPdvDT_VENDA.AsDateTime, i - 0) -DM.cdsPdvDT_VENDA.AsDateTime;
    cdsContasReceber.FieldByName('QT_DIAS_ATRAZO').Value         := 0;
    cdsContasReceber.FieldByName('ID_FORMA_PAGAMENTO').Value  := DM.cdsPlanoPagamentoID_FORMA_PAGAMENTO.AsInteger;
    cdsContasReceber.FieldByName('ID_PLANO_PAGAMENTO').Value  := DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger;
    cdsContasReceber.FieldByName('ID_PDV').Value  := DM.cdsPdvLocalID_PDV.AsInteger;
    cdsContasReceber.FieldByName('ID_VENDEDOR').Value  := DM.cdsPdvLocalID_VENDEDOR.AsInteger;
    cdsContasReceber.FieldByName('ID_USUARIO').Value  := frmPdv.recInformacoes.id_Usuario;
    cdsContasReceber.FieldByName('QT_PARCELA').Value  := DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('STATUS').Value  := 'B';

    cdsContasReceber.ApplyUpdates(0); }
end;

procedure TfrmPagamentoPdv.ImprimirMemo(Memo: TMemo);
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

procedure TfrmPagamentoPdv.ImprimirTermica;
var
  Arquivo: TextFile;
  iCount, iCount2,iCount4, iProdutos, iQuantas,iQuantasPag,iPagamentos, iVezes, iPag: integer;
  dValor, dDesconto,dEconomia, dLiquido, TotalGeral, ValorPago, Troco: Double;
begin
  Memo2.Clear;
  if printer.printers.count=0 then
  begin
    showmessage('nao tem impressora instalada');
    Exit;
  end;

  with DM do
  begin
      dValor :=0;
    iQuantas :=0;
    dDesconto:=0;
    dLiquido :=0;
    dEconomia := 0;
    //cdsItemPdvLocal.IndexFieldNames :='ID_ITEM_PDV';
    iProdutos := cdsItemPdvLocal.RecordCount;
    iPagamentos := DM.cdsPagamentoPdv.RecordCount;
    iVezes := Trunc(iProdutos/10000);
    if Round(iProdutos) > 0 then
      iVezes := iVezes +1;
    cdsItemPdvLocal.First;

    if Round(iPagamentos) > 0 then
      iPag := iPag +1;
    DM.cdsPagamentoPDV.First;
    for iCount := 1 to iVezes do
    begin
    //  Memo2.Lines := Screen.Fonts; //LISTA TODOS OS TIPOS DE FONTES
    //  Memo2.Font.Name := 'ARIAL'; // ESCOLHE O TIPO DA FONTE
    //  Memo2.Font.Handle := 20;   //TAMANHO DA FONTE

      Memo2.Lines.Add(' ');
      Memo2.Lines.Add('Orcamento N.'+DefineTamanhoString(cdsPdvLocalID_PDV.AsString,8,0)
        +'  OPERADOR CAIXA:  '+frmPdv.L_USUARIO.Caption);
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
           if DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger > 1 then
           begin
            Memo2.Lines.Add(DefineTamanhoString(FormatFloat('###000',iQuantas),3,0)+ ' '+DefineTamanhoString(cdsItemPdvLocalCOD_BARRA.AsString,15,0)
             +''+DefineTamanhoString(cdsItemPdvLocalDESCRICAO.AsString,30,0));
  //            +' '+DefineTamanhoString(CDS_CUPON_PRODUTOcl_ds_unidade.AsString,4,0)
            Memo2.Lines.Add('          '+DefineTamanhoString(FormatFloat('###,###,##0',cdsItemPdvLocalQUANT.AsFloat),4,1)
            +' UNI X '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsItemPdvLocalVL_UNIT.AsFloat),6,1)+'   Desc.  -'
            +DefineTamanhoString(FormatFloat('###,###,##0.00',cdsItemPdvLocalDESC_ITEM.AsFloat),6,1)
            +'   '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsItemPdvLocalVL_TOTAL.AsFloat),8,1));
           end;
           if DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger =1 then
           begin
             deconomia:=(cdsItemPdvLocalVL_UNIT.AsFloat-cdsItemPdvLocalVL_AVISTA.AsFloat)*cdsItemPdvLocalQUANT.AsFloat;
             Memo2.Lines.Add(DefineTamanhoString(FormatFloat('###000',iQuantas),3,0)+ ' '+DefineTamanhoString(cdsItemPdvLocalCOD_BARRA.AsString,15,0)
             +''+DefineTamanhoString(cdsItemPdvLocalDESCRICAO.AsString,30,0));
             Memo2.Lines.Add('          '+DefineTamanhoString(FormatFloat('###,###,##0',cdsItemPdvLocalQUANT.AsFloat),4,1)

            +' UNI X '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsItemPdvLocalVL_UNIT.AsFloat),6,1)+'   Desc.  -'
            +DefineTamanhoString(FormatFloat('###,###,##0.00',dEconomia),6,1)
            +'   '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsItemPdvLocalVL_TOTAL_AV.AsFloat),8,1));
           end;

           if DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger > 1 then
           begin
            dValor :=  dValor + cdsItemPdvLocalVL_TOTAL.AsFloat;
            dDesconto := cdsPdvLocalVL_DESCONTO.AsFloat;
            TotalGeral :=  (dValor-dDesconto);
           end;

           if DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger = 1 then
           begin
            dValor :=  dValor + cdsItemPdvLocalVL_TOTAL.AsFloat;
            dDesconto := cdsPdvLocalVL_DESCONTO.AsFloat;
            TotalGeral :=  (dValor-dDesconto);
           end;

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
        Memo2.Lines.Add('------------------------------------------------------------------------------------');
        Memo2.Lines.Add('------------------------------------------------------------------------------------');
        Memo2.Lines.Add('       ***       FORMA PAGAMENTO /  VALOR R$    ***                    ');
        Memo2.Lines.Add('------------------------------------------------------------------------------------');

        // verificar essa questao.
      { FOR iCount4 := 1 to 100 do
        begin
          inc(iQuantasPag);
          if iQuantasPag <= iPagamentos then
          begin
            Memo2.Lines.Add(DefineTamanhoString(DM.cdsPlanoPagamentoDESCRICAO_PAGAMENTO.AsString,15,1)
            +'     R$ '+DefineTamanhoString(FormatFloat('###,###,##0.00',DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat),8,16));
            DM.cdsPagamentoPDV.Next;
          end;
        end;}
        Memo2.Lines.Add('------------------------------------------------------------------------------------');
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

procedure TfrmPagamentoPdv.SomaValorPago;
Var
 SOMA : Double;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT SUM(P.vl_pagamento) FROM tb_pagamento_pdv P '+
                                ' WHERE P.id_pdv = '+DM.cdsPdvLocalID_PDV.AsString;
  DM.cdsDinamica.Open;

  L_VALOR_PAGO.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);

//-  if (cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger = 1) or (cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger = 3)  then
//-  begin
//-    SOMA := (DM.cdsPdvLocalVL_TOTAL_AV.AsFloat - DM.cdsDinamica.Fields[0].AsFloat);
//-    L_VALOR_DIFERENCA.Caption := FormatFloat('###,,###0.00',SOMA);
//-    Diferenca := SOMA;
//-  end
//-  else
//-  begin
    SOMA := (DM.cdsPdvLocalVL_LIQUIDO.AsFloat - DM.cdsDinamica.Fields[0].AsFloat);
    L_VALOR_DIFERENCA.Caption := FormatFloat('###,,###0.00',SOMA);
    Diferenca := SOMA;
//-  end;

end;

procedure TfrmPagamentoPdv.Timer1Timer(Sender: TObject);
begin
  P_TROCO.Visible := False;
  Label1.Visible := True;
  Label8.Visible := True;
  Label11.Visible := True;
  Label12.Visible := True;
  Panel2.Visible := True;
  Panel3.Visible := True;
  L_VALOR_PAGO.Visible := True;
  L_VALOR_DIFERENCA.Visible := True;
  Timer1.Enabled := False;
  Timer2.Enabled := False;
  frmPagamentoPdv.Close;
  frmPdv.BB_CONFIRMAClick(Self);
end;

procedure TfrmPagamentoPdv.Timer2Timer(Sender: TObject);
begin
  if DM.cdsPagamentoPdv.RecordCount > 0 then
  begin
    P_TROCO.Visible := False;
    Label1.Visible := True;
    Label8.Visible := True;
    Label11.Visible := True;
    Label12.Visible := True;
    Panel2.Visible := True;
    Panel3.Visible := True;
    L_VALOR_PAGO.Visible := True;
    L_VALOR_DIFERENCA.Visible := True;
    Timer1.Enabled := False;
    Timer2.Enabled := False;
    frmPagamentoPdv.Close;
    frmPdv.BB_CONFIRMAClick(Self);

  end;
end;

function TfrmPagamentoPdv.UltimoDia: integer;
var Date: TDateTime;
begin
  Date:= EndOfTheMonth(DiasDoMes);
  Result:= StrToInt(Copy(DateToStr(Date),0,2));

end;

end.
