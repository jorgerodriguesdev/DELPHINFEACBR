inherited FrmCadastroCliente: TFrmCadastroCliente
  Left = 257
  Top = 108
  Caption = 'Cadastro de Clientes'
  ClientHeight = 484
  ClientWidth = 638
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pagina: TPageControl [0]
    Left = 0
    Top = 0
    Width = 638
    Height = 419
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados Pessoais'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 630
        Height = 391
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DbID
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = DbContato
        end
        object Label8: TLabel
          Left = 8
          Top = 72
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DbCep
        end
        object Label4: TLabel
          Left = 8
          Top = 96
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DnEnd
        end
        object Label6: TLabel
          Left = 8
          Top = 120
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DbBairro
        end
        object Label7: TLabel
          Left = 8
          Top = 144
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DbCidade
        end
        object Label9: TLabel
          Left = 8
          Top = 168
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DbTelefone
        end
        object Label12: TLabel
          Left = 8
          Top = 192
          Width = 52
          Height = 13
          Caption = 'CNPJ/CPF'
          FocusControl = DbCNPJ
        end
        object Label13: TLabel
          Left = 8
          Top = 216
          Width = 71
          Height = 13
          Caption = 'I. Estadual/RG'
          FocusControl = DbInsc
        end
        object Label24: TLabel
          Left = 8
          Top = 240
          Width = 68
          Height = 13
          Caption = 'Data Cadastro'
          FocusControl = DbCadastro
        end
        object Label10: TLabel
          Left = 211
          Top = 168
          Width = 35
          Height = 13
          Caption = 'Telefax'
          FocusControl = TbTelefax
        end
        object Label30: TLabel
          Left = 330
          Top = 143
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label28: TLabel
          Left = 280
          Top = 120
          Width = 64
          Height = 13
          Caption = 'Complemento'
        end
        object Label5: TLabel
          Left = 411
          Top = 96
          Width = 37
          Height = 13
          Caption = 'Numero'
          FocusControl = DbNum
        end
        object Label11: TLabel
          Left = 379
          Top = 168
          Width = 32
          Height = 13
          Caption = 'Celular'
          FocusControl = DbCelular
        end
        object ChAtivo: TDBCheckBox
          Left = 83
          Top = 328
          Width = 97
          Height = 17
          Caption = 'Ativo'
          DataField = 'ATIVO'
          DataSource = DataDados
          TabOrder = 14
          ValueChecked = 'T'
          ValueUnchecked = 'F'
          OnKeyPress = DbIDKeyPress
        end
        object RadioTipo: TDBRadioGroup
          Left = 83
          Top = 264
          Width = 185
          Height = 57
          Caption = ' Tipo de Contato '
          DataField = 'TIPO_CONTATO'
          DataSource = DataDados
          Items.Strings = (
            'CLIENTE'
            'FORNECEDOR'
            'AMBOS')
          TabOrder = 13
          Values.Strings = (
            'C'
            'F'
            'A')
        end
        object DbCadastro: TDBEdit
          Left = 83
          Top = 237
          Width = 134
          Height = 21
          DataField = 'DATA_CAD'
          DataSource = DataDados
          TabOrder = 12
          OnKeyPress = DbIDKeyPress
        end
        object DbInsc: TDBEdit
          Left = 83
          Top = 213
          Width = 264
          Height = 21
          DataField = 'INSC_RG'
          DataSource = DataDados
          TabOrder = 11
          OnKeyPress = DbIDKeyPress
        end
        object DbCNPJ: TDBEdit
          Left = 83
          Top = 189
          Width = 264
          Height = 21
          DataField = 'CNPJ_CPF'
          DataSource = DataDados
          TabOrder = 10
          OnExit = DbCNPJExit
          OnKeyPress = DbIDKeyPress
        end
        object DbTelefone: TDBEdit
          Left = 83
          Top = 165
          Width = 109
          Height = 21
          DataField = 'TELEFONE'
          DataSource = DataDados
          TabOrder = 7
          OnKeyPress = DbIDKeyPress
        end
        object DbCidade: TDBEdit
          Left = 83
          Top = 141
          Width = 177
          Height = 21
          DataField = 'CIDADE_END'
          DataSource = DataDados
          TabOrder = 6
          OnKeyPress = DbIDKeyPress
        end
        object DbBairro: TDBEdit
          Left = 83
          Top = 117
          Width = 177
          Height = 21
          DataField = 'BAIRRO_END'
          DataSource = DataDados
          TabOrder = 5
          OnKeyPress = DbIDKeyPress
        end
        object DnEnd: TDBEdit
          Left = 83
          Top = 93
          Width = 321
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DataDados
          TabOrder = 3
          OnKeyPress = DbIDKeyPress
        end
        object DbCep: TDBEdit
          Left = 83
          Top = 69
          Width = 86
          Height = 21
          DataField = 'CEP_END'
          DataSource = DataDados
          TabOrder = 2
          OnKeyPress = DbIDKeyPress
        end
        object DbContato: TDBEdit
          Left = 83
          Top = 45
          Width = 409
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DataDados
          TabOrder = 1
          OnKeyPress = DbIDKeyPress
        end
        object DbID: TDBEdit
          Left = 83
          Top = 21
          Width = 134
          Height = 21
          DataField = 'ID'
          DataSource = DataDados
          Enabled = False
          TabOrder = 0
          OnKeyPress = DbIDKeyPress
        end
        object DbComplemento: TDBEdit
          Left = 347
          Top = 117
          Width = 150
          Height = 21
          DataField = 'COMPLEMENTO'
          DataSource = DataDados
          TabOrder = 15
          OnKeyPress = DbIDKeyPress
        end
        object DbNum: TDBEdit
          Left = 451
          Top = 93
          Width = 67
          Height = 21
          DataField = 'NUM_END'
          DataSource = DataDados
          TabOrder = 4
          OnKeyPress = DbIDKeyPress
        end
        object DbCelular: TDBEdit
          Left = 419
          Top = 165
          Width = 109
          Height = 21
          DataField = 'CELULAR'
          DataSource = DataDados
          TabOrder = 9
          OnKeyPress = DbIDKeyPress
        end
        object TbTelefax: TDBEdit
          Left = 251
          Top = 165
          Width = 109
          Height = 21
          DataField = 'TELEFAX'
          DataSource = DataDados
          TabOrder = 8
          OnKeyPress = DbIDKeyPress
        end
        object DBEdit1: TDBEdit
          Left = 348
          Top = 139
          Width = 35
          Height = 21
          DataField = 'UF_END'
          DataSource = DataDados
          TabOrder = 16
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Endere'#231'o de Entrega'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 630
        Height = 391
        Align = alClient
        TabOrder = 0
        object Label18: TLabel
          Left = 8
          Top = 24
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DbCepEnt
        end
        object Label14: TLabel
          Left = 8
          Top = 64
          Width = 46
          Height = 13
          Caption = 'Endereco'
          FocusControl = DbEndEnt
        end
        object Label15: TLabel
          Left = 8
          Top = 104
          Width = 37
          Height = 13
          Caption = 'Numero'
          FocusControl = DbNumEndEnt
        end
        object Label16: TLabel
          Left = 8
          Top = 144
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DbBairroEndEnt
        end
        object Label17: TLabel
          Left = 8
          Top = 184
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DbCidEndEnt
        end
        object Label31: TLabel
          Left = 8
          Top = 224
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label3: TLabel
          Left = 160
          Top = 104
          Width = 64
          Height = 13
          Caption = 'Complemento'
        end
        object DbCepEnt: TDBEdit
          Left = 8
          Top = 40
          Width = 97
          Height = 21
          DataField = 'CEP_END_ENTREGA'
          DataSource = DataDados
          TabOrder = 0
          OnKeyPress = DbIDKeyPress
        end
        object DbEndEnt: TDBEdit
          Left = 8
          Top = 80
          Width = 409
          Height = 21
          DataField = 'END_ENTREGA'
          DataSource = DataDados
          TabOrder = 1
          OnKeyPress = DbIDKeyPress
        end
        object DbNumEndEnt: TDBEdit
          Left = 8
          Top = 120
          Width = 134
          Height = 21
          DataField = 'NUM_END_ENTREGA'
          DataSource = DataDados
          TabOrder = 2
          OnKeyPress = DbIDKeyPress
        end
        object DbBairroEndEnt: TDBEdit
          Left = 8
          Top = 160
          Width = 264
          Height = 21
          DataField = 'BAIRRO_END_ENTREGA'
          DataSource = DataDados
          TabOrder = 4
          OnKeyPress = DbIDKeyPress
        end
        object DbCidEndEnt: TDBEdit
          Left = 8
          Top = 200
          Width = 264
          Height = 21
          DataField = 'CID_END_ENTREGA'
          DataSource = DataDados
          TabOrder = 5
          OnKeyPress = DbIDKeyPress
        end
        object DbUFEndEnt: TDBEdit
          Left = 8
          Top = 240
          Width = 33
          Height = 21
          DataField = 'UF_END_ENT'
          DataSource = DataDados
          TabOrder = 6
          OnKeyPress = DbIDKeyPress
        end
        object DbComplEnt: TDBEdit
          Left = 160
          Top = 120
          Width = 121
          Height = 21
          DataField = 'COMPL_ENT'
          DataSource = DataDados
          TabOrder = 3
          OnKeyPress = DbIDKeyPress
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Outros Dados'
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 630
        Height = 391
        Align = alClient
        TabOrder = 0
        object Label19: TLabel
          Left = 8
          Top = 15
          Width = 86
          Height = 13
          Caption = 'Local de Trabalho'
          FocusControl = DbTrabalho
        end
        object Label20: TLabel
          Left = 8
          Top = 39
          Width = 67
          Height = 13
          Caption = 'End. Trabalho'
          FocusControl = DbEndTrab
        end
        object Label21: TLabel
          Left = 8
          Top = 63
          Width = 87
          Height = 13
          Caption = 'Telefone Trabalho'
          FocusControl = DbTelTrab
        end
        object Label22: TLabel
          Left = 8
          Top = 87
          Width = 61
          Height = 13
          Caption = 'Nome do Pai'
          FocusControl = DbNomePai
        end
        object Label23: TLabel
          Left = 8
          Top = 111
          Width = 67
          Height = 13
          Caption = 'Nome da M'#227'e'
          FocusControl = DbNomeMae
        end
        object Label25: TLabel
          Left = 8
          Top = 135
          Width = 69
          Height = 13
          Caption = 'Data de Nasc.'
          FocusControl = DbDataNasc
        end
        object Label26: TLabel
          Left = 8
          Top = 159
          Width = 78
          Height = 13
          Caption = 'Limite de Credito'
          FocusControl = DbLimiteCred
        end
        object Label27: TLabel
          Left = 8
          Top = 183
          Width = 37
          Height = 13
          Caption = 'Contato'
          FocusControl = DbContatoGeral
        end
        object Label32: TLabel
          Left = 8
          Top = 207
          Width = 65
          Height = 13
          Caption = 'Email Contato'
        end
        object Label33: TLabel
          Left = 8
          Top = 231
          Width = 58
          Height = 13
          Caption = 'Site Contato'
        end
        object Label29: TLabel
          Left = 8
          Top = 254
          Width = 63
          Height = 13
          Caption = 'Observa'#231#245'es'
          FocusControl = DbObservacao
        end
        object DbObservacao: TDBMemo
          Left = 104
          Top = 251
          Width = 473
          Height = 78
          DataField = 'OBSERVACOES'
          DataSource = DataDados
          TabOrder = 10
          OnKeyPress = DbIDKeyPress
        end
        object DbSite: TDBEdit
          Left = 104
          Top = 227
          Width = 473
          Height = 21
          DataField = 'SITE'
          DataSource = DataDados
          TabOrder = 9
          OnKeyPress = DbIDKeyPress
        end
        object DbEmail: TDBEdit
          Left = 104
          Top = 203
          Width = 473
          Height = 21
          DataField = 'EMAIL'
          DataSource = DataDados
          TabOrder = 8
          OnKeyPress = DbIDKeyPress
        end
        object DbContatoGeral: TDBEdit
          Left = 104
          Top = 179
          Width = 409
          Height = 21
          DataField = 'CONTATO'
          DataSource = DataDados
          TabOrder = 7
          OnKeyPress = DbIDKeyPress
        end
        object DbLimiteCred: TDBEdit
          Left = 104
          Top = 155
          Width = 89
          Height = 21
          DataField = 'LIMITE_CRED'
          DataSource = DataDados
          TabOrder = 6
          OnKeyPress = DbIDKeyPress
        end
        object DbDataNasc: TDBEdit
          Left = 104
          Top = 131
          Width = 134
          Height = 21
          DataField = 'DATA_NASC'
          DataSource = DataDados
          TabOrder = 5
          OnKeyPress = DbIDKeyPress
        end
        object DbNomeMae: TDBEdit
          Left = 104
          Top = 107
          Width = 409
          Height = 21
          DataField = 'FILIACAO_MAE'
          DataSource = DataDados
          TabOrder = 4
          OnKeyPress = DbIDKeyPress
        end
        object DbNomePai: TDBEdit
          Left = 104
          Top = 83
          Width = 409
          Height = 21
          DataField = 'FILIACAO_PAI'
          DataSource = DataDados
          TabOrder = 3
          OnKeyPress = DbIDKeyPress
        end
        object DbTelTrab: TDBEdit
          Left = 104
          Top = 59
          Width = 160
          Height = 21
          DataField = 'TELEFONE_TRAB'
          DataSource = DataDados
          TabOrder = 2
          OnKeyPress = DbIDKeyPress
        end
        object DbEndTrab: TDBEdit
          Left = 104
          Top = 35
          Width = 409
          Height = 21
          DataField = 'END_LOCAL_TRAB'
          DataSource = DataDados
          TabOrder = 1
          OnKeyPress = DbIDKeyPress
        end
        object DbTrabalho: TDBEdit
          Left = 104
          Top = 11
          Width = 409
          Height = 21
          DataField = 'LOCAL_TRAB'
          DataSource = DataDados
          TabOrder = 0
          OnKeyPress = DbIDKeyPress
        end
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 419
    Width = 638
    Height = 65
    Align = alBottom
    TabOrder = 1
    inline Frame: TFrameBotaoHorizontal
      Left = 1
      Top = 0
      Width = 637
      Height = 63
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
  inherited DataDados: TDataSource
    Left = 464
    Top = 336
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 520
    Top = 272
    inherited ActPesquisar: TAction
      OnExecute = ActPesquisarExecute
    end
    object ActContatosADC: TAction
      Caption = 'Ctrl+F2 - Contatos Adcionais'
      ShortCut = 16497
    end
    object ActConsultarCep: TAction
      ShortCut = 16459
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 452
    Top = 272
    object ConsultarEndereonaInternet1: TMenuItem
      Action = ActConsultarCep
      Caption = 'Consultar Endere'#231'o na Internet'
    end
  end
end
