unit uFrameConfirmaCancela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons;

type
  TFrameConfirmaCancela = class(TFrame)
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
