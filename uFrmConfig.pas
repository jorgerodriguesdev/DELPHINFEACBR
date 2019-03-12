unit uFrmConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ActnList, StdCtrls, Buttons, ExtCtrls, ComCtrls, IniFiles;

type
  TFrmConfig = class(TFrmPadrao)
    PageControl1: TPageControl;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    ActConfirmar: TAction;
    ActFechar: TAction;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    TabSheet4: TTabSheet;
    GroupBox4: TGroupBox;
    RadioFormas: TRadioGroup;
    GroupBox5: TGroupBox;
    EdtLogoMarca: TEdit;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    ChArquivos: TCheckBox;
    GroupBox6: TGroupBox;
    EdtArquivos: TEdit;
    SpeedButton2: TSpeedButton;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    EdtCertificado: TEdit;
    EdtSenha: TEdit;
    EdtSerial: TEdit;
    SpeedButton3: TSpeedButton;
    EdtRazao: TEdit;
    EdtFantasia: TEdit;
    EdtIE: TEdit;
    EdtCNPJ: TEdit;
    EdtEndereco: TEdit;
    EdtBairro: TEdit;
    EdtNum: TEdit;
    EdtCEP: TEdit;
    EdtCidade: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EdtUF: TEdit;
    EdtTelefone: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    UF: TLabel;
    RadioAmbiente: TRadioGroup;
    GroupBox10: TGroupBox;
    EdtHost: TEdit;
    EdtPorta: TEdit;
    EdtUsuario: TEdit;
    EdtSenhaWS: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdtCodMun: TEdit;
    EdtUFWS: TEdit;
    procedure ActConfirmarExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure LeArqIni;
  public
    { Public declarations }
  end;

var
  FrmConfig: TFrmConfig;

implementation

{$R *.dfm}

procedure TFrmConfig.ActConfirmarExecute(Sender: TObject);
var ArqINI : TIniFile;
begin
  inherited;
  ArqINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  // GERAL
  ArqINI.WriteInteger('GERAL','FORMA_EMISSAO',RadioFormas.ItemIndex);
  ArqINI.WriteString('GERAL','LOGOMARCA',EdtLogoMarca.Text);
  ArqINI.WriteBool('GERAL','SALVA_ARQUIVO',ChArquivos.Checked);
  ArqINI.WriteString('GERAL','PATH_ARQUIVO',EdtArquivos.Text);
  // CERTIFICADO
  ArqINI.WriteString('CERTIFICADO','PATH_CERTIFICADO',EdtCertificado.Text);
  ArqINI.WriteString('CERTIFICADO','SENHA_CERT',EdtSenha.Text);
  ArqINI.WriteString('CERTIFICADO','NUM_SERIE',EdtSerial.Text);
  // emitente
  ArqINI.WriteString('EMITENTE','RAZAO',EdtRazao.Text);
  ArqINI.WriteString('EMITENTE','FANTASIA',EdtFantasia.Text);
  ArqINI.WriteString('EMITENTE','CNPJ',EdtCNPJ.Text);
  ArqINI.WriteString('EMITENTE','I_ESTADUAL',EdtIE.Text);
  ArqINI.WriteString('EMITENTE','ENDERECO',EdtEndereco.Text);
  ArqINI.WriteString('EMITENTE','NUMERO',EdtNum.Text);
  ArqINI.WriteString('EMITENTE','BAIRRO',EdtBairro.Text);
  ArqINI.WriteString('EMITENTE','CIDADE',EdtCidade.Text);
  ArqINI.WriteString('EMITENTE','CEP',EdtCEP.Text);
  ArqINI.WriteString('EMITENTE','UF',EdtUF.Text);
  ArqINI.WriteString('EMITENTE','MUNICIPIO',EdtCodMun.Text);
  // WebService
  ArqINI.WriteString('WS','UFWS',EdtUFWS.Text);
  ArqINI.WriteInteger('WS','AMBIENTE',RadioAmbiente.ItemIndex);
  ArqINI.WriteString('WS','HOST',EdtHost.Text);
  ArqINI.WriteString('WS','PORTA',EdtPorta.Text);
  ArqINI.WriteString('WS','USUARIO',EdtUsuario.Text);
  ArqINI.WriteString('WS','SENHA',EdtSenhaWS.Text);
  //
  ArqINI.Free;

end;

procedure TFrmConfig.ActFecharExecute(Sender: TObject);
begin
  inherited;
  Close;

end;

procedure TFrmConfig.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Execute;
  EdtLogoMarca.Text := OpenDialog1.FileName;

end;

procedure TFrmConfig.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Execute;
  EdtArquivos.Text := OpenDialog1.FileName;

end;

procedure TFrmConfig.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Execute;
  EdtCertificado.Text := OpenDialog1.FileName;

end;

procedure TFrmConfig.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex := 0;
  LeArqIni;

end;

procedure TFrmConfig.LeArqIni;
var ArqINI : TIniFile;
begin
  ArqINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  // GERAL
  RadioFormas.ItemIndex := ArqINI.ReadInteger('GERAL','FORMA_EMISSAO',0);
  EdtLogoMarca.Text     := ArqINI.ReadString('GERAL','LOGOMARCA','C:\logo.jpg');
  ChArquivos.Checked    := ArqINI.ReadBool('GERAL','SALVA_ARQUIVO',true);
  EdtArquivos.Text      := ArqINI.ReadString('GERAL','PATH_ARQUIVO','C:\');
  // CERTIFICADO
  EdtCertificado.Text   := ArqINI.ReadString('CERTIFICADO','PATH_CERTIFICADO','');
  EdtSenha.Text         := ArqINI.ReadString('CERTIFICADO','SENHA_CERT','');
  EdtSerial.Text        := ArqINI.ReadString('CERTIFICADO','NUM_SERIE','');
  // emitente
  EdtRazao.Text         := ArqINI.ReadString('EMITENTE','RAZAO','');
  EdtFantasia.Text      := ArqINI.ReadString('EMITENTE','FANTASIA','');
  EdtCNPJ.Text          := ArqINI.ReadString('EMITENTE','CNPJ','');
  EdtIE.Text            := ArqINI.ReadString('EMITENTE','I_ESTADUAL','');
  EdtEndereco.Text      := ArqINI.ReadString('EMITENTE','ENDERECO','');
  EdtNum.Text           := ArqINI.ReadString('EMITENTE','NUMERO','');
  EdtBairro.Text        := ArqINI.ReadString('EMITENTE','BAIRRO','');
  EdtCidade.Text        := ArqINI.ReadString('EMITENTE','CIDADE','');
  EdtCEP.Text           := ArqINI.ReadString('EMITENTE','CEP','');
  EdtUF.Text            := ArqINI.ReadString('EMITENTE','UF','');
  EdtCodMun.Text        := ArqINI.ReadString('EMITENTE','MUNICIPIO','');
  // WebService
  EdtUFWS.Text          := ArqINI.ReadString('WS','UFWS','');
  RadioAmbiente.ItemIndex:= ArqINI.ReadInteger('WS','AMBIENTE',0);
  EdtHost.Text          := ArqINI.ReadString('WS','HOST','');
  EdtPorta.Text         := ArqINI.ReadString('WS','PORTA','');
  EdtUsuario.Text       := ArqINI.ReadString('WS','USUARIO','');
  EdtSenhaWS.Text       := ArqINI.ReadString('WS','SENHA','');
  //
  ArqINI.Free;

end;

end.
