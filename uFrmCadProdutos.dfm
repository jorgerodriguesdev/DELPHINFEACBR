inherited FrmCadProdutos: TFrmCadProdutos
  Left = 255
  Top = 133
  Caption = 'Cadastro de Produtos'
  ClientHeight = 314
  ClientWidth = 638
  OldCreateOrder = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 501
    Height = 314
    Align = alClient
    TabOrder = 0
  end
  object Panel1: TPanel [1]
    Left = 501
    Top = 0
    Width = 137
    Height = 314
    Align = alRight
    TabOrder = 1
    inline Frame: TFrameBotaoVertical
      Left = 0
      Top = 0
      Width = 136
      Height = 182
      TabOrder = 0
      inherited BtnIncluir: TBitBtn
        Action = ActIncluir
        Caption = 'F2 - &Incluir'
      end
      inherited BtnExcluir: TBitBtn
        Action = ActExcluir
        Caption = 'F3 - &Excluir'
      end
      inherited BtnConfirmar: TBitBtn
        Action = ActConfirmar
        Caption = 'F4 - &Confirmar'
      end
      inherited BtnCancelar: TBitBtn
        Action = ActCancelar
        Caption = 'F5 - C&ancelar'
      end
      inherited BtnPesquisar: TBitBtn
        Action = ActPesquisar
        Caption = 'F6 - &Pesquisar'
      end
      inherited BtnRelatorio: TBitBtn
        Action = ActRelatorio
        Caption = 'F7 - &Relatorio'
      end
      inherited BtnEncerrar: TBitBtn
        Action = ActEncerrar
        Caption = 'F10 - &Encerrar'
      end
    end
  end
  object GroupBox1: TGroupBox [2]
    Left = 0
    Top = 0
    Width = 501
    Height = 314
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 11
      Height = 13
      Caption = 'ID'
      FocusControl = DbID
    end
    object Label2: TLabel
      Left = 8
      Top = 42
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DbDescricao
    end
    object Label3: TLabel
      Left = 8
      Top = 66
      Width = 52
      Height = 13
      Caption = 'Referencia'
      FocusControl = DbReferencia
    end
    object Label4: TLabel
      Left = 8
      Top = 113
      Width = 59
      Height = 13
      Caption = 'C'#243'd. EAN13'
      FocusControl = DbEan13
    end
    object Label5: TLabel
      Left = 195
      Top = 113
      Width = 36
      Height = 13
      Caption = 'DUN14'
      FocusControl = DbDum14
    end
    object Label10: TLabel
      Left = 8
      Top = 90
      Width = 40
      Height = 13
      Caption = 'Unidade'
    end
    object Label11: TLabel
      Left = 150
      Top = 90
      Width = 55
      Height = 13
      Caption = 'Embalagem'
      FocusControl = DbQuantCx
    end
    object Label21: TLabel
      Left = 309
      Top = 89
      Width = 60
      Height = 13
      Caption = 'C'#243'digo NCM'
      FocusControl = DBEdit1
    end
    object DbID: TDBEdit
      Left = 72
      Top = 16
      Width = 73
      Height = 21
      DataField = 'ID'
      DataSource = DataDados
      TabOrder = 0
      OnKeyPress = DbIDKeyPress
    end
    object DbDescricao: TDBEdit
      Left = 72
      Top = 40
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = DataDados
      TabOrder = 1
      OnKeyPress = DbIDKeyPress
    end
    object DbReferencia: TDBEdit
      Left = 72
      Top = 64
      Width = 225
      Height = 21
      DataField = 'REFERENCIA'
      DataSource = DataDados
      TabOrder = 2
      OnKeyPress = DbIDKeyPress
    end
    object DbEan13: TDBEdit
      Left = 72
      Top = 110
      Width = 116
      Height = 21
      DataField = 'EAN13'
      DataSource = DataDados
      TabOrder = 5
      OnKeyPress = DbIDKeyPress
    end
    object DbDum14: TDBEdit
      Left = 233
      Top = 110
      Width = 124
      Height = 21
      DataField = 'DUN14'
      DataSource = DataDados
      TabOrder = 6
      OnKeyPress = DbIDKeyPress
    end
    object ComboUnidade: TDBComboBox
      Left = 73
      Top = 87
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UNIDADE'
      DataSource = DataDados
      ItemHeight = 13
      TabOrder = 3
      OnKeyPress = DbIDKeyPress
    end
    object DbQuantCx: TDBEdit
      Left = 208
      Top = 87
      Width = 57
      Height = 21
      DataField = 'QUANT_CAIXA'
      DataSource = DataDados
      TabOrder = 4
      OnKeyPress = DbIDKeyPress
    end
    object DbChAtivo: TDBCheckBox
      Left = 16
      Top = 276
      Width = 45
      Height = 17
      Caption = 'Ativo'
      DataField = 'ATIVO'
      DataSource = DataDados
      TabOrder = 8
      ValueChecked = 'T'
      ValueUnchecked = 'F'
      OnKeyPress = DbIDKeyPress
    end
    object GrpDados: TGroupBox
      Left = 10
      Top = 138
      Width = 471
      Height = 133
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 9
      object Label13: TLabel
        Left = 161
        Top = 40
        Width = 67
        Height = 13
        Caption = 'Aliquota ICMS'
        FocusControl = DbIcms
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 161
        Top = 17
        Width = 54
        Height = 13
        Caption = 'Aliquota IPI'
        FocusControl = DbIpi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 6
        Top = 62
        Width = 39
        Height = 13
        Caption = 'Estoque'
        FocusControl = DbEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 6
        Top = 17
        Width = 63
        Height = 13
        Caption = 'Desc.m'#225'ximo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 6
        Top = 38
        Width = 45
        Height = 13
        Caption = 'Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 320
        Top = 17
        Width = 59
        Height = 13
        Caption = '(R$) Compra'
        FocusControl = DbPrecoCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 320
        Top = 64
        Width = 54
        Height = 13
        Caption = '(R$) Venda'
        FocusControl = DbPrecoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 320
        Top = 41
        Width = 68
        Height = 13
        Caption = 'Margem Lucro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 161
        Top = 62
        Width = 71
        Height = 13
        Caption = 'Redu'#231#227'o Base'
        FocusControl = DbReducaoBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 161
        Top = 85
        Width = 68
        Height = 13
        Caption = 'Base Calc ST.'
        FocusControl = DbBaseST
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 150
        Top = 6
        Width = 7
        Height = 126
        Shape = bsLeftLine
      end
      object Bevel2: TBevel
        Left = 312
        Top = 6
        Width = 7
        Height = 126
        Shape = bsLeftLine
      end
      object DbIcms: TDBEdit
        Left = 234
        Top = 38
        Width = 70
        Height = 21
        DataField = 'ALIQUOTA_ICMS'
        DataSource = DataDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = DbIDKeyPress
      end
      object DbIpi: TDBEdit
        Left = 234
        Top = 14
        Width = 70
        Height = 21
        DataField = 'ALIQUOTA_IPI'
        DataSource = DataDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = DbIDKeyPress
      end
      object DbEstoque: TDBEdit
        Left = 71
        Top = 60
        Width = 70
        Height = 21
        DataField = 'ESTOQUE'
        DataSource = DataDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = DbIDKeyPress
      end
      object DbDesconto: TDBEdit
        Left = 71
        Top = 14
        Width = 70
        Height = 21
        DataField = 'PERC_DESC'
        DataSource = DataDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = DbIDKeyPress
      end
      object DbComissao: TDBEdit
        Left = 71
        Top = 37
        Width = 70
        Height = 21
        DataField = 'PERC_COM'
        DataSource = DataDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = DbIDKeyPress
      end
      object DbPrecoCompra: TDBEdit
        Left = 389
        Top = 14
        Width = 70
        Height = 21
        DataField = 'PRECO_COMPRA'
        DataSource = DataDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyPress = DbIDKeyPress
      end
      object DbPrecoVenda: TDBEdit
        Left = 389
        Top = 61
        Width = 70
        Height = 21
        DataField = 'PRECO_VENDA'
        DataSource = DataDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnKeyPress = DbIDKeyPress
      end
      object DbMargem: TDBEdit
        Left = 389
        Top = 37
        Width = 70
        Height = 21
        DataField = 'MARGEM_LUCRO'
        DataSource = DataDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnKeyPress = DbIDKeyPress
      end
      object DbReducaoBase: TDBEdit
        Left = 234
        Top = 60
        Width = 70
        Height = 21
        DataField = 'REDUCAO_BASE'
        DataSource = DataDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = DbIDKeyPress
      end
      object DbBaseST: TDBEdit
        Left = 234
        Top = 83
        Width = 70
        Height = 21
        DataField = 'BASE_ST'
        DataSource = DataDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = DbIDKeyPress
      end
    end
    object DbChEstoque: TDBCheckBox
      Left = 97
      Top = 276
      Width = 144
      Height = 17
      Caption = 'Controlar Estoque'
      DataField = 'CONTROLAR_ESTOQUE'
      DataSource = DataDados
      TabOrder = 10
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox1: TDBCheckBox
      Left = 216
      Top = 276
      Width = 75
      Height = 17
      Caption = 'Fracionada'
      DataField = 'FRACIONADO'
      DataSource = DataDados
      TabOrder = 11
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEdit1: TDBEdit
      Left = 373
      Top = 86
      Width = 94
      Height = 21
      DataField = 'CODIGO_NCM'
      DataSource = DataDados
      TabOrder = 7
      OnKeyPress = DbIDKeyPress
    end
  end
  inherited DataDados: TDataSource
    Left = 584
    Top = 192
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 512
    Top = 200
    inherited ActPesquisar: TAction
      OnExecute = ActPesquisarExecute
    end
    object ActProdComposto: TAction
      Caption = 'Composto'
    end
    object ActGrupo: TAction
      Hint = 'Cadastrar Grupo'
    end
    object ActClassifica: TAction
      Hint = 'Cadastrar Classifica'#231#227'o'
    end
    object ActFornecedor: TAction
      Caption = 'F8 - Fornecedores'
      ShortCut = 119
    end
    object ActGerarDadosEstoque: TAction
      Caption = 'Gerar Dados do Estoque'
      ShortCut = 49227
    end
  end
end
