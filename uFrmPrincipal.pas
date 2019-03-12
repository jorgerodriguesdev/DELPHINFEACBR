unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls;

type
  TFrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    N1: TMenuItem;
    LanamentodePedidos1: TMenuItem;
    N2: TMenuItem;
    NFe1: TMenuItem;
    StatusdoServio1: TMenuItem;
    CriareEnviar1: TMenuItem;
    GerarNFe1: TMenuItem;
    ValidarXML1: TMenuItem;
    N3: TMenuItem;
    CancelamentoNFe1: TMenuItem;
    InutilizarNmerao1: TMenuItem;
    N4: TMenuItem;
    ImprimirDanfe1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Consultas1: TMenuItem;
    ConsultarCarregamentoXML1: TMenuItem;
    ConsultarReciboLote1: TMenuItem;
    ConsultarDPEC1: TMenuItem;
    EnviarDPEC1: TMenuItem;
    EnviarEmailNFe1: TMenuItem;
    Confuguraes1: TMenuItem;
    Sair1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure LanamentodePedidos1Click(Sender: TObject);
    procedure Confuguraes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses uLibrary, uFrmCadastroCliente, uFrmCadProdutos, uFrmLancPedidos,
  uFrmConfig;

{$R *.dfm}

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
  
end;

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin
  AbreForm(TFrmCadastroCliente,FrmCadastroCliente);
  
end;

procedure TFrmPrincipal.Produtos1Click(Sender: TObject);
begin
  AbreForm(TFrmCadProdutos,FrmCadProdutos);
  
end;

procedure TFrmPrincipal.LanamentodePedidos1Click(Sender: TObject);
begin
  AbreForm(TFrmLancPedidos,FrmLancPedidos);
  
end;

procedure TFrmPrincipal.Confuguraes1Click(Sender: TObject);
begin
  AbreForm(TFrmConfig,FrmConfig);
  
end;

end.
