program Pdv;

uses
  Forms,
  SysUtils,
  uPdv in 'Aplicativo\uPdv.pas' {frmPdv},
  uDm in 'Aplicativo\uDm.pas' {DM: TDataModule},
  UD_PESQUISA in 'Aplicativo\UD_PESQUISA.pas' {FD_PESQUISA},
  U_LIB in 'Aplicativo\U_LIB.pas',
  uDialogo in 'Aplicativo\uDialogo.pas' {frmDialago},
  uSenha in 'Aplicativo\uSenha.pas' {frmSenha},
  uRelVendas in 'Aplicativo\uRelVendas.pas' {FrmRelVendas},
  uRetaguarda in 'Aplicativo\uRetaguarda.pas' {frmRetagurda},
  uSenhaRetaguarda in 'Aplicativo\uSenhaRetaguarda.pas' {frmSenhaRetaguarda},
  uAtuEstoqueServidor in 'Aplicativo\uAtuEstoqueServidor.pas' {frmAtuEstoqueServidor},
  uRelvendasVendedor in 'Aplicativo\uRelvendasVendedor.pas' {frmRelvendasVendedor},
  uCadVendedor in 'Aplicativo\uCadVendedor.pas' {frmVendedor},
  UtrocaMercadoria in 'Aplicativo\UtrocaMercadoria.pas' {frmTrocaMercadoria},
  uPagamentoPdv in 'Aplicativo\uPagamentoPdv.pas' {frmPagamentoPdv},
  uCadUsuario in 'Aplicativo\uCadUsuario.pas' {frmCadUsuario},
  uFechamentoCaixa in 'Aplicativo\uFechamentoCaixa.pas' {frmFechamentoCaixa},
  uReimpressaoOrcamento in 'Aplicativo\uReimpressaoOrcamento.pas' {frmReimpressaoOrcamento},
  uReativarVendas in 'Aplicativo\uReativarVendas.pas' {frmReativarVendas},
  uAtuProdDJDV in 'Aplicativo\uAtuProdDJDV.pas' {frmAutProdDJPDV},
  uDesconto in 'Aplicativo\uDesconto.pas' {frmDesconto},
  uAbertura in 'Aplicativo\uAbertura.pas' {frmAbertura},
  uDigitaPrecoVenda in 'Aplicativo\uDigitaPrecoVenda.pas' {frmDigitaPrecoVenda},
  uPagamentoTroca in 'Aplicativo\uPagamentoTroca.pas' {frmPagamentoTroca},
  uMenuCaixa in 'Aplicativo\uMenuCaixa.pas' {frmMenuCaixa},
  uAtuPlanoPagmto in 'Aplicativo\uAtuPlanoPagmto.pas' {frmAtuPlanoPagmto};

{$R *.res}

begin

  frmAbertura := TfrmAbertura.Create(Application);
  frmAbertura.Show;
  Application.Initialize;
  Application.Title := 'Pdv Retaguarda';
  Application.CreateForm(TfrmPdv, frmPdv);
  Application.CreateForm(TfrmRetagurda, frmRetagurda);
  Application.CreateForm(TfrmDialago, frmDialago);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFD_PESQUISA, FD_PESQUISA);
  Application.CreateForm(TfrmSenha, frmSenha);
  Application.CreateForm(TfrmSenhaRetaguarda, frmSenhaRetaguarda);
  Application.CreateForm(TfrmPagamentoPdv, frmPagamentoPdv);
  Application.CreateForm(TfrmAutProdDJPDV, frmAutProdDJPDV);
  Application.CreateForm(TfrmDesconto, frmDesconto);
  Application.CreateForm(TfrmDigitaPrecoVenda, frmDigitaPrecoVenda);
  Application.CreateForm(TfrmPagamentoTroca, frmPagamentoTroca);
  frmAbertura.Show; // Mostra a Formulario
  frmAbertura.refresh; // da um refresh na tela
  Sleep(3000); // Coloque na Clascula Uses SysUtils,
  frmAbertura.Hide; // apaga a tela
  frmAbertura.Free;
  frmAbertura:= nil;

  Application.Run;
end.
