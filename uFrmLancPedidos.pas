unit uFrmLancPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ExtCtrls, DBCtrls, uFrameBotaoVertical, Grids,
  DBGrids, Buttons, StdCtrls, Mask, ComCtrls, ActnList, DB, Menus, DBClient;

type
  TFrmLancPedidos = class(TFrmCadPadrao)
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    GrpDadosCliente: TGroupBox;
    DbIDCliente: TDBEdit;
    GrpDadosPedido: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DbID: TDBEdit;
    DbDataCad: TDBEdit;
    DbHoraCad: TDBEdit;
    DbDataEmissao: TDBEdit;
    DbHoraEmissao: TDBEdit;
    GrpValores: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DbValor: TDBEdit;
    DbDesconto: TDBEdit;
    DbAcrescimo: TDBEdit;
    DbOutros: TDBEdit;
    DbTotal: TDBEdit;
    GrpItens: TGroupBox;
    GriItens: TDBGrid;
    PnBotoes: TPanel;
    Frame: TFrameBotaoVertical;
    TabSheet4: TTabSheet;
    DataItens: TDataSource;
    DataCliente: TDataSource;
    ActCadCliente: TAction;
    ActConsultaCliente: TAction;
    ActConfirmaPedido: TAction;
    DbCliente: TDBEdit;
    DbPedido: TDBEdit;
    Label8: TLabel;
    GrpDadosEntrega: TGroupBox;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    Label18: TLabel;
    DBEdit8: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit15: TDBEdit;
    Label21: TLabel;
    DBNomeCli: TDBEdit;
    ComboUF: TDBLookupComboBox;
    SpbConCliente: TSpeedButton;
    PopupMenu1: TPopupMenu;
    IncluirItem1: TMenuItem;
    ExcluirItem1: TMenuItem;
    N1: TMenuItem;
    F4Confirmar1: TMenuItem;
    EditarItem1: TMenuItem;
    LiberarPedidoFechado1: TMenuItem;
    CancelarPedido1: TMenuItem;
    ActIncluirItens: TAction;
    BtnIncluirItem: TBitBtn;
    BtnExcluirItem: TBitBtn;
    BtnFinalizar: TBitBtn;
    BtnRetornar: TBitBtn;
    ActEditarItens: TAction;
    ActExcluirItem: TAction;
    ActRetirarFechamento: TAction;
    BitBtn1: TBitBtn;
    RadioTipoDoc: TDBRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
    procedure DbIDClienteExit(Sender: TObject);
    procedure DbIDKeyPress(Sender: TObject; var Key: Char);
    procedure ActConfirmaPedidoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActConfirmarExecute(Sender: TObject);
    Procedure Grava_TotalProdutos;
    procedure EditarItem1Click(Sender: TObject);
    procedure ExcluirItem1Click(Sender: TObject);
    procedure DbDescontoExit(Sender: TObject);
    procedure ActPesquisarExecute(Sender: TObject);
    procedure CancelarPedido1Click(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActIncluirItensExecute(Sender: TObject);
    procedure IncluirItem1Click(Sender: TObject);
    procedure ActEditarItensExecute(Sender: TObject);
    procedure ActExcluirItemExecute(Sender: TObject);
    procedure ActRetirarFechamentoExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GriItensKeyPress(Sender: TObject; var Key: Char);
    procedure ActConsultaClienteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar_DadosPedido;
    procedure Grava_TotalPedido;
    procedure ConfirmaDadosPedido;
    procedure VerificaDados;
    procedure ConfirmaDadosItens;

  public
    { Public declarations }
  end;

var
  FrmLancPedidos: TFrmLancPedidos;

implementation

uses uLibrary, uFrmClientes, uDmNFe, uFrmCadastroCliente, uFrmLancItensPedido,
  uFrmPedidosConsulta, uFrmProdutos;

{$R *.dfm}

procedure TFrmLancPedidos.FormShow(Sender: TObject);
begin
  inherited;
  DataDados.DataSet      := DmNFe.CdsPedidos;
  DataItens.DataSet      := DmNFe.CdsPedidoItens;
  DataCliente.DataSet    := DmNFe.CdsContatos;
  DmNFe.Dados_Pedido(0);
  DmNFe.Dados_Contato(0);
  DmNFe.Dados_PedidoItens(0);
  PageControl1.TabIndex := 0;
  VerificaDados;
  DbIDCliente.SetFocus;

end;

procedure TFrmLancPedidos.ActionList1Update(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  AbilitaFrame(Frame,DataDados.DataSet);

end;

procedure TFrmLancPedidos.DbIDClienteExit(Sender: TObject);
begin
  inherited;
  if (DbIDCliente.Text <> '') and (DataDados.DataSet.State in [dsInsert,dsEdit]) then
  begin
    if DmNFe.Dados_Contato(StrToInt(DbIDCliente.Text)) then
       DmNFe.PreencheDadosCliente(0)
    else
    begin
      MessageDlg('Cliente não encontrado. Verifique!!!', mtWarning, [mbOK], 0);
      DbIDCliente.SetFocus;
      Abort;
    end;
  end
  else if (DbIDCliente.Text = '') and (DataDados.DataSet.State in [dsInsert,dsEdit]) then
  begin
    ActConsultaClienteExecute(Sender);
//    DbIDClienteExit(Sender);
  end

end;

procedure TFrmLancPedidos.DbIDKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self,Key);

end;

procedure TFrmLancPedidos.ActConfirmaPedidoExecute(Sender: TObject);
var aValorConta:Double;
begin
  inherited;
  // verificações
  if (DataDados.DataSet.FieldByName('CANCELADO').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra cancelado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataDados.DataSet.FieldByName('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if DataItens.DataSet.RecordCount = 0 then
  begin
    MessageDlg('Não é permitido finalizar o pedido sem itens. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if DataDados.DataSet.FieldByName('VALOR_TOTAL').AsFloat <= 0 then
  begin
    MessageDlg('Não é permitido finalizar o pedido com valores zerados ou negativos.', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataDados.DataSet.FieldByName('IDCLIENTE').IsNull) or
     (DataDados.DataSet.FieldByName('IDCLIENTE').AsString = '') then
  begin
    MessageDlg('É necessário informar o cliente. Verifique', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if MessageDlg('Confirma o fechamento do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    // grava fechamento no pedido
    if not(DataDados.DataSet.State in [dsInsert,dsEdit]) then
       DataDados.DataSet.Edit;
    DataDados.DataSet.FieldByName('CONFIRMADA').AsString := 'S';
    Grava_Dados(DataDados.DataSet);
    MessageDlg('Pedido fechado com sucesso!!!', mtWarning, [mbOK], 0);
    Atualizar_DadosPedido;
    VerificaDados;
  end;

end;

procedure TFrmLancPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataItens.DataSet.Close;
  DataCliente.DataSet.Close;
  DataDados.DataSet.Close;

end;

procedure TFrmLancPedidos.ActIncluirExecute(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
  DmNFe.Dados_Pedido(0);
  DmNFe.Dados_PedidoItens(0);
  VerificaDados;
  inherited;
  DbIDCliente.SetFocus;
//  VerificaDados;
end;

procedure TFrmLancPedidos.ActConfirmarExecute(Sender: TObject);
begin
  if not DmNFe.VerificaCampos then
     Abort;
  inherited;
  Grava_Dados(DataDados.DataSet);
  Grava_Dados(DataItens.DataSet);
  VerificaDados;

end;

procedure TFrmLancPedidos.Grava_TotalProdutos;
begin
  if not(DataDados.DataSet.State in [dsInsert,dsEdit]) then
     DataDados.DataSet.Edit;
  DataDados.DataSet.FieldByName('VALOR').AsFloat       := Retorna_Total_Pedido(DataDados.DataSet.FieldByname('ID').AsInteger);
  DataDados.DataSet.FieldByName('VALOR_TOTAL').AsFloat := Retorna_Total_Pedido(DataDados.DataSet.FieldByname('ID').AsInteger);
  Grava_Dados(DataDados.DataSet);

end;

procedure TFrmLancPedidos.EditarItem1Click(Sender: TObject);
begin
  inherited;
  ActEditarItensExecute(Sender);
end;

procedure TFrmLancPedidos.ExcluirItem1Click(Sender: TObject);
begin
  inherited;
  ActExcluirItemExecute(Sender);
end;

procedure TFrmLancPedidos.Grava_TotalPedido;
var aTotalPedido:Double;
begin
  aTotalPedido := DataDados.DataSet.FieldByname('VALOR').AsFloat+
                  DataDados.DataSet.FieldByname('OUTRAS_DESPESAS').AsFloat+
                  DataDados.DataSet.FieldByname('ACRESCIMO').AsFloat-
                  DataDados.DataSet.FieldByname('DESCONTO').AsFloat;
  if not(DataDados.DataSet.State in [dsInsert,dsEdit]) then
     DataDados.DataSet.Edit;
  DataDados.DataSet.FieldByName('VALOR_TOTAL').AsFloat := aTotalPedido;

end;

procedure TFrmLancPedidos.ConfirmaDadosPedido;
begin
  if DataDados.DataSet.State in [dsInsert,dsEdit] then
  begin
    if not DmNFe.VerificaCampos then Abort;
    Grava_Dados(DataDados.DataSet);
  end;

end;

procedure TFrmLancPedidos.DbDescontoExit(Sender: TObject);
begin
  inherited;
  Grava_TotalPedido;

end;

procedure TFrmLancPedidos.ActPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPedidosConsulta,FrmPedidosConsulta);
  try
    FrmPedidosConsulta.sIDPedido := 0;
    FrmPedidosConsulta.ShowModal;
    if FrmPedidosConsulta.sIDPedido > 0 then
    begin
      if DmNFe.Dados_Pedido(FrmPedidosConsulta.sIDPedido) then
      begin
        DmNFe.Dados_PedidoItens(DataDados.DataSet.FieldByName('ID').AsInteger);
      end;
      PageControl1.TabIndex := 0;
    end;
    VerificaDados;
  finally
    FrmPedidosConsulta.Destroy;
  end;

end;

procedure TFrmLancPedidos.VerificaDados;
begin
  DmNFe.CdsConsulta.SaveToFile('c:\arquivo.xml',dfXML);
  // verifica se cliente permite alterar o nome
  DmNFe.Dados_Contato(DataDados.DataSet.FieldByname('ID').AsInteger);
  DBNomeCli.Enabled := false;
  if sEditaCliPed = 'S' then
     DBNomeCli.Enabled := true;
  GrpDadosCliente.Enabled     := true;
  GrpDadosEntrega.Enabled     := true;
  GrpValores.Enabled          := true;
  GriItens.Enabled            := true;
  RadioTipoDoc.Enabled        := true;
  ActConfirmaPedido.Enabled := true;
  if (DataDados.DataSet.FieldByName('CONFIRMADA').AsString = 'S') or
     (DataDados.DataSet.FieldByName('CANCELADO').AsString = 'S') then
  begin
    GrpDadosCliente.Enabled     := false;
    GrpDadosEntrega.Enabled     := false;
    GrpValores.Enabled          := false;
    GriItens.Enabled            := false;
    RadioTipoDoc.Enabled        := false;
    ActConfirmaPedido.Enabled   := false;
  end;


end;

procedure TFrmLancPedidos.CancelarPedido1Click(Sender: TObject);
begin
  inherited;
  //
  if (DataDados.DataSet.FieldByName('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Não pode cancelar pedido finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if MessageDlg('Confirma o cancelamento do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    // retira fechamento no pedido
    if not(DataDados.DataSet.State in [dsInsert,dsEdit]) then
       DataDados.DataSet.Edit;
    DataDados.DataSet.FieldByName('CANCELADO').AsString := 'S';
    Grava_Dados(DataDados.DataSet);
    MessageDlg('Pedido cancelado com sucesso!!!', mtWarning, [mbOK], 0);
  end;
  VerificaDados;

end;

procedure TFrmLancPedidos.ActExcluirExecute(Sender: TObject);
begin
  // verifica se pedido já esta confirmado ou cancelado
  if (DataDados.DataSet.FieldByName('CANCELADO').AsString = 'S') or
     (DataDados.DataSet.FieldByName('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra cancelado ou Confirmado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if MessageDlg('Confirma a Exclusão deste pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
     Abort;
  inherited;
  DmNFe.Dados_PedidoItens(0);
  VerificaDados;
  
end;

procedure TFrmLancPedidos.ActIncluirItensExecute(Sender: TObject);
var AuxQuant, AuxDesc : String;
    aQuantidade : Double;
begin
  inherited;
  ConfirmaDadosPedido;
  // VERIFICAÇÕES
  if (DataDados.DataSet.FieldByName('CANCELADO').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra cancelado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataDados.DataSet.FieldByName('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if DataItens.DataSet.State in [dsInsert,dsEdit] then
     Grava_Dados(DataItens.DataSet);
  //
  if DataDados.DataSet.RecordCount > 0 then
  begin
//    Application.CreateForm(TfrmProdutos,FrmProdutos);
    try
      FrmProdutos.sIDProd := 0;
      FrmProdutos.ShowModal;
      if FrmProdutos.sIDProd > 0 then
      begin
        if DmNFe.Dados_Produto(FrmProdutos.sIDProd) then
        begin
          DataItens.DataSet.Append;
          DataItens.DataSet.FieldByName('IDPRODUTO').AsInteger := DmNFe.CdsProdutos.FieldByname('ID').AsInteger;
          DataItens.DataSet.FieldByName('DESCRICAO').AsString  := Trim(Copy(DmNFe.CdsProdutos.FieldByname('DESCRICAO').AsString,1,50));
          DataItens.DataSet.FieldByName('EAN13').AsString      := DmNFe.CdsProdutos.FieldByname('EAN13').AsString;
          DataItens.DataSet.FieldByName('VALOR').AsFloat       := DmNFe.CdsProdutos.FieldByName('PRECO_VENDA').AsCurrency;
          DataItens.DataSet.FieldByName('VALOR_REAL').AsFloat  := DmNFe.CdsProdutos.FieldByName('PRECO_VENDA').AsCurrency;
          DataItens.DataSet.FieldByName('TIPOPROD').AsInteger  := DmNFe.CdsProdutos.FieldByName('TIPOPROD').AsInteger;
          AuxQuant := '';
          if InputQuery('Quantidade','Informe a Quantidade',AuxQuant) then
          begin
            try
              aQuantidade := StrToFloat(AuxQuant);
            except
              MessageDlg('Quantidade inválida!!!', mtWarning, [mbOK], 0);
              DataItens.DataSet.Cancel;
              Abort;
            end;
          end
          else
            aQuantidade := 1;
          DataItens.DataSet.FieldByName('QUANTIDADE').AsFloat := aQuantidade;
        end;
      end;
    finally
//      FrmProdutos.Destroy;
    end;
    GriItens.SetFocus;
  end;

end;

procedure TFrmLancPedidos.IncluirItem1Click(Sender: TObject);
begin
  inherited;
  ActIncluirItensExecute(Sender);
end;

procedure TFrmLancPedidos.ActEditarItensExecute(Sender: TObject);
var AuxQuant : String;
    aQuantidade : Double;
begin
  inherited;
  ConfirmaDadosPedido;
  // VERIFICAÇÕES
  if (DataDados.DataSet.FieldByName('CANCELADO').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra cancelado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataDados.DataSet.FieldByName('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  DmNFe.Dados_Produto(DataItens.DataSet.FieldByname('IDPRODUTO').AsInteger);
  AuxQuant := '';
  if InputQuery('Quantidade','Informe a Quantidade',AuxQuant) then
  begin
    try
      aQuantidade := StrToFloat(AuxQuant);
    except
      MessageDlg('Quantidade inválida!!!', mtWarning, [mbOK], 0);
      DataItens.DataSet.Cancel;
      Abort;
    end;
  end
  else
    aQuantidade := 1;
  //
  if not(DataItens.DataSet.State in [dsInsert,dsEdit]) then
     DataItens.DataSet.Edit;
  DataItens.DataSet.FieldByName('QUANTIDADE').AsFloat := aQuantidade;
  ConfirmaDadosItens;

end;

procedure TFrmLancPedidos.ActExcluirItemExecute(Sender: TObject);
begin
  inherited;
  ConfirmaDadosPedido;
  // VERIFICAÇÕES
  if (DataDados.DataSet.FieldByName('CANCELADO').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra cancelado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  if (DataDados.DataSet.FieldByName('CONFIRMADA').AsString = 'S') then
  begin
    MessageDlg('Este pedido já se encontra finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if (DataDados.DataSet.RecordCount > 0) and
     (DataItens.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Confirma a exclusão do item?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
      ExcluiItensComposicao(DataDados.DataSet.FieldByName('ID').AsInteger,DataItens.DataSet.FieldByName('ID').AsInteger);
      DataItens.DataSet.Delete;
//      Grava_Dados([DataDados.DataSet,DataItens.DataSet]);
      ActConfirmarExecute(Sender);
      Grava_TotalProdutos;
      Grava_TotalPedido;
    end;
  end;

end;

procedure TFrmLancPedidos.ActRetirarFechamentoExecute(Sender: TObject);
begin
  inherited;
  if (DataDados.DataSet.FieldByName('CONFIRMADA').AsString = 'N') then
  begin
    MessageDlg('Este pedido não esta finalizado. Verifique!!!', mtWarning, [mbOK], 0);
    Abort;
  end;
  //
  if MessageDlg('Confirma a retirada do fechamento do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    // retira fechamento no pedido
    if not(DataDados.DataSet.State in [dsInsert,dsEdit]) then
       DataDados.DataSet.Edit;
    DataDados.DataSet.FieldByName('CONFIRMADA').AsString := 'N';
    Grava_Dados(DataDados.DataSet);
    MessageDlg('Retirada do fechamento concluída com sucesso!!!', mtWarning, [mbOK], 0);
  end;
  Atualizar_DadosPedido;
  VerificaDados;

end;

procedure TFrmLancPedidos.ActCancelarExecute(Sender: TObject);
begin
  inherited;
  VerificaDados;

end;

procedure TFrmLancPedidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  AlterVirgulaPonto(Self,Key);

end;

procedure TFrmLancPedidos.GriItensKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key = #13) then
  begin
    ConfirmaDadosItens;
  end;
end;

procedure TFrmLancPedidos.ConfirmaDadosItens;
begin
  Grava_Dados(DataItens.DataSet);
  Grava_TotalProdutos;
  Grava_TotalPedido;
  Grava_Dados(DataDados.DataSet);

end;

procedure TFrmLancPedidos.Atualizar_DadosPedido;
begin
  if DataDados.DataSet.FieldByName('ID').AsInteger > 0 then
  begin
    DmNFe.Dados_Pedido(DataDados.DataSet.FieldByName('ID').AsInteger);
    DmNFe.Dados_PedidoItens(DataDados.DataSet.FieldByName('ID').AsInteger);
  end;

end;


procedure TFrmLancPedidos.ActConsultaClienteExecute(Sender: TObject);
begin
  inherited;
  FrmClientes.sCodCli := 0;
  FrmClientes.ShowModal;
  if FrmClientes.sCodCli > 0 then
  begin
    if not(DataDados.DataSet.State in [dsInsert,dsEdit]) then
       DataDados.DataSet.Edit;
    DataDados.DataSet.FieldByName('IDCLIENTE').AsInteger := FrmClientes.sCodCli;
    if DmNFe.Dados_Contato(FrmClientes.sCodCli) then
    begin
      if (DataDados.DataSet.State in [dsInsert,dsEdit]) then
         DataDados.DataSet.FieldByName('IDCLIENTE').AsInteger := FrmClientes.sCodCli;
      DbIDCliente.SetFocus;   
    end;
  end;

end;

procedure TFrmLancPedidos.FormCreate(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmProdutos,FrmProdutos);

end;

procedure TFrmLancPedidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmProdutos.Destroy;

end;

end.
