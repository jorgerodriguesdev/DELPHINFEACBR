unit uFrmCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ActnList;

type
  TFrmCadPadrao = class(TForm)
    DataDados: TDataSource;
    ActionList1: TActionList;
    ActIncluir: TAction;
    ActExcluir: TAction;
    ActConfirmar: TAction;
    ActCancelar: TAction;
    ActPesquisar: TAction;
    ActRelatorio: TAction;
    ActEncerrar: TAction;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActConfirmarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActEncerrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPadrao: TFrmCadPadrao;

implementation

Uses uLibrary, uDmNFe;

{$R *.dfm}

procedure TFrmCadPadrao.ActIncluirExecute(Sender: TObject);
begin
  if not(DataDados.DataSet.State in [dsInsert,dsEdit]) then
     DataDados.DataSet.Append;

end;

procedure TFrmCadPadrao.ActExcluirExecute(Sender: TObject);
begin
  if MessageDlg('Confirma a exclusão deste registro?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if not(DataDados.DataSet.State in [dsInsert,dsEdit]) then
       DataDados.DataSet.Delete;
    Grava_Dados(DataDados.DataSet);
  end;
  
end;

procedure TFrmCadPadrao.ActConfirmarExecute(Sender: TObject);
begin
  if (DataDados.DataSet.State in [dsInsert,dsEdit]) then
     DataDados.DataSet.Post;
  Grava_Dados(DataDados.DataSet);
end;

procedure TFrmCadPadrao.ActCancelarExecute(Sender: TObject);
begin
  if MessageDlg('Confirma o cancelamento dos dados informados?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if (DataDados.DataSet.State in [dsInsert,dsEdit]) then
       DataDados.DataSet.Cancel;
    Grava_Dados(DataDados.DataSet);
  end;

end;

procedure TFrmCadPadrao.ActEncerrarExecute(Sender: TObject);
begin
  if (DataDados.DataSet.State in [dsInsert,dsEdit]) then
  begin
    MessageDlg('É necessário confirmar ou cancelar os dados da OS!!!', mtWarning, [mbOK], 0);
    Abort;
  end
  else
  begin
    Close;
  end;
  
end;

end.
