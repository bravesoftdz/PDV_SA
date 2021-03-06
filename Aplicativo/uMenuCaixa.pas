unit uMenuCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmMenuCaixa = class(TForm)
    L_SUPRIMENTO: TLabel;
    L_RETIRADA: TLabel;
    L_PREVIA: TLabel;
    L_INFORMAR_CLIENTE: TLabel;
    L_SAIR: TLabel;
    L_REATIVAR_VENDA: TLabel;
    L_REIMPRESSAO_VENDA: TLabel;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    L_PLANO_PAGMTO: TLabel;
    SpeedButton9: TSpeedButton;
    L_VENDAS_VENDEDOR: TLabel;
    SpeedButton10: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure L_SUPRIMENTOClick(Sender: TObject);
    procedure L_RETIRADAClick(Sender: TObject);
    procedure L_PREVIAClick(Sender: TObject);
    procedure L_INFORMAR_CLIENTEClick(Sender: TObject);
    procedure L_SAIRClick(Sender: TObject);
    procedure L_REIMPRESSAO_VENDAClick(Sender: TObject);
    procedure L_REATIVAR_VENDAClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure L_PLANO_PAGMTOClick(Sender: TObject);
    procedure L_VENDAS_VENDEDORClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuCaixa: TfrmMenuCaixa;

implementation

uses  uDm, uPdv, Math, uReativarVendas, uReimpressaoOrcamento, uFechamentoCaixa,
  UtrocaMercadoria, uAtuEstoqueServidor, U_LIB, UD_PESQUISA, uCadVendedor,
  uAtuPlanoPagmto, uRelvendasVendedor;

{$R *.dfm}

procedure TfrmMenuCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmMenuCaixa := nil;
end;

procedure TfrmMenuCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
  begin
    close;
  end;
  if Key = Vk_f1 then
  begin
    L_SUPRIMENTOClick(Self);
  end;
  if Key = Vk_f2 then
  begin
    L_RETIRADAClick(Self);
  end;
  if Key = Vk_f3 then
  begin
    L_PREVIAClick(Self);
  end;
  if Key = Vk_f4 then
  begin
    L_INFORMAR_CLIENTEClick(Self);
  end;
  if Key = Vk_f5 then
  begin
    L_PLANO_PAGMTOClick(Self);
  end;
  if Key = Vk_f6 then
  begin
    L_VENDAS_VENDEDORClick(Self);
  end;

  if Key = Vk_f10 then
  begin
    L_REIMPRESSAO_VENDAClick(Self);
  end;

  if Key = Vk_f11 then
  begin
    L_REATIVAR_VENDAClick(Self);
  end;

end;

procedure TfrmMenuCaixa.L_SUPRIMENTOClick(Sender: TObject);
begin
{  Close;
  if frmSuprimento = nil then
  begin
    frmSuprimento := TfrmSuprimento.Create(Application);
    frmSuprimento.ShowModal;
  end;}
  if frmTrocaMercadoria = nil then
  begin
    frmTrocaMercadoria := TfrmTrocaMercadoria.Create(Application);
    frmTrocaMercadoria.ShowModal;
  end;

end;

procedure TfrmMenuCaixa.SpeedButton3Click(Sender: TObject);
begin
  L_SAIRClick(Self);
end;

procedure TfrmMenuCaixa.L_RETIRADAClick(Sender: TObject);
begin
  Close;
  if frmAtuEstoqueServidor = nil then
  begin
    frmAtuEstoqueServidor := TfrmAtuEstoqueServidor.Create(Application);
    frmAtuEstoqueServidor.ShowModal;
  end;
end;

