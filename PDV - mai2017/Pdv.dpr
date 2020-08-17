program Pdv;

uses
  Forms,
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
  uPagamentoPdv in 'Aplicativo\uPagamentoPdv.pas' {frmPagamentoPdv};

{$R *.res}

begin
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
  Application.Run;
end.
