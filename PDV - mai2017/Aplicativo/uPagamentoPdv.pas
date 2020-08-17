unit uPagamentoPdv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmPagamentoPdv = class(TForm)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
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
    Label7: TLabel;
    DBGrid2: TDBGrid;
    DBText1: TDBText;
    Timer1: TTimer;
    P_TROCO: TPanel;
    Label8: TLabel;
    Label1: TLabel;
    L_TROCO: TLabel;
    Label9: TLabel;
    L_VALOR_PAGO: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    L_VALOR_DIFERENCA: TLabel;
    Timer2: TTimer;
    BB_CANCELAR: TBitBtn;
    Edit6: TEdit;
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
  private
    { Private declarations }
    Procedure SomaValorPago;
  public
    { Public declarations }
  end;

var
  frmPagamentoPdv: TfrmPagamentoPdv;
  Diferenca : Double;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDm, uPdv;

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
      DM.cdsDinamica.CommandText := ' DELETE FROM tb_pagamento_pdv P '+
                                    ' WHERE P.id_pdv ='+DM.cdsPdvLocalID_PDV.AsString;
      DM.cdsDinamica.Execute;
      DM.cdsPagamentoPdv.ApplyUpdates(0);
      DM.cdsPagamentoPdv.Refresh;
      DM.cdsPagamentoPdv.Close;
      DM.cdsPagamentoPdv.Params[0].AsInteger := DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
      DM.cdsPagamentoPdv.Open;
  //    ShowMessage('Pagamento(s) Cancelado(s)!');
      GB_ESPECIE.Visible := False;
      frmPagamentoPdv.Close;
    end
    else
    begin
       DBGrid1.SetFocus;
    end;
  end
  else
  begin
    frmPagamentoPdv.Close;
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

      if (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat > Diferenca) AND (cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger > 1)then
      begin
        ShowMessage('N�o � Permitido Pagamento a mais para a Modalidade '+cdsTipoPagamentoDESCRICAO_PAGAMENTO.AsString);
        Exit;
      end;

      if (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat > Diferenca) AND (cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger = 1)then
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
        L_VALOR_PAGO.Visible := False;
        L_VALOR_DIFERENCA.Visible := False;
        BB_CANCELAR.Visible := False;
       // Diferenca := (Diferenca - DM.cdsPdvLocalVL_LIQUIDO.AsFloat);
        DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat := ( DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat - Troco);
        DM.cdsPagamentoPdv.ApplyUpdates(0);
        DM.cdsPagamentoPdv.Refresh;
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
            L_VALOR_PAGO.Visible := False;
            L_VALOR_DIFERENCA.Visible := False;
            BB_CANCELAR.Visible := False;
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

procedure TfrmPagamentoPdv.DBGrid1KeyPress(Sender: TObject; var Key: Char);
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
      Diferenca := DM.cdsPdvLocalVL_LIQUIDO.AsFloat;
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

  end;
end;

procedure TfrmPagamentoPdv.Edit6Exit(Sender: TObject);
var
Troco : Double;
Valor,ValorNovo : string;
begin
  if Edit6.Text<>'' then
  begin
    SomaValorPago;
    Valor:= L_VALOR_DIFERENCA.Caption;
    valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
    Diferenca :=StrToFloat(ValorNovo);

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


      GB_ESPECIE.Visible := False;
      DBGrid1.Enabled := True;
      DBGrid1.SetFocus;

      if (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat > Diferenca) AND (cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger > 1)then
      begin
        ShowMessage('N�o � Permitido Pagamento a mais para a Modalidade '+cdsTipoPagamentoDESCRICAO_PAGAMENTO.AsString);
        Exit;
      end;

      if (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat > Diferenca) AND (cdsTipoPagamentoID_TIPO_PAGAMENTO.AsInteger = 1)then
      begin
        Troco := (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat - Diferenca);
        L_TROCO.Caption := FormatFloat('###,###0.00',Troco);
        if Application.MessageBox('Deseja Imprimir Venda?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
        begin
          frmPdv.ImprimirTermica;
        end;
        P_TROCO.Visible := True;
        DBGrid2.SetFocus;
        P_TROCO.Align   := alClient;
        L_TROCO.Caption := ' T R O C O    '+FormatFloat('###,###0.00',Troco);
        Timer1.Enabled := True;
        Label1.Visible := False;
        Label8.Visible := False;
        Label11.Visible := False;
        Label12.Visible := False;
        L_VALOR_PAGO.Visible := False;
        L_VALOR_DIFERENCA.Visible := False;
        BB_CANCELAR.Visible := False;
        DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat := ( DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat - Troco);
        DM.cdsPagamentoPdv.ApplyUpdates(0);
        DM.cdsPagamentoPdv.Refresh;
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
            frmPdv.ImprimirTermica;
          end;
            P_TROCO.Visible := True;
            DBGrid2.SetFocus;
            P_TROCO.Align   := alClient;
            L_TROCO.Caption := '.';
            Timer1.Enabled := True;
            Label1.Visible := False;
            Label8.Visible := False;
            Label11.Visible := False;
            Label12.Visible := False;
            L_VALOR_PAGO.Visible := False;
            L_VALOR_DIFERENCA.Visible := False;
            BB_CANCELAR.Visible := False;
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
  end;

end;

Procedure TfrmPagamentoPdv.FormShow(Sender: TObject);
begin
  DBGrid1.Enabled := True;
  DBGrid1.SetFocus;
  L_VALOR_PAGO.Caption := '0,00';
  L_VALOR_DIFERENCA.Caption := FormatFloat('###,###0.00',dm.cdsPdvLocalVL_LIQUIDO.AsFloat);
  cdsTipoPagamento.Close;
  cdsTipoPagamento.Open;
  DM.cdsPdvLocal.Open;
  DBGrid1.SetFocus;

  DM.cdsPagamentoPdv.Close;
  DM.cdsPagamentoPdv.Params[0].AsInteger := DM.cdsPdvLocalNR_ORCAMENTO.AsInteger;
  DM.cdsPagamentoPdv.Open;

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
  SOMA := (DM.cdsPdvLocalVL_LIQUIDO.AsFloat - DM.cdsDinamica.Fields[0].AsFloat);

  L_VALOR_DIFERENCA.Caption := FormatFloat('###,,###0.00',SOMA);
end;

procedure TfrmPagamentoPdv.Timer1Timer(Sender: TObject);
begin
  P_TROCO.Visible := False;
  Label1.Visible := True;
  Label8.Visible := True;
  Label11.Visible := True;
  Label12.Visible := True;
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
    L_VALOR_PAGO.Visible := True;
    L_VALOR_DIFERENCA.Visible := True;
    Timer1.Enabled := False;
    Timer2.Enabled := False;
    frmPagamentoPdv.Close;
    frmPdv.BB_CONFIRMAClick(Self);
  end;
end;

end.
