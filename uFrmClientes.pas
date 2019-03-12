unit uFrmClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, DB, ExtCtrls, StdCtrls, ActnList, Buttons, Grids,
  DBGrids, FMTBcd, SqlExpr, DBClient, Provider;

type
  TFrmClientes = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    DataClientes: TDataSource;
    DBGrid1: TDBGrid;
    RadioOpcao: TRadioGroup;
    RadioTipo: TRadioGroup;
    BtnPesquisa: TBitBtn;
    ActionList1: TActionList;
    ActPesquisar: TAction;
    GrpDados: TGroupBox;
    Label1: TLabel;
    EdtDado: TEdit;
    BtnEncerrar: TButton;
    ActEncerrar: TAction;
    ActTransfereCliente: TAction;
    DspConsulta: TDataSetProvider;
    procedure FormShow(Sender: TObject);
    procedure ActPesquisarExecute(Sender: TObject);
    procedure ActEncerrarExecute(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ActTransfereClienteExecute(Sender: TObject);
    procedure EdtDadoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    sCodCli:Integer;
  end;

var
  FrmClientes: TFrmClientes;

implementation

Uses uLibrary,uDmNFe, uDmConexao;

{$R *.dfm}

procedure TFrmClientes.FormShow(Sender: TObject);
begin
  inherited;
  DataClientes.DataSet := DmNFe.CdsConsulta;
  EdtDado.SetFocus;
  
end;

procedure TFrmClientes.ActPesquisarExecute(Sender: TObject);
begin
  inherited;
  // efetua pesquisa de cliente
  DmNFe.CdsConsulta.Close;
  DmNFe.CdsConsulta.Params.Clear;
  // monta SQL de consulta
  DmNFe.QryConsulta.SQL.Clear;
  DmNFe.QryConsulta.SQL.Add('select contato.id,contato.nome,contato.cnpj_cpf,');
  DmNFe.QryConsulta.SQL.Add('contato.cidade_end,contato.uf_end,contato.telefone,');
  DmNFe.QryConsulta.SQL.Add('contato.ativo from contato');
  // opcao
  if RadioOpcao.ItemIndex = 0 then // Codigo
     DmNFe.QryConsulta.SQL.Add('where contato.id = :pOpcao')
  else if RadioOpcao.ItemIndex = 1 then // nome
     DmNFe.QryConsulta.SQL.Add('where contato.nome like :pOpcao')
  else if RadioOpcao.ItemIndex = 2 then // cnpg/cpf
     DmNFe.QryConsulta.SQL.Add('where contato.cnpj_cpf = :pOpcao');
  // tipo
  if RadioTipo.ItemIndex = 0 then // cliente
    DmNFe.QryConsulta.SQL.Add('and (contato.tipo_contato = '+QuotedStr('C')+' or contato.tipo_contato = '+QuotedStr('A')+')')
  else if RadioTipo.ItemIndex = 1 then // fornecedor
    DmNFe.QryConsulta.SQL.Add('and (contato.tipo_contato = '+QuotedStr('F')+' or contato.tipo_contato = '+QuotedStr('A')+')');
  // passa parametros
  DmNFe.CdsConsulta.FetchParams;
  if RadioOpcao.ItemIndex = 0 then // codigo
     DmNFe.CdsConsulta.Params.ParamByName('pOpcao').AsInteger := StrToInt(EdtDado.Text)
  else if RadioOpcao.ItemIndex = 1 then // nome
     DmNFe.CdsConsulta.Params.ParamByName('pOpcao').AsString  := EdtDado.Text+'%'
  else if RadioOpcao.ItemIndex = 2 then // cnpj/cpf
     DmNFe.CdsConsulta.Params.ParamByName('pOpcao').AsString  := EdtDado.Text;
  // exibe resultado
  DmNFe.CdsConsulta.Open;
  DBGrid1.SetFocus;
end;

procedure TFrmClientes.ActEncerrarExecute(Sender: TObject);
begin
  inherited;
  close;
  
end;

procedure TFrmClientes.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.Tag := 1;

end;

procedure TFrmClientes.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  DBGrid1.Tag := 0;

end;

procedure TFrmClientes.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if DBGrid1.Tag = 1 then
     ActTransfereClienteExecute(Sender);
     
end;

procedure TFrmClientes.ActTransfereClienteExecute(Sender: TObject);
begin
  inherited;
  if DataClientes.DataSet.RecordCount > 0 then
  begin
    sCodCli := DataClientes.DataSet.FieldByname('ID').AsInteger;
    Close;
  end;

end;

procedure TFrmClientes.EdtDadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self,Key);
  
end;

procedure TFrmClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataClientes.DataSet.Close;
  
end;

end.
