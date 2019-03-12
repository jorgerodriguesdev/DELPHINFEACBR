program NFe_AcBr;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uDmConexao in 'Dm\uDmConexao.pas' {DmConexao: TDataModule},
  uDmNfe in 'Dm\uDmNfe.pas' {DmNFe: TDataModule},
  uFrameBotaoHorizontal in 'uFrameBotaoHorizontal.pas' {FrameBotaoHorizontal: TFrame},
  uFrameBotaoVertical in 'uFrameBotaoVertical.pas' {FrameBotaoVertical: TFrame},
  uFrameConfirmaCancela in 'uFrameConfirmaCancela.pas' {FrameConfirmaCancela: TFrame},
  uFrmCadPadrao in 'uFrmCadPadrao.pas' {FrmCadPadrao},
  uFrmPadrao in 'uFrmPadrao.pas' {FrmPadrao},
  uFrmCadastroCliente in 'uFrmCadastroCliente.pas' {FrmCadastroCliente},
  uFrmCadProdutos in 'uFrmCadProdutos.pas' {FrmCadProdutos},
  uFrmClientes in 'uFrmClientes.pas' {FrmClientes},
  uFrmLancItensPedido in 'uFrmLancItensPedido.pas' {FrmLancItensPedido},
  uFrmLancPedidos in 'uFrmLancPedidos.pas' {FrmLancPedidos},
  uFrmPedidosConsulta in 'uFrmPedidosConsulta.pas' {FrmPedidosConsulta},
  uFrmProdutos in 'uFrmProdutos.pas' {FrmProdutos},
  uLibrary in 'uLibrary.pas',
  uFrmConfig in 'uFrmConfig.pas' {FrmConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmNFe, DmNFe);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
