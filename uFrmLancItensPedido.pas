unit uFrmLancItensPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, DB, ActnList, uFrameConfirmaCancela, ExtCtrls,
  StdCtrls, Mask, DBCtrls;

type
  TFrmLancItensPedido = class(TFrmPadrao)
    DataItens: TDataSource;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DbIDProduto: TDBEdit;
    Label4: TLabel;
    DbDescricao: TDBEdit;
    Label5: TLabel;
    DbQuantidade: TDBEdit;
    Label6: TLabel;
    DbValor: TDBEdit;
    Label7: TLabel;
    DbDesconto: TDBEdit;
    Label8: TLabel;
    DbAcrescimo: TDBEdit;
    Label9: TLabel;
    DbTotal: TDBEdit;
    Panel1: TPanel;
    Frame: TFrameConfirmaCancela;
    ActionList1: TActionList;
    ActConfirmar: TAction;
    ActCancelar: TAction;
    ActCalculaValorTotal: TAction;
    procedure FormShow(Sender: TObject);
    procedure ActConfirmarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure DbIDProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure DbIDProdutoExit(Sender: TObject);
    procedure ActCalculaValorTotalExecute(Sender: TObject);
    procedure DbQuantidadeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLancItensPedido: TFrmLancItensPedido;

implementation

Uses uLibrary, uDmNFe, uFrmProdutos;

{$R *.dfm}

procedure TFrmLancItensPedido.FormShow(Sender: TObject);
begin
  inherited;
  DataItens.DataSet := DmNFe.CdsPedidoItens;
  DbIDProduto.SetFocus;
  
end;

procedure TFrmLancItensPedido.ActConfirmarExecute(Sender: TObject);
begin
  inherited;
  //
  DataItens.DataSet.post;
  Grava_Dados(DataItens.DataSet);
  close;

end;

procedure TFrmLancItensPedido.ActCancelarExecute(Sender: TObject);
begin
  inherited;
  //
  DataItens.DataSet.Cancel;
  Grava_Dados(DataItens.DataSet);
  close;

end;

procedure TFrmLancItensPedido.DbIDProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  TabEnter(Self,Key);
  
end;

procedure TFrmLancItensPedido.DbIDProdutoExit(Sender: TObject);
begin
  inherited;
  if DbIDProduto.Text <> '' then
  begin
    if DmNFe.Dados_Produto(StrToInt(DbIDProduto.Text)) then
    begin
      DataItens.DataSet.FieldByName('DESCRICAO').AsString := DmNFe.CdsProdutosDESCRICAO.AsString;
      DataItens.DataSet.FieldByName('VALOR').AsFloat      := DmNFe.CdsProdutosPRECO_VENDA.AsFloat;
    end
    else
    begin
      MessageDlg('Produto não encontrado. Verifique!!!', mtWarning, [mbOK], 0);
      DbIDProduto.SetFocus;
      Abort;
    end;
  end
  else
  begin
    FrmProdutos.sIDProd := 0;
    FrmProdutos.ShowModal;
    if FrmProdutos.sIDProd > 0 then
    begin
      DataItens.DataSet.FieldByName('IDPRODUTO').AsInteger := FrmProdutos.sIDProd;
      DbIDProduto.SetFocus;
    end;
  end;
end;

procedure TFrmLancItensPedido.ActCalculaValorTotalExecute(Sender: TObject);
var aTotalItem : Double;
begin
  inherited;
  aTotalItem := 0;
  aTotalItem := DataItens.DataSet.FieldByName('QUANTIDADE').AsFloat*
                DataItens.DataSet.FieldByName('VALOR').AsFloat+
                DataItens.DataSet.FieldByName('ACRESCIMO').AsFloat-
                DataItens.DataSet.FieldByName('DESCONTO').AsFloat;
  DataItens.DataSet.FieldByName('VALOR_TOTAL').AsFloat := aTotalItem;
end;

procedure TFrmLancItensPedido.DbQuantidadeExit(Sender: TObject);
begin
  inherited;
  ActCalculaValorTotalExecute(Sender);

end;

end.
