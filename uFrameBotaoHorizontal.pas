unit uFrameBotaoHorizontal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ActnList, StdCtrls, Buttons, Db;

type
  TFrameBotaoHorizontal = class(TFrame)
    BtnIncluir: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnPesquisar: TBitBtn;
    BtnRelatorio: TBitBtn;
    BtnEncerrar: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TFrameBotaoHorizontal }

end.
