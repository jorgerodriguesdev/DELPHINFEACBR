inherited FrmLancPedidos: TFrmLancPedidos
  Left = 245
  Top = 92
  Caption = 'Lan'#231'amentos de Pedidos/Or'#231'amentos'
  ClientHeight = 547
  ClientWidth = 780
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 780
    Height = 547
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'Lan'#231'amento'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 772
        Height = 519
        Align = alClient
        TabOrder = 0
        object GrpDadosCliente: TGroupBox
          Left = 8
          Top = 107
          Width = 478
          Height = 45
          Caption = ' Cliente* '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object SpbConCliente: TSpeedButton
            Left = 447
            Top = 14
            Width = 26
            Height = 25
            Cursor = crHandPoint
            Action = ActConsultaCliente
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000000000000000
              0000000000000000005C534E0000000000000000000000005C534E0000000000
              00000000000000000000000000000000000000878280878280F3E1D7F4E3D9F4
              E3DAF3E2D8F3E1D7B8A89F5C534E5C534E000000000000000000000000000000
              B8AAA4F4E3D8F8FAFBE4E2E2CFB1A2D4AB96DDC6BBECF1F0F6F3F2F2E1D6574F
              4B5C534E000000000000000000B8AAA4F5EAE2F4FFFFCF9A80B74C15B9643CD9
              AF9AC05823B95624D5AF9FF7FFFFF4E2D9413A375C534E000000000000F2E1D7
              F8FFFFC77D58BB450CC64E13C2A495FFFFFFD9926FC14A0FB8450BCE9A80F8FF
              FFF2E0D6000000000000B8AAA4FAFAF9D8A890BD480DCD622ECD6029CB6B3AD8
              8E68CA5E29CC622DC95D29B94710E0C9BDF6EDE880736D5C534EF3E0D7F8FAFB
              C56232CA5C26CE6733CB5B23CA8969F7E7DFD06B38CA5A23CD6531C3531BC778
              50F8FCFDDAC8BF020202F3E1D8F2DED6C5561ECE6632CC6531CC5A21C28669FF
              FFFFE8AD91C44A0FCC622DCB5F28C35E2BF3F2F1F1DFD5030303F2E1D9F3D8CA
              CD5B22CF6632CC642FCC602BC4551FCFB5A8FFFFFFE09C7AC7531ACD602BC65E
              29F5F1EDEFDED4040404F1E0D7FBEDE6DB6A32D36833CA5E28C95821C95419C1
              4B10E2D0C6FFFFFFD0703FCD5A20CE6A38FCFBFBEEDDD3272727F0DFD6FFFFFF
              F5986AE2662AC88B6DF0EAE3D77E51BD3000D79C7EFFFFFFDA8C65D15314E29A
              76FEFDFECDBBB15C534E000000F6F1EFFFEADBFF8A49DE875CEEFFFFFEFCFDE7
              B9A1FAFFFFF3F9FEE0723CE67035FFF3EEF4E7E05C534E000000000000F1DED4
              FFFFFFFFE9CEFFB270ECAF87ECE2DFEBF0F4F1E4E0F6A478FE8C4DFFDECAFDFF
              FFF0DDD2000000000000000000000000F0DFD6FFFFFFFFFFFBFFF3C6FEDDA8FC
              CF98FFC991FFD4A9FFFEF8FCFFFFF1DFD4000000000000000000000000000000
              000000F1DCD3F5E8E4FDFCFDFFFFFFFFFFFFFFFFFFFCFBFDF3E6E0F1DDD20000
              00000000000000000000000000000000000000000000000000F1DCD1EFDBD0EF
              DBD1EFDCD1F1DBD0000000000000000000000000000000000000}
          end
          object DbIDCliente: TDBEdit
            Left = 8
            Top = 15
            Width = 65
            Height = 24
            DataField = 'IDCLIENTE'
            DataSource = DataDados
            TabOrder = 0
            OnExit = DbIDClienteExit
            OnKeyPress = DbIDKeyPress
          end
          object DbCliente: TDBEdit
            Left = 80
            Top = 15
            Width = 361
            Height = 24
            DataField = 'CLIENTE'
            DataSource = DataDados
            Enabled = False
            TabOrder = 1
          end
        end
        object GrpDadosPedido: TGroupBox
          Left = 8
          Top = 8
          Width = 478
          Height = 99
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label3: TLabel
            Left = 9
            Top = 10
            Width = 13
            Height = 16
            Caption = 'ID'
          end
          object Label4: TLabel
            Left = 9
            Top = 52
            Width = 87
            Height = 16
            Caption = 'Data Cadastro'
          end
          object Label5: TLabel
            Left = 112
            Top = 52
            Width = 88
            Height = 16
            Caption = 'Hora Cadastro'
          end
          object Label6: TLabel
            Left = 211
            Top = 52
            Width = 85
            Height = 16
            Caption = 'Data Emiss'#227'o'
          end
          object Label7: TLabel
            Left = 311
            Top = 52
            Width = 86
            Height = 16
            Caption = 'Hora Emiss'#227'o'
          end
          object Label8: TLabel
            Left = 111
            Top = 10
            Width = 114
            Height = 16
            Caption = 'N'#250'mero do Pedido'
          end
          object DbID: TDBEdit
            Left = 9
            Top = 25
            Width = 87
            Height = 24
            DataField = 'ID'
            DataSource = DataDados
            TabOrder = 0
            OnKeyPress = DbIDKeyPress
          end
          object DbDataCad: TDBEdit
            Left = 9
            Top = 67
            Width = 87
            Height = 24
            DataField = 'DATA_PEDIDO'
            DataSource = DataDados
            TabOrder = 2
            OnKeyPress = DbIDKeyPress
          end
          object DbHoraCad: TDBEdit
            Left = 111
            Top = 67
            Width = 89
            Height = 24
            DataField = 'HORA_PEDIDO'
            DataSource = DataDados
            TabOrder = 3
            OnKeyPress = DbIDKeyPress
          end
          object DbDataEmissao: TDBEdit
            Left = 211
            Top = 67
            Width = 86
            Height = 24
            DataField = 'DATA_ENTREGA'
            DataSource = DataDados
            TabOrder = 4
            OnKeyPress = DbIDKeyPress
          end
          object DbHoraEmissao: TDBEdit
            Left = 311
            Top = 67
            Width = 86
            Height = 24
            DataField = 'HORA_ENTREGA'
            DataSource = DataDados
            TabOrder = 5
            OnKeyPress = DbIDKeyPress
          end
          object DbPedido: TDBEdit
            Left = 111
            Top = 25
            Width = 116
            Height = 24
            DataField = 'PEDIDO_NUM'
            DataSource = DataDados
            TabOrder = 1
            OnKeyPress = DbIDKeyPress
          end
        end
        object GrpValores: TGroupBox
          Left = 491
          Top = 8
          Width = 137
          Height = 228
          TabOrder = 7
          object Label9: TLabel
            Left = 8
            Top = 10
            Width = 84
            Height = 13
            Caption = 'Valor Produtos'
            FocusControl = DbValor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 8
            Top = 51
            Width = 71
            Height = 13
            Caption = 'Desconto (-)'
            FocusControl = DbDesconto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 8
            Top = 93
            Width = 78
            Height = 13
            Caption = 'Acr'#233'scimo (+)'
            FocusControl = DbAcrescimo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 8
            Top = 135
            Width = 116
            Height = 13
            Caption = 'Outras Despesas (+)'
            FocusControl = DbOutros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 8
            Top = 177
            Width = 82
            Height = 13
            Caption = 'Valor Total (=)'
            FocusControl = DbTotal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DbValor: TDBEdit
            Left = 8
            Top = 22
            Width = 112
            Height = 24
            DataField = 'VALOR'
            DataSource = DataDados
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = DbIDKeyPress
          end
          object DbDesconto: TDBEdit
            Left = 8
            Top = 64
            Width = 112
            Height = 24
            DataField = 'DESCONTO'
            DataSource = DataDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnExit = DbDescontoExit
            OnKeyPress = DbIDKeyPress
          end
          object DbAcrescimo: TDBEdit
            Left = 8
            Top = 106
            Width = 112
            Height = 24
            DataField = 'ACRESCIMO'
            DataSource = DataDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnExit = DbDescontoExit
            OnKeyPress = DbIDKeyPress
          end
          object DbOutros: TDBEdit
            Left = 8
            Top = 148
            Width = 112
            Height = 24
            DataField = 'OUTRAS_DESPESAS'
            DataSource = DataDados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnExit = DbDescontoExit
            OnKeyPress = DbIDKeyPress
          end
          object DbTotal: TDBEdit
            Left = 8
            Top = 190
            Width = 112
            Height = 24
            DataField = 'VALOR_TOTAL'
            DataSource = DataDados
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyPress = DbIDKeyPress
          end
        end
        object GrpItens: TGroupBox
          Left = 2
          Top = 241
          Width = 768
          Height = 276
          Align = alBottom
          Caption = ' Itens do Pedido/Or'#231'amento '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          object GriItens: TDBGrid
            Left = 2
            Top = 15
            Width = 764
            Height = 259
            Align = alClient
            DataSource = DataItens
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnKeyPress = GriItensKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'IDPRODUTO'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Descricao'
                Width = 263
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Quant'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCONTO'
                Title.Alignment = taCenter
                Title.Caption = 'Desc'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ACRESCIMO'
                Title.Alignment = taCenter
                Title.Caption = 'Acresc'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_TOTAL'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Valor Total'
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARGEM'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Margem'
                Visible = True
              end>
          end
        end
        object PnBotoes: TPanel
          Left = 633
          Top = 15
          Width = 137
          Height = 226
          Align = alRight
          TabOrder = 8
          inline Frame: TFrameBotaoVertical
            Left = 2
            Top = 5
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
              Caption = 'F7 - &Imprimir'
            end
            inherited BtnEncerrar: TBitBtn
              Action = ActEncerrar
              Caption = 'F10 - &Encerrar'
            end
          end
        end
        object BtnIncluirItem: TBitBtn
          Left = 8
          Top = 210
          Width = 94
          Height = 26
          Action = ActIncluirItens
          Caption = 'Incluir Itens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object BtnExcluirItem: TBitBtn
          Left = 103
          Top = 210
          Width = 90
          Height = 26
          Action = ActExcluirItem
          Caption = 'Excluir Item'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          NumGlyphs = 2
        end
        object BtnFinalizar: TBitBtn
          Left = 196
          Top = 210
          Width = 114
          Height = 26
          Action = ActConfirmaPedido
          Caption = '&Finalizar Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object BtnRetornar: TBitBtn
          Left = 312
          Top = 210
          Width = 172
          Height = 26
          Action = ActRetirarFechamento
          Caption = 'Retornar Pedido Finalizado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object RadioTipoDoc: TDBRadioGroup
          Left = 8
          Top = 154
          Width = 479
          Height = 52
          Caption = 'RadioTipoDoc'
          Columns = 4
          DataField = 'TIPODOC'
          DataSource = DataDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            '&0 - Dinheiro'
            '&1 - Cheque'
            '&2 - Cart'#227'o'
            '&3 - NP'
            '&4 - Carne'
            '&5 - Boleto'
            '&6 - Outros')
          ParentFont = False
          TabOrder = 9
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6')
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Endere'#231'o de Entrega'
      ImageIndex = 1
      object GrpDadosEntrega: TGroupBox
        Left = 0
        Top = 0
        Width = 772
        Height = 519
        Align = alClient
        TabOrder = 0
        object Label14: TLabel
          Left = 16
          Top = 56
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit1
        end
        object Label15: TLabel
          Left = 328
          Top = 56
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit2
        end
        object Label16: TLabel
          Left = 16
          Top = 96
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit3
        end
        object Label17: TLabel
          Left = 16
          Top = 136
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit4
        end
        object Label18: TLabel
          Left = 16
          Top = 176
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit8
        end
        object Label19: TLabel
          Left = 16
          Top = 216
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label20: TLabel
          Left = 80
          Top = 216
          Width = 19
          Height = 13
          Caption = 'Cep'
          FocusControl = DBEdit15
        end
        object Label21: TLabel
          Left = 16
          Top = 16
          Width = 32
          Height = 13
          Caption = 'Cliente'
          FocusControl = DBNomeCli
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 72
          Width = 289
          Height = 21
          DataField = 'END_ENTREGA'
          TabOrder = 1
          OnKeyPress = DbIDKeyPress
        end
        object DBEdit2: TDBEdit
          Left = 328
          Top = 72
          Width = 57
          Height = 21
          DataField = 'NUM_END_ENTREGA'
          TabOrder = 2
          OnKeyPress = DbIDKeyPress
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 112
          Width = 177
          Height = 21
          DataField = 'COMPL_END_ENTREGA'
          TabOrder = 3
          OnKeyPress = DbIDKeyPress
        end
        object DBEdit4: TDBEdit
          Left = 16
          Top = 152
          Width = 264
          Height = 21
          DataField = 'BAIRRO_END_ENTREGA'
          TabOrder = 4
          OnKeyPress = DbIDKeyPress
        end
        object DBEdit8: TDBEdit
          Left = 16
          Top = 192
          Width = 264
          Height = 21
          DataField = 'CID_END_ENTREGA'
          TabOrder = 5
          OnKeyPress = DbIDKeyPress
        end
        object DBEdit15: TDBEdit
          Left = 80
          Top = 232
          Width = 134
          Height = 21
          DataField = 'CEP_END_ENTREGA'
          TabOrder = 7
          OnKeyPress = DbIDKeyPress
        end
        object DBNomeCli: TDBEdit
          Left = 16
          Top = 32
          Width = 393
          Height = 21
          DataField = 'CLIENTE'
          Enabled = False
          TabOrder = 0
          OnKeyPress = DbIDKeyPress
        end
        object ComboUF: TDBLookupComboBox
          Left = 16
          Top = 232
          Width = 49
          Height = 21
          DataField = 'UF_END_ENTREGA'
          KeyField = 'UF'
          ListField = 'UF'
          TabOrder = 6
          OnKeyPress = DbIDKeyPress
        end
        object BitBtn1: TBitBtn
          Left = 16
          Top = 272
          Width = 201
          Height = 27
          Action = ActConfirmar
          Caption = 'F4 - &Confirmar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
      end
    end
  end
  inherited DataDados: TDataSource
    DataSet = DmNFe.CdsPedidos
    Left = 136
    Top = 360
  end
  inherited ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 72
    Top = 440
    inherited ActPesquisar: TAction
      OnExecute = ActPesquisarExecute
    end
    inherited ActRelatorio: TAction
      Caption = 'F7 - &Imprimir'
    end
    object ActCadCliente: TAction
      Hint = 'Cadastro de Cliente'
    end
    object ActConsultaCliente: TAction
      Hint = 'Consultar Cliente'
      OnExecute = ActConsultaClienteExecute
    end
    object ActConfirmaPedido: TAction
      Caption = '&Finalizar Pedido'
      Hint = 'Finalizar o Pedido'
      ShortCut = 119
      OnExecute = ActConfirmaPedidoExecute
    end
    object ActIncluirItens: TAction
      Caption = 'Incluir Itens'
      ShortCut = 45
      OnExecute = ActIncluirItensExecute
    end
    object ActEditarItens: TAction
      Caption = 'Alterar Item'
      OnExecute = ActEditarItensExecute
    end
    object ActExcluirItem: TAction
      Caption = 'Excluir Item'
      OnExecute = ActExcluirItemExecute
    end
    object ActRetirarFechamento: TAction
      Caption = 'Retornar Pedido Finalizado'
      OnExecute = ActRetirarFechamentoExecute
    end
  end
  object DataItens: TDataSource
    DataSet = DmNFe.CdsPedidoItens
    Left = 212
    Top = 368
  end
  object DataCliente: TDataSource
    DataSet = DmNFe.CdsContatos
    Left = 60
    Top = 360
  end
  object PopupMenu1: TPopupMenu
    Left = 136
    Top = 437
    object IncluirItem1: TMenuItem
      Caption = 'Incluir Item'
      ShortCut = 45
      OnClick = IncluirItem1Click
    end
    object EditarItem1: TMenuItem
      Caption = 'Editar Item'
      ShortCut = 16453
      OnClick = EditarItem1Click
    end
    object ExcluirItem1: TMenuItem
      Caption = 'Excluir Item'
      ShortCut = 46
      OnClick = ExcluirItem1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object F4Confirmar1: TMenuItem
      Action = ActConfirmaPedido
    end
    object LiberarPedidoFechado1: TMenuItem
      Action = ActRetirarFechamento
    end
    object CancelarPedido1: TMenuItem
      Caption = 'Cancelar Pedido'
      OnClick = CancelarPedido1Click
    end
  end
end
