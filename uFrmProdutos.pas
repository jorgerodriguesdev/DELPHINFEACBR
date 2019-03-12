unit uFrmProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, DB, Grids, DBGrids, StdCtrls, ActnList, Buttons,
  ExtCtrls, DBCtrls, FMTBcd, SqlExpr, DBClient, Provider;

type
  TFrmProdutos = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    GridProdutos: TDBGrid;
    DataProdutos: TDataSource;
    BtnLocalizar: TBitBtn;
    BtnEncerrar: TBitBtn;
    ActionList1: TActionList;
    ActLocalizar: TAction;
    ActEncerrar: TAction;
    RadioTipo: TRadioGroup;
    ChAtivos: TCheckBox;
    RadioTipoProd: TRadioGroup;
    GrpLocalizar: TGroupBox;
    Edtlocalizar: TEdit;
    ChAtivoVenda: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure ActEncerrarExecute(Sender: TObject);
    procedure GridProdutosTitleClick(Column: TColumn);
    procedure ComboGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure GridProdutosEnter(Sender: TObject);
    procedure GridProdutosExit(Sender: TObject);
    procedure GridProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure GridProdutosDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    sIDProd : Integer;
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

Uses uLibrary, uDmNFe, uDmConexao, RTLConsts;

{$R *.dfm}

procedure TFrmProdutos.FormShow(Sender: TObject);
begin
  inherited;
  DataProdutos.DataSet := DmNFe.CdsConsulta;

end;

procedure TFrmProdutos.ActLocalizarExecute(Sender: TObject);
begin
  inherited;
  DmNFe.CdsConsulta.Close;
  DmNFe.CdsConsulta.Params.Clear;
  DmNFe.QryConsulta.Close;
  DmNFe.QryConsulta.SQL.Clear;
  DmNFe.QryConsulta.SQL.Add('select produtos.id,produtos.descricao,');
  DmNFe.QryConsulta.SQL.Add('produtos.referencia,produtos.unidade,');
  DmNFe.QryConsulta.SQL.Add('produtos.estoque,produtos.preco_venda from produtos');
  DmNFe.QryConsulta.SQL.Add('where produtos.ativo = :pAtivo');
  if ChAtivoVenda.Checked then
     DmNFe.QryConsulta.SQL.Add('and grupo.ativo_venda = '+QuotedStr('T'));
  if RadioTipo.ItemIndex = 0 then // ID
     DmNFe.QryConsulta.SQL.Add('and produtos.id = :pID')
  else if RadioTipo.ItemIndex = 1 then // Descricao
     DmNFe.QryConsulta.SQL.Add('and produtos.descricao like :pLoc')
  else if RadioTipo.ItemIndex = 2 then // Referencia
     DmNFe.QryConsulta.SQL.Add('and produtos.referencia like :pLoc');
  // tipo de produto
  if RadioTipoProd.ItemIndex <> 2 then
     DmNFe.QryConsulta.SQL.Add('and produtos.tipoprod = :pTipo');
  // passa párametros
  DmNFe.CdsConsulta.FetchParams;
  if ChAtivos.Checked then
     DmNFe.CdsConsulta.Params.ParamByName('pAtivo').AsString := 'T'
  else if not ChAtivos.Checked then
     DmNFe.CdsConsulta.Params.ParamByName('pAtivo').AsString := 'F';
  //
  if RadioTipo.ItemIndex = 0 then // codigo
     DmNFe.CdsConsulta.Params.ParamByName('pID').AsInteger := StrToInt(Edtlocalizar.Text)
  else if (RadioTipo.ItemIndex = 1) or (RadioTipo.ItemIndex = 2) then // descricao // referencia
     DmNFe.CdsConsulta.Params.ParamByName('pLoc').AsString := UpperCase(Edtlocalizar.Text)+'%';
  //
  if RadioTipoProd.ItemIndex <> 2 then
     DmNFe.CdsConsulta.Params.ParamByName('pTipo').AsInteger := RadioTipoProd.ItemIndex;
  // verifica dados
  DmNFe.CdsConsulta.Open;
  GridProdutos.SetFocus;

end;

procedure TFrmProdutos.ActEncerrarExecute(Sender: TObject);
begin
  inherited;
  Close;
  
end;

procedure TFrmProdutos.GridProdutosTitleClick(Column: TColumn);
begin
  inherited;
  GridOrdem(DmNFe.CdsConsulta,GridProdutos,Column);
  
end;

procedure TFrmProdutos.ComboGrupoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self,Key);
  
end;

procedure TFrmProdutos.GridProdutosEnter(Sender: TObject);
begin
  inherited;
  GridProdutos.Tag := 1;

end;

procedure TFrmProdutos.GridProdutosExit(Sender: TObject);
begin
  inherited;
  GridProdutos.Tag := 0;

end;

procedure TFrmProdutos.GridProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (Key = #13) and (GridProdutos.Tag = 1) then
  begin
    sIDProd := DataProdutos.DataSet.FieldByname('ID').AsInteger;
    Close;
  end;
end;

procedure TFrmProdutos.GridProdutosDblClick(Sender: TObject);
begin
  inherited;
  sIDProd := DataProdutos.DataSet.FieldByname('ID').AsInteger;
  Close;

end;

procedure TFrmProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//  DataProdutos.DataSet.Close;
//  DataGrupo.DataSet.Close;
  
end;

end.



