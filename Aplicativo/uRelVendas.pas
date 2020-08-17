unit uRelVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, ComCtrls, DB, SqlExpr, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Datasnap.DBClient,
  Datasnap.Provider, QRCtrls, QuickRpt;

type
  TFrmRelVendas = class(TForm)
    qRelSintetico: TSQLQuery;
    PG_PAINEL: TPageControl;
    tb_sintetico: TTabSheet;
    tb_analitico: TTabSheet;
    dspRelSintetico: TDataSetProvider;
    cdsRelSintetico: TClientDataSet;
    dsRelSintetico: TDataSource;
    dspRelAnalitico: TDataSetProvider;
    cdsRelAnalitico: TClientDataSet;
    dsRelAnalitico: TDataSource;
    qRelAnalitico: TSQLQuery;
    Panel1: TPanel;
    MaskEdit1: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    MaskEdit2: TMaskEdit;
    BB_PESQUISAR: TBitBtn;
    BB_IMPRIMIR: TBitBtn;
    BB_SAIR: TBitBtn;
    qRelSinteticoDT_ORCAMENTO: TDateField;
    qRelSinteticoDESCRICAO: TStringField;
    qRelSinteticoSUM: TLargeintField;
    cdsRelSinteticoDT_ORCAMENTO: TDateField;
    cdsRelSinteticoDESCRICAO: TStringField;
    cdsRelSinteticoSUM: TLargeintField;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    qRelAnaliticoDT_ORCAMENTO: TDateField;
    qRelAnaliticoDESCRICAO: TStringField;
    qRelAnaliticoQUANT: TIntegerField;
    cdsRelAnaliticoDT_ORCAMENTO: TDateField;
    cdsRelAnaliticoDESCRICAO: TStringField;
    cdsRelAnaliticoQUANT: TIntegerField;
    DBGrid2: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    QR_SINTETICO: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRL_LOJA: TQRLabel;
    qrl_periodo: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRL_USUARIO: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRL_TOTAL_VENDA: TQRLabel;
    QRBand5: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel147: TQRLabel;
    QRL_TOTAL: TQRLabel;
    QRSysData26: TQRSysData;
    QRLabel16: TQRLabel;
    QRL_TOTAL_PAGINAS: TQRLabel;
    QR_ANALITICO: TQuickRep;
    QRBand4: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRL_LOJA1: TQRLabel;
    QRL_PERIODO1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel18: TQRLabel;
    QRL_USUARIO1: TQRLabel;
    QRGroup2: TQRGroup;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand6: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand7: TQRBand;
    QRLabel23: TQRLabel;
    QRL_TOTAL1: TQRLabel;
    QRBand8: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRSysData5: TQRSysData;
    QRLabel29: TQRLabel;
    QRL_TOTAL_PAGINAS1: TQRLabel;
    QRLabel12: TQRLabel;
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
    procedure FormShow(Sender: TObject);
    procedure BB_SAIRClick(Sender: TObject);
    procedure BB_IMPRIMIRClick(Sender: TObject);
    procedure QRBand7BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelVendas: TFrmRelVendas;

implementation

uses U_LIB, UD_PESQUISA, uDm, uRetaguarda;

{$R *.dfm}

procedure TFrmRelVendas.BB_IMPRIMIRClick(Sender: TObject);
begin
  if PG_PAINEL.ActivePage = tb_sintetico then
  begin
//    QR_SINTETICO.Prepare;
//    QRL_TOTAL_PAGINAS.Caption := IntToStr(QR_SINTETICO.QRPrinter.PageCount);
    QRL_LOJA.Caption := frmRetagurda.StatusBar1.Panels.Items[1].Text;
    QRL_USUARIO.Caption := frmRetagurda.recInformacoes.login;
    qrl_periodo.Caption := MaskEdit1.Text + ' At� '+MaskEdit2.Text;
    QR_SINTETICO.Preview;
  end;
  if PG_PAINEL.ActivePage = tb_analitico then
  begin
//    QR_ANALITICO.Prepare;
//    QRL_TOTAL_PAGINAS1.Caption := IntToStr(QR_ANALITICO.QRPrinter.PageCount);
    QRL_LOJA1.Caption := frmRetagurda.StatusBar1.Panels.Items[1].Text;
    QRL_USUARIO1.Caption := frmRetagurda.recInformacoes.login;
    QRL_PERIODO1.Caption := MaskEdit1.Text + ' At� '+MaskEdit2.Text;
    QR_ANALITICO.Preview;
  end;

