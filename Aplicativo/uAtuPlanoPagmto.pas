unit uAtuPlanoPagmto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, IniFiles,
  Data.FMTBcd, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.StdCtrls, Vcl.Samples.Gauges;

type
  TfrmAtuPlanoPagmto = class(TForm)
    Panel6: TPanel;
    SpeedButton3: TSpeedButton;
    qPagamentoServidor: TSQLQuery;
    dspPagamentoServidor: TDataSetProvider;
    cdsPagamentoServidor: TClientDataSet;
    dsPagamentoServidor: TDataSource;
    DBGrid1: TDBGrid;
    qPagamentoServidorID_FORMA_PAGAMENTO: TIntegerField;
    qPagamentoServidorDESCRICAO_PAGAMENTO: TStringField;
    qPagamentoServidorQT_PARCELAS: TIntegerField;
    qPagamentoServidorQT_DIAS_ENTRE_PARCELAS: TIntegerField;
    qPagamentoServidorQT_DIAS_PRIMEIRA_PARCELA: TIntegerField;
    qPagamentoServidorADMINISTRADORA: TStringField;
    qPagamentoServidorTX_ADM: TFMTBCDField;
    qPagamentoServidorID_TIPO_RECEBIMENTO: TIntegerField;
    cdsPagamentoServidorID_FORMA_PAGAMENTO: TIntegerField;
    cdsPagamentoServidorDESCRICAO_PAGAMENTO: TStringField;
    cdsPagamentoServidorQT_PARCELAS: TIntegerField;
    cdsPagamentoServidorQT_DIAS_ENTRE_PARCELAS: TIntegerField;
    cdsPagamentoServidorQT_DIAS_PRIMEIRA_PARCELA: TIntegerField;
    cdsPagamentoServidorADMINISTRADORA: TStringField;
    cdsPagamentoServidorTX_ADM: TFMTBCDField;
    cdsPagamentoServidorID_TIPO_RECEBIMENTO: TIntegerField;
    cdsPagamentoLocal: TClientDataSet;
    dsPagamentoLocal: TDataSource;
    dspPagamentoLocal: TDataSetProvider;
    qPagamentoLocal: TSQLQuery;
    qPagamentoLocalID_FORMA_PAGAMENTO: TIntegerField;
    qPagamentoLocalDESCRICAO_PAGAMENTO: TStringField;
    qPagamentoLocalQT_PARCELAS: TIntegerField;
    qPagamentoLocalQT_DIAS_ENTRE_PARCELAS: TIntegerField;
    qPagamentoLocalQT_DIAS_PRIMEIRA_PARCELA: TIntegerField;
    qPagamentoLocalADMINISTRADORA: TStringField;
    qPagamentoLocalTX_ADM: TFMTBCDField;
    qPagamentoLocalID_TIPO_PAGAMENTO: TIntegerField;
    cdsPagamentoLocalID_FORMA_PAGAMENTO: TIntegerField;
    cdsPagamentoLocalDESCRICAO_PAGAMENTO: TStringField;
    cdsPagamentoLocalQT_PARCELAS: TIntegerField;
    cdsPagamentoLocalQT_DIAS_ENTRE_PARCELAS: TIntegerField;
    cdsPagamentoLocalQT_DIAS_PRIMEIRA_PARCELA: TIntegerField;
    cdsPagamentoLocalADMINISTRADORA: TStringField;
    cdsPagamentoLocalTX_ADM: TFMTBCDField;
    cdsPagamentoLocalID_TIPO_PAGAMENTO: TIntegerField;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    Gauge1: TGauge;
    BB_ATUALIZAR: TBitBtn;
    spRecebeFormaPagmto: TSQLStoredProc;
    dspRecebeFormaPagmto: TDataSetProvider;
    cdsRecebeFormaPagmto: TClientDataSet;
    qPagamentoServidorFORMA_RECEBIMENTO: TStringField;
    qPagamentoLocalFORMA_RECEBIMENTO: TStringField;
    cdsPagamentoLocalFORMA_RECEBIMENTO: TStringField;
    cdsPagamentoServidorFORMA_RECEBIMENTO: TStringField;
    dspRecebimentoServidor: TDataSetProvider;
    cdsRecebimentoServidor: TClientDataSet;
    dsRecebimentoServidor: TDataSource;
    qRecebimentoServidor: TSQLQuery;
    qRecebimentoLocal: TSQLQuery;
    dspRecebimentoLocal: TDataSetProvider;
    cdsRecebimentoLocal: TClientDataSet;
    dsRecebimentoLocal: TDataSource;
    qRecebimentoServidorID_TIPO_RECEBIMENTO: TIntegerField;
    qRecebimentoServidorNOME_RECEBIMENTO: TStringField;
    qRecebimentoServidorESPECIE: TStringField;
    cdsRecebimentoServidorID_TIPO_RECEBIMENTO: TIntegerField;
    cdsRecebimentoServidorNOME_RECEBIMENTO: TStringField;
    cdsRecebimentoServidorESPECIE: TStringField;
    qRecebimentoLocalID_TIPO_PAGAMENTO: TIntegerField;
    qRecebimentoLocalDESCRICAO_PAGAMENTO: TStringField;
    cdsRecebimentoLocalID_TIPO_PAGAMENTO: TIntegerField;
    cdsRecebimentoLocalDESCRICAO_PAGAMENTO: TStringField;
    spRecebeTipoPagmto: TSQLStoredProc;
    dspRecebeTipoPagmto: TDataSetProvider;
    cdsRecebeTipoPagmto: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BB_ATUALIZARClick(Sender: TObject);
  private
    { Private declarations }
    Procedure VerificaConexao;
    Procedure RecebeTipoPagamento;
  public
    { Public declarations }
    IniControle : TIniFile;

  end;

