unit uFrmCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, StdCtrls, DBCtrls, ExtCtrls, Mask, Buttons,
  uFrameBotaoVertical, ComCtrls, ActnList, DB, Grids, DBGrids, Menus;

type
  TFrmCadProdutos = class(TFrmCadPadrao)
    PageControl1: TPageControl;
    ActProdComposto: TAction;
    ActGrupo: TAction;
    ActClassifica: TAction;
    ActFornecedor: TAction;
    ActGerarDadosEstoque: TAction;
    Panel1: TPanel;
    Frame: TFrameBotaoVertical;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label21: TLabel;
    DbID: TDBEdit;
    DbDescricao: TDBEdit;
    DbReferencia: TDBEdit;
    DbEan13: TDBEdit;
    DbDum14: TDBEdit;
    ComboUnidade: TDBComboBox;
    DbQuantCx: TDBEdit;
    DbChAtivo: TDBCheckBox;
    GrpDados: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    DbIcms: TDBEdit;
    DbIpi: TDBEdit;
    DbEstoque: TDBEdit;
    DbDesconto: TDBEdit;
    DbComissao: TDBEdit;
    DbPrecoCompra: TDBEdit;
    DbPrecoVenda: TDBEdit;
    DbMargem: TDBEdit;
    DbReducaoBase: TDBEdit;
    DbBaseST: TDBEdit;
    DbChEstoque: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBEdit1: TDBEdit;
    Bevel2: TBevel;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DbIDKeyPress(Sender: TObject; var Key: Char);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure PreencheUnidades;
  public
    { Public declarations }
  end;

var
  FrmCadProdutos: TFrmCadProdutos;

implementation

Uses uLibrary, uDmNFe, uFrmProdutos, uFrmClientes;

{$R *.dfm}

procedure TFrmCadProdutos.ActIncluirExecute(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
  inherited;
  DbDescricao.SetFocus;

end;

procedure TFrmCadProdutos.ActPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmProdutos,FrmProdutos);
  try
    FrmProdutos.sIDProd := 0;
    FrmProdutos.ShowModal;
    if FrmProdutos.sIDProd > 0 then
    begin
      DmNFe.Dados_Produto(FrmProdutos.sIDProd);
      DbDescricao.SetFocus;
    end;
  finally
    FrmProdutos.Destroy;
  end;

end;

procedure TFrmCadProdutos.PreencheUnidades;
var aArquivo : TextFile;
    aNomeArq, Linha : string;
begin
  aNomeArq := ExtractFilePath(Application.ExeName)+'Unid.txt';
  if FileExists(aNomeArq) then
  begin
    AssignFile(aArquivo,aNomeArq);
    Reset(aArquivo);
    While not Eof(aArquivo) do
    begin
      ReadLn(aArquivo,Linha);
      ComboUnidade.Items.Add(Linha);
    end;
    CloseFile(aArquivo);
  end
  else
  begin
    AssignFile(aArquivo,aNomeArq);
    Rewrite(aArquivo);
    Writeln(aArquivo,'UN');
    Writeln(aArquivo,'CX');
    Writeln(aArquivo,'DZ');
    Writeln(aArquivo,'PR');
    Writeln(aArquivo,'FD');
    Writeln(aArquivo,'PC');
    Writeln(aArquivo,'LT');
    Writeln(aArquivo,'VD');
    Writeln(aArquivo,'M2');
    Writeln(aArquivo,'M3');
    Writeln(aArquivo,'CM');
    Writeln(aArquivo,'MM');
    Writeln(aArquivo,'PA');
    Writeln(aArquivo,'MT');
    Writeln(aArquivo,'GG');
    CloseFile(aArquivo);
    PreencheUnidades
  end;

end;

procedure TFrmCadProdutos.FormShow(Sender: TObject);
begin
  inherited;
  dataDados.DataSet          := DmNFe.CdsProdutos;
  PreencheUnidades;
  PageControl1.TabIndex := 0;
  DmNFe.Dados_Produto(0);
  DbDescricao.SetFocus;

end;

procedure TFrmCadProdutos.DbIDKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  TabEnter(Self,Key);

end;

procedure TFrmCadProdutos.ActionList1Update(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  AbilitaFrame(frame,dataDados.DataSet);

end;

procedure TFrmCadProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dataDados.DataSet.Close;
  
end;

procedure TFrmCadProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  AlterVirgulaPonto(Self,Key);

end;

end.