end;

procedure TFrmRelVendas.BB_PESQUISARClick(Sender: TObject);
begin
  cdsRelSintetico.Close;
  cdsRelSintetico.Params[0].AsDate := StrToDate(MaskEdit1.Text);
  cdsRelSintetico.Params[1].AsDate := StrToDate(MaskEdit2.Text);
  cdsRelSintetico.Open;

  if cdsRelSintetico.IsEmpty then
  begin
    Application.MessageBox('Nenhum Registro Encontrado.','Aten��o!!!',MB_OK);
    MaskEdit1.SetFocus;
    BB_IMPRIMIR.Enabled := False;
  end
  else
  begin
    BB_IMPRIMIR.Enabled := True;
    cdsRelAnalitico.Close;
    cdsRelAnalitico.Params[0].AsDate := StrToDate(MaskEdit1.Text);
    cdsRelAnalitico.Params[1].AsDate := StrToDate(MaskEdit2.Text);
    cdsRelAnalitico.Open;

    if cdsRelAnalitico.IsEmpty then
    begin
      Application.MessageBox('Nenhum Registro Encontrado.','Aten��o!!!',MB_OK);
      MaskEdit1.SetFocus;
      BB_IMPRIMIR.Enabled := False;
    end
    else
    begin
      BB_IMPRIMIR.Enabled := True;
      PG_PAINEL.ActivePage := tb_sintetico;
    end;
  end;
end;

procedure TFrmRelVendas.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmRelVendas := nil;
end;

procedure TFrmRelVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TFrmRelVendas.FormShow(Sender: TObject);
begin
  PG_PAINEL.ActivePage := tb_sintetico;
  MaskEdit1.SetFocus;
end;

procedure TFrmRelVendas.MaskEdit1Enter(Sender: TObject);
var
  atual:TDate;
     dia,mes,ano:Word;
  dia1,mes1,ano1:Word;
  mes2 : String;
begin
  atual:=Now;
  DecodeDate(atual,ano,mes,dia);
  if mes < 10 then
  begin
    mes2 := '0'+IntToStr(mes);
    MaskEdit1.Text:='01'+'/'+(mes2)+'/'+IntToStr(ano);
  end
  else
  begin
    MaskEdit1.Text:='01'+'/'+IntToStr(mes)+'/'+IntToStr(ano);
  end;
end;

procedure TFrmRelVendas.MaskEdit1Exit(Sender: TObject);
var
  texto:Tdate;
begin
  texto := UltimoDiaMes(Date);
  MaskEdit2.Text := (datetostr(Texto));

end;

procedure TFrmRelVendas.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT SUM(IP.QUANT) FROM tb_item_pdv IP '+
                                ' JOIN tb_pdv PD ON (PD.nr_orcamento = IP.nr_orcamento)'+
                                ' WHERE PD.dt_orcamento between '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(MaskEdit1.Text))) +' AND'
                                                                 +QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(MaskEdit2.Text)))+
                                ' and ip.status =''V'''+
                                ' AND PD.STATUS = ''F''';
 DM.cdsDinamica.Open;
 QRL_TOTAL_VENDA.Caption := IntToStr(DM.cdsDinamica.Fields[0].AsInteger);

end;

procedure TFrmRelVendas.QRBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT SUM(IP.QUANT) FROM tb_item_pdv IP '+
                                ' JOIN tb_pdv PD ON (PD.nr_orcamento = IP.nr_orcamento)'+
                                ' WHERE PD.dt_orcamento between '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(MaskEdit1.Text))) +' AND'
                                                                 +QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(MaskEdit2.Text)))+
                                ' and ip.status =''V'''+
                                ' AND PD.STATUS = ''F''';
 DM.cdsDinamica.Open;
 QRL_TOTAL1.Caption := IntToStr(DM.cdsDinamica.Fields[0].AsInteger);
end;

procedure TFrmRelVendas.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

function TFrmRelVendas.UltimoDiaMes(Mdt: TDateTime): TDateTime;
var
  ano, mes, dia : word;
  mDtTemp : TDateTime;
begin
  Decodedate(mDt, ano, mes, dia);
  mDtTemp := (mDt - dia) + 33;
  Decodedate(mDtTemp, ano, mes, dia);
  Result := mDtTemp - dia;

end;

end.
