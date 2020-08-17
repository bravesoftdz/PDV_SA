unit uSenhaRetaguarda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons,DB, Vcl.Imaging.pngimage;

type
  TfrmSenhaRetaguarda = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ValorNome: TEdit;
    ValorSenha: TEdit;
    BtnOK1: TButton;
    BtnCancelar1: TButton;
    BtnAlterarSenha1: TButton;
    btnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    Image2: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   Fecha : Boolean; 
  end;

var
  frmSenhaRetaguarda: TfrmSenhaRetaguarda;
  Login: TfrmSenhaRetaguarda;
  Seg,Seg2,HResult: double;
  H1: ttime;
var
 NrTentativas : integer;  
implementation

uses uDm,U_LIB , uPdv, UD_PESQUISA, uDialogo, uRetaguarda;

{$R *.dfm}

procedure TfrmSenhaRetaguarda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    selectnext(activecontrol, true, true);
    Key := #0;
  end;
end;

procedure TfrmSenhaRetaguarda.SpeedButton2Click(Sender: TObject);
var
mensagem: string;
begin
  frmRetagurda.bSenha := False;
    if ValorNome.Text <> '' then
    begin
      with DM do
      begin
        CDSDINAMICA.Close;
        cdsDinamica.IndexFieldNames:='';
        CDSDINAMICA.CommandText := ('SELECT * FROM TB_USUARIOS');
        CDSDINAMICA.Open;
        if CDSDINAMICA.Locate('LOGIN', ValorNome.Text, []) then
        begin
          if DecryptMsg(CDSDINAMICA.FieldByName('SENHA').AsString,10) <> ValorSenha.Text then
          begin
            Application.MessageBox('Senha inv�lida, tente novamente.', 'Aten��o', MB_ICONWarning);
            NrTentativas := NrTentativas +1;
            if NrTentativas = 3 then
            begin
              ShowMessage('N�mero de tentativas ultrapassadas');
              Application.Terminate;
            end
            else
            begin
             ValorNome.SetFocus;
            end;
          end
          else
          begin
            frmRetagurda.bSenha := True;
            frmRetagurda.recInformacoes.login           := CDSDINAMICA.FieldByname('LOGIN').AsString;
            frmRetagurda.recInformacoes.Id_Usuario      := CDSDINAMICA.FieldByname('ID_USUARIO').AsInteger;
            frmRetagurda.recInformacoes.Nivel           := CDSDINAMICA.FieldByname('NIVEL_ACESSO').AsInteger;
            frmRetagurda.recInformacoes.lojaCredenciada := CDSDINAMICA.FieldByname('ID_LOJA').AsString;
            Close;
          end;
        end
        else
        begin
          Application.MessageBox('Usu�rio n�o cadastrado/autorizado.', 'Aten��o', MB_ICONWarning);
          NrTentativas := NrTentativas +1;
          if NrTentativas = 3 then
          begin
            ShowMessage('N�mero de tentativas ultrapassadas');
            Application.Terminate;
          end
          else
          begin
           ValorNome.SetFocus;
          end;
        end;
      end;
    end
    else
    begin
      Application.MessageBox('� necess�rio informar um usu�rio.', 'Aten��o', MB_ICONWarning);
        NrTentativas := NrTentativas +1;
        if NrTentativas = 3 then
        begin
          ShowMessage('N�mero de tentativas ultrapassadas');
          Close;
          Exit;
        end
        else
        begin
         ValorNome.SetFocus;
        end;
    end;

end;

procedure TfrmSenhaRetaguarda.FormShow(Sender: TObject);
begin
  ValorNome.SetFocus;
end;

procedure TfrmSenhaRetaguarda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if NrTentativas = 3 then
  begin
    Close;
    frmRetagurda.Close;
    exit;
  end
  else
  begin
    if (ValorNome.Text <> '') and (frmRetagurda.bSenha = False) then
    begin
      Action := caNone;
      SpeedButton2Click(Self);
    end
    else if (ValorNome.Text = '') then
    begin
      if (Application.MessageBox('Voce n�o informou um usu�rio, deseja encerrar a pliaca��o.',
        'Confirma��o', MB_ICONQuestion+MB_YESNO) = IDYES) then
      begin
        Action := caFree;
        frmRetagurda.Close;
      end
      else
      begin
        Action := caNone;
        ValorNome.SetFocus;
      end;
    end
    else
    begin
      Action := caFree;
    end;
  end;

end;

procedure TfrmSenhaRetaguarda.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmSenhaRetaguarda.BtnOKClick(Sender: TObject);
var
mensagem: string;
begin
  frmRetagurda.bSenha := False;
    if ValorNome.Text <> '' then
    begin
      with DM do
      begin
        CDSDINAMICA.Close;
        cdsDinamica.IndexFieldNames:='';
        CDSDINAMICA.CommandText := ('SELECT * FROM TB_USUARIOS');
        CDSDINAMICA.Open;
        if CDSDINAMICA.Locate('LOGIN', ValorNome.Text, []) then
        begin
          if DecryptMsg(CDSDINAMICA.FieldByName('SENHA').AsString,10) <> ValorSenha.Text then
          begin
            Application.MessageBox('Senha inv�lida, tente novamente.', 'Aten��o', MB_ICONWarning);
            NrTentativas := NrTentativas +1;
            if NrTentativas = 3 then
            begin
              ShowMessage('N�mero de tentativas ultrapassadas');
              Application.Terminate;
            end
            else
            begin
             ValorNome.SetFocus;
            end;
          end
          else
          begin
            frmRetagurda.bSenha := True;
            frmRetagurda.recInformacoes.login           := CDSDINAMICA.FieldByname('LOGIN').AsString;
            frmRetagurda.recInformacoes.Id_Usuario      := CDSDINAMICA.FieldByname('ID_USUARIO').AsInteger;
            frmRetagurda.recInformacoes.Nivel           := CDSDINAMICA.FieldByname('NIVEL_ACESSO').AsInteger;
            frmRetagurda.recInformacoes.lojaCredenciada := CDSDINAMICA.FieldByname('ID_LOJA').AsString;
            Close;
          end;
        end
        else
        begin
          Application.MessageBox('Usu�rio n�o cadastrado/autorizado.', 'Aten��o', MB_ICONWarning);
          NrTentativas := NrTentativas +1;
          if NrTentativas = 3 then
          begin
            ShowMessage('N�mero de tentativas ultrapassadas');
            Application.Terminate;
          end
          else
          begin
           ValorNome.SetFocus;
          end;
        end;
      end;
    end
    else
    begin
      Application.MessageBox('� necess�rio informar um usu�rio.', 'Aten��o', MB_ICONWarning);
        NrTentativas := NrTentativas +1;
        if NrTentativas = 3 then
        begin
          ShowMessage('N�mero de tentativas ultrapassadas');
          Close;
          Exit;
        end
        else
        begin
         ValorNome.SetFocus;
        end;
    end;
end;

procedure TfrmSenhaRetaguarda.BtnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