var
  frmAtuPlanoPagmto: TfrmAtuPlanoPagmto;

implementation

{$R *.dfm}

uses uDm, U_LIB, UD_PESQUISA;

{ TForm1 }

procedure TfrmAtuPlanoPagmto.BB_ATUALIZARClick(Sender: TObject);
begin
    RecebeTipoPagamento;

    Panel2.Visible := True;
    Gauge1.Visible := True;
    cdsPagamentoLocal.Open;

    cdsPagamentoServidor.EnableControls;
    Gauge1.MaxValue := cdsPagamentoServidor.RecordCount;
    Gauge1.Progress := 0;
    cdsPagamentoServidor.First;
    Label3.Refresh;
  while NOT cdsPagamentoServidor.Eof do
  begin
    cdsRecebeFormaPagmto.Params[0].AsInteger := cdsPagamentoServidorID_FORMA_PAGAMENTO.AsInteger;
    cdsRecebeFormaPagmto.Params[1].AsString  := cdsPagamentoServidorDESCRICAO_PAGAMENTO.AsString;
    cdsRecebeFormaPagmto.Params[2].AsInteger := cdsPagamentoServidorQT_PARCELAS.AsInteger;
    cdsRecebeFormaPagmto.Params[3].AsInteger := cdsPagamentoServidorQT_DIAS_ENTRE_PARCELAS.AsInteger;
    cdsRecebeFormaPagmto.Params[4].AsInteger := cdsPagamentoServidorQT_DIAS_PRIMEIRA_PARCELA.AsInteger;
    cdsRecebeFormaPagmto.Params[5].AsString  := cdsPagamentoServidorADMINISTRADORA.AsString;
    cdsRecebeFormaPagmto.Params[6].AsFloat   := cdsPagamentoServidorTX_ADM.AsFloat;
    cdsRecebeFormaPagmto.Params[7].AsInteger := cdsPagamentoServidorID_TIPO_RECEBIMENTO.AsInteger;
    cdsRecebeFormaPagmto.Execute;

    cdsPagamentoLocal.ApplyUpdates(0);
    cdsPagamentoLocal.Refresh;
    cdsPagamentoServidor.Next;
 //   Panel2.Refresh;
    Gauge1.Progress := Gauge1.Progress +1 ;
    Gauge1.Refresh;
  end;
    cdsPagamentoServidor.DisableControls;
    Panel2.Visible := False;
