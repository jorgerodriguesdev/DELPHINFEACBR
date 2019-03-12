inherited FrmPedidosConsulta: TFrmPedidosConsulta
  Left = 268
  Top = 123
  Caption = 'Consulta de Pedidos'
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 688
    Height = 446
    Align = alClient
    TabOrder = 0
    object GrpPeriodo: TGroupBox
      Left = 7
      Top = 10
      Width = 122
      Height = 65
      Caption = ' Per'#237'odo '
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 18
        Width = 14
        Height = 13
        Caption = 'De'
      end
      object Label2: TLabel
        Left = 8
        Top = 40
        Width = 6
        Height = 13
        Caption = #224
      end
      object Datai: TDateTimePicker
        Left = 28
        Top = 16
        Width = 85
        Height = 21
        Date = 39757.027767025470000000
        Time = 39757.027767025470000000
        TabOrder = 0
        OnKeyPress = DataiKeyPress
      end
      object Dataf: TDateTimePicker
        Left = 28
        Top = 38
        Width = 85
        Height = 21
        Date = 39757.027786342590000000
        Time = 39757.027786342590000000
        TabOrder = 1
        OnKeyPress = DataiKeyPress
      end
    end
    object ChTipoData: TCheckBox
      Left = 8
      Top = 77
      Width = 121
      Height = 17
      Caption = 'Data Entrega Pedido'
      TabOrder = 1
      OnKeyPress = DataiKeyPress
    end
    object RadioTipo: TRadioGroup
      Left = 134
      Top = 10
      Width = 161
      Height = 81
      Caption = ' Tipo de Consulta '
      ItemIndex = 3
      Items.Strings = (
        '0 - C'#243'digo do Pedido'
        '1 - N'#250'mero do Pedido'
        '2 - C'#243'digo do Cliente'
        '3 - Nome do Cliente'
        '4 - C'#243'digo do Vendedor')
      TabOrder = 2
    end
    object RadioConfirmados: TRadioGroup
      Left = 301
      Top = 10
      Width = 228
      Height = 37
      Caption = ' Confirmados '
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        '0 - Sim'
        '1 - N'#227'o'
        '2 - Todos')
      TabOrder = 3
    end
    object GroupBox2: TGroupBox
      Left = 301
      Top = 48
      Width = 228
      Height = 43
      Caption = ' Localizar '
      TabOrder = 4
      object EdtLocalizar: TEdit
        Left = 6
        Top = 16
        Width = 215
        Height = 21
        TabOrder = 0
        OnExit = EdtLocalizarExit
        OnKeyPress = DataiKeyPress
      end
    end
    object BitBtn1: TBitBtn
      Left = 535
      Top = 14
      Width = 138
      Height = 37
      Action = ActLocalizar
      Caption = 'F2 - Localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        20000000000000090000130B0000130B00000000000000000000844224AF5B3C
        3FFF0B3D6AF900376AFF00376AFF00336610FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00956134FF0E53
        7EFF0897C8FF009ED1FF00598CFF00376AFF00336610FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00155C7FF97BB7
        D2FF5EE0FFFF02BAECFF0086B9FF005689FF00376AFF00336610FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00006295FFFFFF
        FFFF85F4FFFF30DCFFFF02B8EAFF0086B9FF005689FF00376AFF00336610FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00006295FF9FC4
        D7FFECFFFFFF81F4FFFF30DCFFFF02B8EAFF0086B9FF005689FF00376AFF0033
        6610FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00006699100062
        95FF9FC4D7FFECFFFFFF81F4FFFF30DCFFFF02B8EAFF0086B9FF00598CFF0037
        6AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000066
        9910006295FF9FC4D7FFECFFFFFF81F4FFFF30DCFFFF02BAECFF009ED1FF0037
        6AFF7845451076434370744141CF723F3FFF703D3DFF6D3A3AFF6B3838FF6936
        36CF683535706633331000000000000000000000000000000000FFFFFF00FFFF
        FF0000669910006295FF9FC4D7FFECFFFFFF85F4FFFF5EE0FFFF0897C8FF0B3D
        6AFB7A4747EF916565FFA78080FFB28A8AFFAC8484FFA87D7DFFA37676FF9262
        62FF7C4A4AFF673434EF66333350000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF0000669910006295FF9FC4D7FFFFFFFFFF7BB7D2FF0E537EFF5738
        3FFFB69595FFC7A6A6FFD3B1B1FFE0C0C0FFE2C3C3FFE3C6C6FFE4C8C8FFCFAF
        AFFFB08686FF915F5FFF6D3A3AFF663333600000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000669910006295FF006295FF155C7FFB8B5427FF9256
        3AFFD3B2B2FFD0AAAAFF9E7171FF7A4848FF713E3EFF6D3A3AFF724040FF966C
        6CFFD5B8B8FFC6A3A3FF976565FF6D3A3AFF6633335000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0087545410865353EFC7AEAEFFD6B6
        B6FFC8A0A0FF835151FFBD8E75FFF6CFA2FFFFDFB0FFFFE7C2FFF6E7D5FFB59A
        99FF6F3D3DFFCDAEAEFFC6A3A3FF915F5FFF673434EF66333310FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008A575770A98383FFDAC2C2FFCCA3
        A3FF885656FFE7B78EFFFFD5A4FFFFD9A9FFFFE0B1FFFFEBCBFFFFF8EBFFFFFF
        FFFFE3D9D9FF6F3D3DFFD5B8B8FFB08686FF7C4A4AFF68353570FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C5959CFCEB8B8FFD8B6B6FFA576
        76FFC2927AFFFFCF9DFFFFD4A3FFFFD9A9FFFFE0B1FFFFEAC8FFFFF6E8FFFFFF
        FFFFFFFFFFFFB59B9BFF966C6CFFCFAFAFFF926262FF693636CFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008E5B5BFFE9DFDFFFD2A6A6FF915E
        5EFFF0D2B4FFFFCE9BFFFFD3A1FFFFD7A7FFFFDEAEFFFFE6BEFFFFEFD6FFFFF8
        ECFFFFFCF6FFF6ECE3FF724040FFE4C8C8FFA37676FF6B3838FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00915E5EFFEEE6E6FFD1A4A4FF8F5D
        5DFFF4E3CCFFFFCC99FFFFD2A0FFFFD6A5FFFFDAAAFFFFE0B1FFFFE6C0FFFFED
        CFFFFFEDD1FFFFEDCFFF6D3A3AFFE3C6C6FFAC8181FF6D3A3AFFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00936060FFF2EDEDFFD0A1A1FF9260
        60FFF4EADBFFFCD2A7FFFFCF9DFFFFD3A1FFFFD7A7FFFFDBABFFFFDFB0FFFFE2
        B5FFFFE3B7FFFFE2B5FF713E3EFFE2C3C3FFB08888FF703D3DFFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00956262FFF8F3F3FFCE9E9EFF9A67
        67FFF2E9E0FFF4E3CCFFFECE9CFFFFD09EFFFFD3A1FFFFD6A6FFFFD9A9FFFFDA
        AAFFFFDCACFFF6D1A4FF7A4848FFE0C0C0FFB28A8AFF723F3FFFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00966363CFE2D4D4FFDBB8B8FFAD7B
        7BFFCAAFAEFFF6EFE3FFF6DDC0FFFECE9CFFFFCF9DFFFFD2A0FFFFD4A3FFFFD5
        A5FFFFD6A5FFBD8F77FF9E7171FFD3B1B1FFA78080FF744141CFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099666670BE9E9EFFF2E4E4FFC695
        95FFA27373FFEADFDDFFF6EFE3FFF4E0C7FFFCD0A2FFFFCD9AFFFFCF9DFFFFD1
        9EFFE7B890FF835151FFD0AAAAFFC7A6A6FF916565FF76434370FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099666610996666EFEBE2E2FFDFBF
        BFFFC39292FF9C6A6AFFC9AEACFFF1E6DCFFF3E9D8FFF5DCBEFFF3CCA6FFC390
        77FF885656FFC8A0A0FFD3B2B2FFB69595FF7A4747EF78454510FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000099666650A67979FFF8F5
        F5FFE2C6C6FFC69595FFAD7B7BFF9A6767FF926060FF8F5D5DFF915E5EFFA576
        76FFCCA3A3FFD6B5B5FFC8AEAEFF885858FF7C49495000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000099666660A679
        79FFEBE2E2FFF2E4E4FFDBB8B8FFCE9E9EFFD0A1A1FFD1A4A4FFD2A6A6FFD8B6
        B6FFDAC2C2FFC7AEAEFF8C5D5DFF804D4D600000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000009966
        6650996666EFBE9E9EFFE2D4D4FFF8F3F3FFEEE3E3FFEDE2E2FFE9DFDFFFCEB8
        B8FFA98383FF865353EF84515150000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        00009966661099666670966363CF956262FF936060FF915E5EFF8E5B5BFF8C59
        59CF8A5757708754541000000000000000000000000000000000}
    end
    object BitBtn2: TBitBtn
      Left = 535
      Top = 52
      Width = 138
      Height = 37
      Action = ActEncerrar
      Caption = 'F10 - Encerrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0732DE0732DEFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FF0732DE
        0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732
        DE0732DEFF00FFFF00FFFF00FF0732DE0732DD0732DE0732DEFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF
        0534ED0732DF0732DE0732DEFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DDFF
        00FF0732DD0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0732DD0633E60633E60633E90732DCFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0633E307
        32E30534EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0732DD0534ED0533E90434EF0434F5FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F40534EF0533EBFF
        00FFFF00FF0434F40335F8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0335FC0534EF0434F8FF00FFFF00FFFF00FFFF00FF0335FC0335FBFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FCFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0335FB0335FBFF00FFFF00FFFF00FFFF00FF0335FB
        0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0335FBFF00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 96
      Width = 666
      Height = 337
      DataSource = DataPedido
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEDIDO_NUM'
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'mero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_PEDIDO'
          Title.Alignment = taCenter
          Title.Caption = 'Cadastro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_ENTREGA'
          Title.Alignment = taCenter
          Title.Caption = 'Entrega'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Visible = True
        end>
    end
  end
  object DataPedido: TDataSource
    Left = 128
    Top = 160
  end
  object ActionList1: TActionList
    Left = 200
    Top = 160
    object ActLocalizar: TAction
      Caption = 'F2 - Localizar'
      ShortCut = 113
      OnExecute = ActLocalizarExecute
    end
    object ActEncerrar: TAction
      Caption = 'F10 - Encerrar'
      ShortCut = 121
      OnExecute = ActEncerrarExecute
    end
  end
end
