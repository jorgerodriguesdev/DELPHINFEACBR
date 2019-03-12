unit uFrmCadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, DB, Menus, DBCtrls, StdCtrls, ExtCtrls,
  Mask, ComCtrls, uFrameBotaoHorizontal, Buttons;

type
  TFrmCadastroCliente = class(TFrmCadPadrao)
    Pagina: TPageControl;
    TabSheet1: TTabSheet;
    PopupMenu1: TPopupMenu;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Frame: TFrameBotaoHorizontal;
    ActContatosADC: TAction;
    ActConsultarCep: TAction;
    ConsultarEndereonaInternet1: TMenuItem;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label24: TLabel;
    ChAtivo: TDBCheckBox;
    RadioTipo: TDBRadioGroup;
    DbCadastro: TDBEdit;
    DbInsc: TDBEdit;
    DbCNPJ: TDBEdit;
    DbTelefone: TDBEdit;
    DbCidade: TDBEdit;
    DbBairro: TDBEdit;
    DnEnd: TDBEdit;
    DbCep: TDBEdit;
    DbContato: TDBEdit;
    DbID: TDBEdit;
    Label10: TLabel;
    Label30: TLabel;
    Label28: TLabel;
    DbComplemento: TDBEdit;
    Label5: TLabel;
    DbNum: TDBEdit;
    Label11: TLabel;
    DbCelular: TDBEdit;
    TbTelefax: TDBEdit;
    GroupBox2: TGroupBox;
    Label18: TLabel;
    DbCepEnt: TDBEdit;
    Label14: TLabel;
    DbEndEnt: TDBEdit;
    Label15: TLabel;
    DbNumEndEnt: TDBEdit;
    Label16: TLabel;
    DbBairroEndEnt: TDBEdit;
    Label17: TLabel;
    DbCidEndEnt: TDBEdit;
    Label31: TLabel;
    DbUFEndEnt: TDBEdit;
    DbComplEnt: TDBEdit;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label29: TLabel;
    DbObservacao: TDBMemo;
    DbSite: TDBEdit;
    DbEmail: TDBEdit;
    DbContatoGeral: TDBEdit;
    DbLimiteCred: TDBEdit;
    DbDataNasc: TDBEdit;
    DbNomeMae: TDBEdit;
    DbNomePai: TDBEdit;
    DbTelTrab: TDBEdit;
    DbEndTrab: TDBEdit;
    DbTrabalho: TDBEdit;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ActPesquisarExecute(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
    procedure DbIDKeyPress(Sender: TObject; var Key: Char);
    procedure DbCNPJExit(Sender: TObject);
    procedure ActConfirmarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sIDCliente : Integer;
  end;

var
  FrmCadastroCliente: TFrmCadastroCliente;

implementation

Uses uDmNFe, uLibrary, uFrmClientes;

{$R *.dfm}

procedure TFrmCadastroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataDados.DataSet.Close;

end;

procedure TFrmCadastroCliente.FormShow(Sender: TObject);
begin
  DataDados.DataSet := DmNFe.CdsContatos;
  inherited;
  DmNFe.Dados_Contato(0);
  Pagina.TabIndex := 0;
  sIDCliente := 0;
  DbContato.SetFocus;

end;




procedure TFrmCadastroCliente.ActPesquisarExecute(Sender: TObject);
begin
  inherited;
  //
  Application.CreateForm(TFrmClientes,FrmClientes);
  try
    FrmClientes.sCodCli := 0;
    FrmClientes.ShowModal;
    if FrmClientes.sCodCli > 0 then
       DmNFe.Dados_Contato(FrmClientes.sCodCli);
    Pagina.TabIndex := 0;
    DbContato.SetFocus;
  finally
    FrmClientes.Destroy;
  end;  
end;

procedure TFrmCadastroCliente.ActionList1Update(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  AbilitaFrame(Frame,DataDados.DataSet);

end;

procedure TFrmCadastroCliente.DbIDKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self,key);

end;

procedure TFrmCadastroCliente.DbCNPJExit(Sender: TObject);
var aEntra:Boolean;
begin
  inherited;
  if DataDados.DataSet.State in [dsInsert,dsEdit] then
  begin
    if (DataDados.DataSet.FieldByName('CNPJ_CPF').AsString <> '') then
    begin
      aEntra := true;
      if Length(FiltraNumero(DataDados.DataSet.FieldByName('CNPJ_CPF').AsString)) = 11 then
      begin
        if not VerificaCpf(FiltraNumero(DataDados.DataSet.FieldByName('CNPJ_CPF').AsString)) then
           aEntra := false;
      end
      else if Length(FiltraNumero(DataDados.DataSet.FieldByName('CNPJ_CPF').AsString)) = 14 then
      begin
        if not VerificaCNPJ(FiltraNumero(DataDados.DataSet.FieldByName('CNPJ_CPF').AsString)) then
           aEntra := false;
      end
      else aEntra := false;
    end;
    if not aEntra then
    begin
      MessageDlg('O Documento informado é inválido. Verifique!!!', mtWarning, [mbOK], 0);
      DbCNPJ.SetFocus;
    end;

  end;

end;

procedure TFrmCadastroCliente.ActConfirmarExecute(Sender: TObject);
begin
  inherited;
  sIDCliente := DataDados.DataSet.FieldByName('ID').AsInteger;
  
end;

end.