end;

procedure TfrmAtuPlanoPagmto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.ConexaoServidor.Connected := False;
  cdsPagamentoServidor.Close;
  cdsPagamentoLocal.Close;
  Action := caFree;
  frmAtuPlanoPagmto := nil;
end;

procedure TfrmAtuPlanoPagmto.FormShow(Sender: TObject);
begin
  VerificaConexao;
end;

procedure TfrmAtuPlanoPagmto.RecebeTipoPagamento;
begin
    Panel2.Visible := True;
    Gauge1.Visible := True;
    cdsRecebimentoLocal.Open;
    cdsRecebimentoServidor.Open;
    cdsRecebimentoServidor.EnableControls;
    Gauge1.MaxValue := cdsRecebimentoServidor.RecordCount;
    Gauge1.Progress := 0;
    cdsRecebimentoServidor.First;
    Label3.Refresh;
  while NOT cdsRecebimentoServidor.Eof do
  begin
    cdsRecebeTipoPagmto.Params[0].AsInteger := cdsRecebimentoServidorID_TIPO_RECEBIMENTO.AsInteger;
    cdsRecebeTipoPagmto.Params[1].AsString  := cdsRecebimentoServidorNOME_RECEBIMENTO.AsString;
    cdsRecebeTipoPagmto.Execute;

    cdsRecebimentoLocal.ApplyUpdates(0);
    cdsRecebimentoLocal.Refresh;
    cdsRecebimentoServidor.Next;
 //   Panel2.Refresh;
    Gauge1.Progress := Gauge1.Progress +1 ;
    Gauge1.Refresh;
  end;
    cdsRecebimentoServidor.DisableControls;
    Panel2.Visible := False;

end;

procedure TfrmAtuPlanoPagmto.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmAtuPlanoPagmto.VerificaConexao;
begin
    if (not DM.ConexaoServidor.Connected) then
    begin
      try
         IniControle := TIniFile.Create(ExtractFilePath(Application.ExeName)+'PDV_SERVIDOR.INI');
        if Trim(IniControle.ReadString('SERVIDOR', 'DATABASE', '')) <> '' then
        begin
          DM.ConexaoServidor.Params.Clear;
          DM.ConexaoServidor.Params.Values['DATABASE'] := Inicontrole.ReadString('SERVIDOR','DATABASE','');
          DM.ConexaoServidor.Params.Values['User_Name'] := Inicontrole.ReadString('SERVIDOR','User_Name','');
          DM.ConexaoServidor.Params.Values['PASSWORD'] := Inicontrole.ReadString('SERVIDOR','PASSWORD','masterkey');
          DM.ConexaoServidor.Params.Values['SQLDialect'] := Trim(Inicontrole.ReadString('SERVIDOR','SQLDialect','3'));
          DM.ConexaoServidor.Params.Values['LOJA'] := Trim(Inicontrole.ReadString('SERVIDOR','LOJA',''));
          DM.ConexaoServidor.connected:= true;
         // LOJA := Inicontrole.ReadString('SERVIDOR','LOJA','');
          Inicontrole.Free;
          //Application.MessageBox('Servidor Conectado Com Sucesso.','Aten��o.',MB_OK+MB_ICONWARNING);
          cdsPagamentoServidor.Close;
          cdsPagamentoServidor.Open;

          cdsPagamentoLocal.Close;
          cdsPagamentoLocal.Open;
        end;
      except
        Application.MessageBox( 'N�o Foi Possiv�l fazer a Conex�o Com o Servidor.' + #13 +
                                'verifique sua Conex�o com a Internet, ' + #13 +
                                'Desconecte e Conecte a VPN, ' + #13 +
                                'Se o Problema persistir Entre em contato com suporte para esclarecer qualquer d�vida.'+ #13 +
                                'Fone(77) 98847-3778','Error Interno',mb_ok + mb_IconError );
      end;
    end
    else
    begin

    end;

end;

end.
