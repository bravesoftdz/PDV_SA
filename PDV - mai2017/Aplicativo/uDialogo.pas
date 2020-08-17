unit uDialogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, ExtCtrls, FMTBcd, DB,
  DBClient, Provider, SqlExpr, QRCtrls, QuickRpt, ComCtrls,
  DBCtrls, Grids, DBGrids;

type
  TfrmDialago = class(TForm)
    sdsCidadePedidoAberto: TSQLDataSet;
    dspCidadePedidoAberto: TDataSetProvider;
    cdsCidadePedidoAberto: TClientDataSet;
    dsCidadePedidoAberto: TDataSource;
    sdsCidadePedidoAbertoCIDADE: TStringField;
    cdsCidadePedidoAbertoCIDADE: TStringField;
    sdsCidadePedidoAbertoCODIGO_MUNIC: TStringField;
    cdsCidadePedidoAbertoCODIGO_MUNIC: TStringField;
    sdsClientePedidoAberto: TSQLDataSet;
    dspClientePedidoAberto: TDataSetProvider;
    cdsClientePedidoAberto: TClientDataSet;
    dsClientePedidoAberto: TDataSource;
    sdsClientePedidoAbertoID_CLIENTE: TIntegerField;
    sdsClientePedidoAbertoR_SOCIAL: TStringField;
    cdsClientePedidoAbertoID_CLIENTE: TIntegerField;
    cdsClientePedidoAbertoR_SOCIAL: TStringField;
    NB_DIALOGO: TNotebook;
    B_ABERTO_CLIENTE: TBevel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure SomaTotalConrecCLi;
  public
    { Public declarations }
    sCampoFocus,sCondicao,sOrdem: String;
  end;

var
  frmDialago: TfrmDialago;

implementation

uses uDm, U_LIB, uPdv;

{$R *.dfm}

procedure TfrmDialago.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmDialago.SomaTotalConrecCLi;
begin

end;

end.