procedure TfrmMenuCaixa.L_PREVIAClick(Sender: TObject);
begin
    frmPdv.cdsResumoVendas.Close;
    frmPdv.cdsResumoVendas.Params[0].AsDate := StrToDate(DateToStr(Date));
    frmPdv.cdsResumoVendas.Params[1].AsInteger := frmPdv.recInformacoes.id_Usuario;
    frmPdv.cdsResumoVendas.Params[2].AsDate := StrToDate(DateToStr(Date));
    frmPdv.cdsResumoVendas.Params[3].AsInteger := frmPdv.recInformacoes.id_Usuario;
    frmPdv.cdsResumoVendas.Params[4].AsDate := StrToDate(DateToStr(Date));
    frmPdv.cdsResumoVendas.Params[5].AsInteger := frmPdv.recInformacoes.id_Usuario;
    frmPdv.cdsResumoVendas.Params[6].AsDate := StrToDate(DateToStr(Date));
    frmPdv.cdsResumoVendas.Params[7].AsInteger := StrToInt(frmPdv.L_CAIXA.Caption);
    frmPdv.cdsResumoVendas.Params[8].AsInteger := frmPdv.recInformacoes.id_Usuario;
    frmPdv.cdsResumoVendas.Open;

    if frmPdv.cdsResumoVendas.IsEmpty then
    begin
      ShowMessage('Nenhum Registro Encontrado no momento.');
    end
    else
    begin
      if frmFechamentoCaixa = nil then
      begin
        frmFechamentoCaixa := TfrmFechamentoCaixa.Create(Application);
        frmFechamentoCaixa.ShowModal;
      end;
    end;
end;

procedure TfrmMenuCaixa.L_REATIVAR_VENDAClick(Sender: TObject);
begin
  Close;
  if frmReativarVendas = nil then
  begin
    frmReativarVendas := TfrmReativarVendas.Create(Application);
    frmReativarVendas.ShowModal;
  end;
end;

procedure TfrmMenuCaixa.L_REIMPRESSAO_VENDAClick(Sender: TObject);
begin
  Close;
  if frmVendedor = nil then
  begin
    frmVendedor := TfrmVendedor.Create(Application);
    frmVendedor.ShowModal;
  end;
end;

procedure TfrmMenuCaixa.L_PLANO_PAGMTOClick(Sender: TObject);
begin
  Close;
  if frmAtuPlanoPagmto = nil then
  begin
    frmAtuPlanoPagmto := TfrmAtuPlanoPagmto.Create(Application);
    frmAtuPlanoPagmto.ShowModal;
  end;

end;

procedure TfrmMenuCaixa.L_VENDAS_VENDEDORClick(Sender: TObject);
begin
  if frmRelvendasVendedor = nil then
  begin
    frmRelvendasVendedor := TfrmRelvendasVendedor.Create(Application);
    frmRelvendasVendedor.ShowModal;
  end;

end;

procedure TfrmMenuCaixa.L_INFORMAR_CLIENTEClick(Sender: TObject);
begin
  Close;
  if (frmpdv.L_SITUACAO_VENDA.Caption <> 'ESPERANDO PAGAMENTO') then
  begin
    Application.MessageBox('Favor Encerre a Venda Para Trocar de Vendedor.',
      'Aten��o', MB_OK);
  end
  else
  begin
    frmpdv.cdsVendedor.Close;
    frmpdv.cdsVendedor.Params[0].AsInteger := StrToInt(frmpdv.L_LOJA.Caption);
    frmpdv.cdsVendedor.Open;

    DM.cdsPdvLocal.Edit;

    if Pesquisa(frmpdv.cdsVendedor, ['NOME', 'ID_VENDEDOR'], ['', ''], [30, 2], '', '0',
      '', 'Vendedor', 'Vendedor', 'Vendedor') then
    begin
      DM.cdsPdvLocalID_VENDEDOR.AsInteger := frmpdv.cdsVendedorID_VENDEDOR.AsInteger;
      DM.cdsPdvLocalNOME.Value := frmpdv.cdsVendedorNOME.Value;
      DM.cdsPdvLocal.ApplyUpdates(0);
      frmPdv.L_INCLUIR_ITEMClick(Self);
    end;
  end;
end;

procedure TfrmMenuCaixa.L_SAIRClick(Sender: TObject);
begin
  Close;
end;

end.

