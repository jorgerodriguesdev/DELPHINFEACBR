inherited FrmLancItensPedido: TFrmLancItensPedido
  Left = 363
  Top = 134
  Caption = 'Lan'#231'amento de Itens (Pedido)'
  ClientHeight = 261
  ClientWidth = 422
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 422
    Height = 196
    Align = alClient
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 62
      Height = 13
      Caption = 'C'#243'd. Produto'
      FocusControl = DbIDProduto
    end
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DbDescricao
    end
    object Label5: TLabel
      Left = 8
      Top = 96
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DbQuantidade
    end
    object Label6: TLabel
      Left = 120
      Top = 96
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DbValor
    end
    object Label7: TLabel
      Left = 8
      Top = 136
      Width = 46
      Height = 13
      Caption = 'Desconto'
      FocusControl = DbDesconto
    end
    object Label8: TLabel
      Left = 120
      Top = 136
      Width = 49
      Height = 13
      Caption = 'Acrescimo'
      FocusControl = DbAcrescimo
    end
    object Label9: TLabel
      Left = 224
      Top = 136
      Width = 24
      Height = 13
      Caption = 'Total'
      FocusControl = DbTotal
    end
    object DbIDProduto: TDBEdit
      Left = 8
      Top = 32
      Width = 73
      Height = 21
      DataField = 'IDPRODUTO'
      DataSource = DataItens
      TabOrder = 0
      OnExit = DbIDProdutoExit
      OnKeyPress = DbIDProdutoKeyPress
    end
    object DbDescricao: TDBEdit
      Left = 8
      Top = 72
      Width = 361
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = DataItens
      Enabled = False
      TabOrder = 1
      OnKeyPress = DbIDProdutoKeyPress
    end
    object DbQuantidade: TDBEdit
      Left = 8
      Top = 112
      Width = 97
      Height = 21
      DataField = 'QUANTIDADE'
      DataSource = DataItens
      TabOrder = 2
      OnExit = DbQuantidadeExit
      OnKeyPress = DbIDProdutoKeyPress
    end
    object DbValor: TDBEdit
      Left = 120
      Top = 112
      Width = 97
      Height = 21
      DataField = 'VALOR'
      DataSource = DataItens
      Enabled = False
      TabOrder = 3
      OnKeyPress = DbIDProdutoKeyPress
    end
    object DbDesconto: TDBEdit
      Left = 8
      Top = 152
      Width = 97
      Height = 21
      DataField = 'DESCONTO'
      DataSource = DataItens
      TabOrder = 4
      OnExit = DbQuantidadeExit
      OnKeyPress = DbIDProdutoKeyPress
    end
    object DbAcrescimo: TDBEdit
      Left = 120
      Top = 152
      Width = 97
      Height = 21
      DataField = 'ACRESCIMO'
      DataSource = DataItens
      TabOrder = 5
      OnExit = DbQuantidadeExit
      OnKeyPress = DbIDProdutoKeyPress
    end
    object DbTotal: TDBEdit
      Left = 224
      Top = 152
      Width = 97
      Height = 21
      DataField = 'VALOR_TOTAL'
      DataSource = DataItens
      Enabled = False
      TabOrder = 6
      OnKeyPress = DbIDProdutoKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 196
    Width = 422
    Height = 65
    Align = alBottom
    TabOrder = 1
    inline Frame: TFrameConfirmaCancela
      Left = 104
      Top = 2
      Width = 203
      Height = 62
      TabOrder = 0
      inherited BtnConfirmar: TBitBtn
        Action = ActConfirmar
        Caption = 'F2 - &Confirmar'
      end
      inherited BtnCancelar: TBitBtn
        Action = ActCancelar
        Caption = 'F3 - Cancelar'
      end
    end
  end
  object DataItens: TDataSource
    DataSet = DmNFe.CdsPedidoItens
    Left = 240
    Top = 16
  end
  object ActionList1: TActionList
    Left = 296
    Top = 16
    object ActConfirmar: TAction
      Caption = 'F2 - &Confirmar'
      ShortCut = 113
      OnExecute = ActConfirmarExecute
    end
    object ActCancelar: TAction
      Caption = 'F3 - Cancelar'
      ShortCut = 114
      OnExecute = ActCancelarExecute
    end
    object ActCalculaValorTotal: TAction
      OnExecute = ActCalculaValorTotalExecute
    end
  end
end
