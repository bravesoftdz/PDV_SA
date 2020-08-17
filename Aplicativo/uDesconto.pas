unit uDesconto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TfrmDesconto = class(TForm)
    Label37: TLabel;
    DBEdit12: TDBEdit;
    RadioGroup1: TRadioGroup;
    BB_CONFIRMAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    Panel5: TPanel;
    P_SENHA: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Image3: TImage;
    ValorNome1: TEdit;
    ValorSenha1: TEdit;
    btnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    procedure DBEdit12Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BB_CONFIRMARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDesconto: TfrmDesconto;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDm, uPdv;

procedure TfrmDesconto.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsPdvLocal.Cancel;
  frmPdv.L_INCLUIR_ITEMClick(Self);
  Close;
end;

procedure TfrmDesconto.BB_CONFIRMARClick(Sender: TObject);
begin
  frmPdv.L_TOTAL_DESC_ENTRADA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvLocalVL_DESCONTO.AsFloat);
  frmPdv.L_TOTAL_LIQUIDO.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvLocalVL_LIQUIDO.AsFloat);
//  frmPdv.L_INCLUIR_ITEMClick(Self);
  DM.cdsPdvLocal.ApplyUpdates(0);
  DM.cdsPdvLocal.Refresh;
  Close;
end;

procedure TfrmDesconto.btnOkClick(Sender: TObject);
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
      BB_CANCELARClick(Self);
      Abort;
    end
    else
    begin
      P_SENHA.Visible := False;
      DM.cdsPdvLocal.Edit;
      if DBEdit12.Text = '' then
       DBEdit12.Text := '0';
      if RadioGroup1.ItemIndex = 0 Then
      begin
        DM.cdsPdvLocalVL_LIQUIDO.AsFloat :=
          DM.cdsPdvLocalVL_ORCAMENTO.AsFloat -
          ((DM.cdsPdvLocalVL_ORCAMENTO.AsFloat*
          DM.cdsPdvLOCALPERC_DESC.AsFloat)/100);

        DM.cdsPdvLocalVL_DESCONTO.AsFloat :=
          DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_LIQUIDO.AsFloat;
      end
      else
      begin
//        DM.cdsPdvLocalVL_DESCONTO.AsFloat :=
//          (DM.cdsPdvLocalPERC_DESC.AsFloat);
        DM.cdsPdvLocalVL_LIQUIDO.AsFloat :=
          (DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_DESCONTO.AsFloat);
          BB_CONFIRMARClick(Self);

//      DM.cdsPdvLocalPERC_DESC.AsFloat := 100 - (100/(DM.cdsPdvLocalVL_ORCAMENTO.AsFloat/DM.cdsPdvLocalVL_LIQUIDO.AsFloat));

      end;
  end;
  end;
end;

procedure TfrmDesconto.DBEdit12Exit(Sender: TObject);
begin
  DM.cdsPdvLocal.Edit;
  if DBEdit12.Text = '' then
   DBEdit12.Text := '0';
  if RadioGroup1.ItemIndex = 0 Then
  begin
    DM.cdsPdvLocalVL_LIQUIDO.AsFloat :=
      DM.cdsPdvLocalVL_ORCAMENTO.AsFloat -
      ((DM.cdsPdvLocalVL_ORCAMENTO.AsFloat*
      DM.cdsPdvLOCALPERC_DESC.AsFloat)/100);

    DM.cdsPdvLocalVL_DESCONTO.AsFloat :=
      DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_LIQUIDO.AsFloat;
  end
  else
  begin
    DM.cdsPdvLocalVL_DESCONTO.AsFloat :=
      (DM.cdsPdvLocalPERC_DESC.AsFloat);
    DM.cdsPdvLocalVL_LIQUIDO.AsFloat :=
      (DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalPERC_DESC.AsFloat);

  DM.cdsPdvLocalPERC_DESC.AsFloat := 100 - (100/(DM.cdsPdvLocalVL_ORCAMENTO.AsFloat/DM.cdsPdvLocalVL_LIQUIDO.AsFloat));

  end;
  if DM.cdsPdvLocalPERC_DESC.AsFloat > 10 then
  begin
    ShowMessage('Desconto N�o Permitido, Ultrapassa os 10% Permitido');

    if Application.MessageBox('Liberar Com Senha do Gerente?','Confirma��o!',MB_YESNO+MB_ICONQUESTION) = idyes then
    begin
      P_SENHA.Visible := True;
      P_SENHA.Align   := alClient;
      ValorNome1.Clear;
      ValorSenha1.Clear;
      ValorNome1.SetFocus;
    end
    else
    begin
      DBEdit12.SetFocus;
      DM.cdsPdvLocalPERC_DESC.AsFloat := 0;
      DM.cdsPdvLocalVL_LIQUIDO.AsFloat :=
        DM.cdsPdvLocalVL_ORCAMENTO.AsFloat -
        ((DM.cdsPdvLocalVL_ORCAMENTO.AsFloat*
        DM.cdsPdvLOCALPERC_DESC.AsFloat)/100);

      DM.cdsPdvLocalVL_DESCONTO.AsFloat :=
        DM.cdsPdvLocalVL_ORCAMENTO.AsFloat - DM.cdsPdvLocalVL_LIQUIDO.AsFloat;
    end;
  end;

end;

procedure TfrmDesconto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmDesconto.FormShow(Sender: TObject);
begin
  DBEdit12.SetFocus;
end;

procedure TfrmDesconto.RadioGroup1Click(Sender: TObject);
begin
  DBEdit12.SetFocus;
end;

end.


