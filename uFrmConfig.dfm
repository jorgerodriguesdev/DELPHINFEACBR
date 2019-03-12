inherited FrmConfig: TFrmConfig
  Left = 257
  Top = 157
  Caption = 'Configura'#231#227'o do Sistema NFe'
  ClientHeight = 464
  ClientWidth = 394
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 394
    Height = 416
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '&1 - Geral'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 386
        Height = 388
        Align = alClient
        TabOrder = 0
        object RadioFormas: TRadioGroup
          Left = 8
          Top = 14
          Width = 361
          Height = 74
          Caption = ' Forma de Emiss'#227'o '
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Normal'
            'DPEC'
            'Conting'#234'ncia'
            'SCAN'
            'FSDA')
          TabOrder = 0
        end
        object GroupBox5: TGroupBox
          Left = 8
          Top = 93
          Width = 361
          Height = 47
          Caption = ' Logomarca '
          TabOrder = 1
          object SpeedButton1: TSpeedButton
            Left = 320
            Top = 16
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object EdtLogoMarca: TEdit
            Left = 8
            Top = 16
            Width = 305
            Height = 21
            TabOrder = 0
          end
        end
        object ChArquivos: TCheckBox
          Left = 8
          Top = 147
          Width = 313
          Height = 17
          Caption = 'Salvar Arquivos de Envio e Resposta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object GroupBox6: TGroupBox
          Left = 8
          Top = 168
          Width = 361
          Height = 57
          Caption = ' Path para arquivo '
          TabOrder = 3
          object SpeedButton2: TSpeedButton
            Left = 320
            Top = 16
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object EdtArquivos: TEdit
            Left = 8
            Top = 16
            Width = 305
            Height = 21
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&2 - Certificado'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 386
        Height = 388
        Align = alClient
        TabOrder = 0
        object GroupBox7: TGroupBox
          Left = 8
          Top = 16
          Width = 338
          Height = 45
          Caption = ' Path do Certificado '
          TabOrder = 0
          object SpeedButton3: TSpeedButton
            Left = 310
            Top = 16
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton3Click
          end
          object EdtCertificado: TEdit
            Left = 8
            Top = 16
            Width = 297
            Height = 21
            TabOrder = 0
          end
        end
        object GroupBox8: TGroupBox
          Left = 8
          Top = 64
          Width = 145
          Height = 45
          Caption = ' Senha '
          TabOrder = 1
          object EdtSenha: TEdit
            Left = 8
            Top = 16
            Width = 121
            Height = 21
            TabOrder = 0
          end
        end
        object GroupBox9: TGroupBox
          Left = 8
          Top = 114
          Width = 145
          Height = 45
          Caption = ' N'#250'mero do S'#233'rie '
          TabOrder = 2
          object EdtSerial: TEdit
            Left = 8
            Top = 16
            Width = 121
            Height = 21
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&3 - Emitente'
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 386
        Height = 388
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 63
          Height = 13
          Caption = 'Raz'#227'o Social'
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 71
          Height = 13
          Caption = 'Nome Fantasia'
        end
        object Label3: TLabel
          Left = 8
          Top = 72
          Width = 27
          Height = 13
          Caption = 'CNPJ'
        end
        object Label4: TLabel
          Left = 205
          Top = 75
          Width = 47
          Height = 13
          Caption = 'I.Estadual'
        end
        object Label5: TLabel
          Left = 8
          Top = 104
          Width = 46
          Height = 13
          Caption = 'Endereco'
        end
        object Label6: TLabel
          Left = 8
          Top = 124
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label7: TLabel
          Left = 308
          Top = 99
          Width = 25
          Height = 13
          Caption = 'Num.'
        end
        object Label8: TLabel
          Left = 8
          Top = 146
          Width = 21
          Height = 13
          Caption = 'CEP'
        end
        object Label9: TLabel
          Left = 8
          Top = 170
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label10: TLabel
          Left = 239
          Top = 171
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label11: TLabel
          Left = 8
          Top = 195
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object Label16: TLabel
          Left = 8
          Top = 221
          Width = 70
          Height = 13
          Caption = 'C'#243'd. Municipio'
        end
        object EdtRazao: TEdit
          Left = 88
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object EdtFantasia: TEdit
          Left = 88
          Top = 48
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object EdtIE: TEdit
          Left = 256
          Top = 72
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object EdtCNPJ: TEdit
          Left = 88
          Top = 72
          Width = 105
          Height = 21
          TabOrder = 3
        end
        object EdtEndereco: TEdit
          Left = 88
          Top = 96
          Width = 211
          Height = 21
          TabOrder = 4
        end
        object EdtBairro: TEdit
          Left = 88
          Top = 120
          Width = 121
          Height = 21
          TabOrder = 5
        end
        object EdtNum: TEdit
          Left = 336
          Top = 96
          Width = 41
          Height = 21
          TabOrder = 6
        end
        object EdtCEP: TEdit
          Left = 88
          Top = 144
          Width = 121
          Height = 21
          TabOrder = 7
        end
        object EdtCidade: TEdit
          Left = 88
          Top = 168
          Width = 121
          Height = 21
          TabOrder = 8
        end
        object EdtUF: TEdit
          Left = 256
          Top = 168
          Width = 33
          Height = 21
          TabOrder = 9
        end
        object EdtTelefone: TEdit
          Left = 88
          Top = 192
          Width = 121
          Height = 21
          TabOrder = 10
        end
        object EdtCodMun: TEdit
          Left = 88
          Top = 216
          Width = 121
          Height = 21
          TabOrder = 11
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '&4 - WebService'
      ImageIndex = 3
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 386
        Height = 388
        Align = alClient
        TabOrder = 0
        object UF: TLabel
          Left = 20
          Top = 19
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object EdtUFWS: TEdit
          Left = 40
          Top = 16
          Width = 49
          Height = 21
          TabOrder = 0
        end
        object RadioAmbiente: TRadioGroup
          Left = 16
          Top = 43
          Width = 193
          Height = 51
          Caption = ' Ambiente de Destino '
          Items.Strings = (
            'Produ'#231#227'o'
            'Homologa'#231#227'o')
          TabOrder = 1
        end
        object GroupBox10: TGroupBox
          Left = 16
          Top = 104
          Width = 209
          Height = 129
          Caption = ' Conex'#227'o '
          TabOrder = 2
          object Label12: TLabel
            Left = 16
            Top = 24
            Width = 22
            Height = 13
            Caption = 'Host'
          end
          object Label13: TLabel
            Left = 16
            Top = 50
            Width = 25
            Height = 13
            Caption = 'Porta'
          end
          object Label14: TLabel
            Left = 16
            Top = 74
            Width = 36
            Height = 13
            Caption = 'Usu'#225'rio'
          end
          object Label15: TLabel
            Left = 16
            Top = 98
            Width = 31
            Height = 13
            Caption = 'Senha'
          end
          object EdtHost: TEdit
            Left = 64
            Top = 24
            Width = 121
            Height = 21
            TabOrder = 0
          end
          object EdtPorta: TEdit
            Left = 64
            Top = 48
            Width = 121
            Height = 21
            TabOrder = 1
          end
          object EdtUsuario: TEdit
            Left = 64
            Top = 72
            Width = 121
            Height = 21
            TabOrder = 2
          end
          object EdtSenhaWS: TEdit
            Left = 64
            Top = 96
            Width = 121
            Height = 21
            TabOrder = 3
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 416
    Width = 394
    Height = 48
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 56
      Top = 8
      Width = 129
      Height = 33
      Action = ActConfirmar
      Caption = 'F2 - Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 192
      Top = 8
      Width = 129
      Height = 33
      Action = ActFechar
      Caption = 'F10 - Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Left = 144
    Top = 288
    object ActConfirmar: TAction
      Caption = 'F2 - Confirmar'
      ShortCut = 113
      OnExecute = ActConfirmarExecute
    end
    object ActFechar: TAction
      Caption = 'F10 - Fechar'
      ShortCut = 121
      OnExecute = ActFecharExecute
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 220
    Top = 288
  end
end
