inherited FrmProdutos: TFrmProdutos
  Left = 221
  Top = 113
  Caption = 'Consultar Produtos'
  ClientHeight = 512
  ClientWidth = 789
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 789
    Height = 105
    Align = alTop
    TabOrder = 0
    object BtnLocalizar: TBitBtn
      Left = 647
      Top = 13
      Width = 135
      Height = 40
      Action = ActLocalizar
      Caption = 'F2 - Localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000006E6E6E6E6E6E6E6E6E0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000006E6E6E5656566262623E3E3E6E6E6E0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000006E6E6E7A7A7A6E6E6E9E9E9E6E6E6E3E3E3E6E6E6E0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000009E9E9E6B8FFF4873FF6E6E6E9E9E9E6E6E6E3E3E3E6E6E6E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000B1C7FF6BC6FF48B8FF4873FF6E6E6E9E9E9E7A7A7A3E3E3E6E6E
        6E00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000006BC6FF6BC6FF48B8FF4873FF6E6E6E9E9E9E6E6E6E3E3E
        3E6E6E6E00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000006BC6FF6BC6FF48B8FF4873FF6E6E6E9E9E9E6E6E
        6E3E3E3E6E6E6E00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000006BC6FF6BC6FF48B8FF4873FF6E6E6E9E9E
        9E7A7A7A3E3E3E00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006BC6FF6BC6FF48B8FF4873FF6E6E
        6E9E9E9E6262620000000000008686867A7A7A7A7A7A6262626E6E6E7A7A7A00
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000006BC6FF6BC6FF48B8FF4873
        FF6E6E6E6262626262626E6E6E6262626E6E6E7A7A7A9292927A7A7A6262624A
        4A4A626262000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000006BC6FF6BC6FF8EAB
        FF868686929292868686929292F0CAA6FFE2B1FFFFD4FFFFD4FFE3D4F0CAA686
        86865656564A4A4A000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00868686868686FFAB8EFFE2B1FFFFD4FFFFD4FFFFD4FFFFD4FFFFD4FFFFD4FF
        F0D4A4A0A05656564A4A4A000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00A4A0A0FFAB8EFFE2B1FFF0D4FFF0D4FFFFD4FFFFD4FFFFD4FFFFD4FFFFFFFF
        FFFFF2F2F29292924A4A4A6E6E6E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FFAB8EFFE2B1FFF0D4FFE2B1FFFFD4FFFFD4FFFFD4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3D46262624A4A4A000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000AAAA
        AAF0CAA6FFFFD4FFE2B1FFE2B1FFFFD4FFFFD4FFFFD4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFD4FFFFD49292924A4A4A000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FFB1
        B1FFE2B1FFF0D4FFE2B1FFE2B1FFFFD4FFFFD4FFFFD4FFFFD4FFFFFFFFFFFFFF
        FFFFFFFFD4FFFFD4B6B6B64A4A4A000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FFB1
        B1FFF0D4FFE2B1FFD48EFFE2B1FFF0D4FFFFD4FFFFD4FFFFD4FFFFD4FFFFD4FF
        FFD4FFFFD4FFFFD4F0CAA6565656000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FFB1
        B1FFF0D4FFE2B1FFD48EFFE2B1FFE2B1FFFFD4FFFFD4FFFFD4FFFFD4FFFFD4FF
        FFD4FFFFD4FFFFD4F0CAA6565656000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000B6B6
        B6FFE2B1FFFFD4FFE2B1FFE2B1FFE2B1FFE2B1FFFFD4FFFFD4FFFFD4FFFFD4FF
        FFD4FFFFD4FFFFD4FFAB8E565656000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000AAAA
        AAF0CAA6FFFFD4FFF0D4FFF0D4FFE2B1FFE2B1FFE2B1FFE2B1FFF0D4FFF0D4FF
        E2B1FFFFD4FFE2B17A7A7A000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00AAAAAAFFF0D4FFFFFFFFFFFFFFF0D4FFE2B1FFE2B1FFE2B1FFE2B1FFE2B1FF
        F0D4FFF0D4FFAB8E6E6E6E000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00AAAAAAF0CAA6FFFFFFFFFFFFFFFFD4FFF0D4FFE2B1FFE2B1FFE2B1FFF0D4FF
        F0D4F0CAA67A7A7A000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000AAAAAAAAAAAAFFE3D4FFFFD4FFFFD4FFFFD4FFFFD4FFFFD4FFE2B1FF
        AB8E868686000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000AAAAAAA4A0A0A4A0A0F0CAA6F0CAA6F0CAA6F0CAA6A4A0A086
        8686000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object BtnEncerrar: TBitBtn
      Left = 647
      Top = 53
      Width = 135
      Height = 44
      Action = ActEncerrar
      Caption = 'F10 - Encerrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Glyph.Data = {
        7E120000424D7E12000000000000360000002800000027000000270000000100
        18000000000048120000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D5FCCDCDCCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF6E9FC02C772D296F8C296F8C6F926F58839B58839B95989A
        94C894CDCDCCFFF9D8D6D5FCFFF9D8E2EEF5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF9D8EAE6F9FFFFFFFFFFFFFFFFFFFFFFFFEAE6F9
        0D4D8F0B6E75211BED0F3E6802629C0B6E750D4D8F0F3E68296F8C3B647B0D4D
        8F3B647B3B647B5978597469E895989A6D7C84C8B7A4B6B3F8FFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCDCDCC58839B6E9FC09AC9DC6E9FC09AC9DC73BBE602629C02629C3794
        CC02629C296F8C02629C02629C02629C02629C02629C02629C02629C02629C02
        629C3B647B02629C296F8C0D4D8F8BC38BFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D5FC296F8C0D4D
        8F0B6E750D4D8F0F3E680D4D8F0B6E7502629C1C79C71570BF338E95296F8C1C
        79C71570BF296F8C1C79C702629C1570BF02629C1570BF02629C1570BF02629C
        0D4D8F0B6E75296F8CFFF9D8FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCC02629C3B647B0F3E680921353B
        647B13386013386002629C3794CC3794CC1C79C73794CC1C79C73794CC1C79C7
        3794CC3794CC3794CC1570BF3794CC1570BF6E9FC01570BF338E9502629C6D7C
        84D6D5FCFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F9D8D6D5FCFFF9D889A3B23B647B0D4D8F0F3E68103353092135092135066428
        0D4D8F296F8C1C79C77469E81C79C77469E8544EF11C79C71C79C7338E95544E
        F11C79C71570BF338E95322DF01C79C71570BF02629C6D7C84FFF9D8FFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9AC9DC6F926F58839B
        94C89402629C3B647B0F3E681338600F3E68025214189B1F02629C3794CC3794
        CC3794CC3794CC1C79C73794CC1C79C73794CC1C79C73794CC228AD56E9FC015
        70BF3794CC1570BF3794CC02629C269051CDCDCCFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF95989A359736056E0A75AB756E9FC00B6E750F3E
        680664280921350664283597365CCE710D4D8F3794CC3794CC3794CC1C79C774
        69E81C79C71C79C7544EF11C79C71C79C73794CC544EF13794CC1C79C73794CC
        1C79C702629C0B6E75FFF9D8FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF58839B359736189B1F3597363B647B2690510F3E682C772D06642835973643
        C55690E5A274D68B02629C3794CC6E9FC03CA4EA3794CC3794CC3794CC228AD5
        3794CC1C79C76E9FC01C79C73794CC3794CC6E9FC01C79C73794CC02629C3B64
        7B9AC9DCFFFFFF000000FFFFFFFFFFFFFFFFFFFFF9D858839B068B09189B1F2A
        BE3C359736068B09189B1F35973626905143C55674D68B8BC38B94C8942C772D
        0D4D8F338E95544EF13794CC1C79C73794CC544EF13794CC1C79C73794CC544E
        F11C79C73794CC3794CC544EF13794CC1C79C702629C0D4D8FCDCDCCFFFFFF00
        0000FFFFFFFFFFFFCDCDCC269051189B1F189B1F2ABE3C189B1F2ABE3C18B829
        45B24D43C55662CF7674D68B94C89494C89445B24D09213502629C544EF13794
        CC3794CC3794CC3794CC3794CC3794CC6E9FC01C79C73794CC3794CC3794CC37
        94CC3794CC3794CC7469E802629C3B647BCDCDCCFFFFFF000000FFFFFFFFF9D8
        2C772D068B0935973618B829189B1F2ABE3C26905145B24D43C5565CCE715CCE
        718AE09E94C8945CCE710921352C772D1570BF1C79C73794CC3794CC1C79C737
        94CC3794CC3794CC544EF11C79C73794CC3794CC3794CC3794CC1C79C73794CC
        544EF102629C296F8CC8B7A4FFFFFF000000FFFFFFE2EEF574D68B068B092ABE
        3C189B1F2ABE3C189B1F2ABE3C0F78535CCE715CCE715CCE7158839B5CCE7106
        64280921350D4D8F02629C3CA4EA6E9FC01570BF0B6E7502629C338E951570BF
        3794CC3794CC3794CC3794CC3794CC3794CC7469E81C79C742A8E602629C0B6E
        759AC9DCFFFFFF000000FFFFFFFFFFFFD6D5FC8BC38B2C772D068B093597362A
        BE3C2690512ABE3C26905145B24D269051189B1F0921350921351033530B6E75
        0D4D8F3794CC1570BF3B647B02629C3B647B0D4D8F296F8C3794CC3794CC3CA4
        EA3794CC3794CC3794CC544EF13794CC3794CC296F8C0D4D8F9AC9DCFFFFFF00
        0000FFFFFFFFFFFFFFFFFFE2EEF5CDCDCC2C772D068B090F7853359736068B09
        189B1F0664280921350F3E680921350F3E683B647B0D4D8F269051322DF00262
        9C1570BF3794CC1570BF0B6E750B6E756E9FC0544EF142A8E63794CC6E9FC037
        94CC3794CC3794CC6762F31570BF0B6E7595989AFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCDE3CD269051068B09189B1F359736296F8C0B6E750F3E
        681338600F3E683B647B0F3E6802629C1570BF3794CC1570BF338E951570BF37
        94CC1570BF3B647B1570BF3794CC3CA4EA73BBE65CB2E86E9FC03794CC3794CC
        544EF102629C0D4D8F95989AFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF9D86F926F189B1F296F8C1C79C702629C0921350F3E683B647B0F
        3E680921350D4D8F2690511570BF3B647B2390DB58839B228AD5338E950D4D8F
        338E953794CC6E9FC03CA4EA3794CC3794CC7469E81C79C73794CC3794CC0262
        9C74D68BFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F9D892C5E658839B296F8C0F3E680F3E680F3E680F3E680921350F3E6802629C
        1570BF338E951570BFFCE5C792C5E6CDCDCC1570BF3B647B3794CC3794CC5CB2
        E86E9FC05CB2E873BBE63CA4EA3794CC6E9FC0296F8C0D4D8F75AB75FFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92C5E6
        338E950F3E683B647B0F3E680921350F3E683B647B0D4D8F2690513CA4EA3B64
        7B6E9FC0FCE5C76762F32690513794CC9A97F6544EF142A8E63794CC3794CC37
        94CC338E951570BF3794CC3794CC02629C58839BFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCC02629C3B647B1338
        600921350F3E680F3E680F3E6802629C1570BF73BBE63CA4EA3794CC1C79C758
        839B3CA4EA73BBE63CA4EA338E953CA4EA73BBE65CB2E873BBE63794CC3794CC
        5CB2E83794CC296F8C3B647BFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF5CB2E81271AC0F3E680921350F3E680921350F
        3E681338600D4D8F3794CC3CA4EA9AC9DC3CA4EA3794CC3CA4EA73BBE63CA4EA
        73BBE63794CC6E9FC03794CC3794CC3CA4EA6762F31C79C742A8E63794CC0262
        9C6D7C84FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEAE6F99AC9DC02629C0F3E680F3E680921350F3E680921350F3E6802629C
        1570BF73BBE63CA4EA3794CC3794CC73BBE63CA4EA6E9FC03CA4EA3794CC3CA4
        EA6E9FC03CA4EA6E9FC01C79C73794CC5CB2E83794CC211BED3B647BFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60BCF3
        02629C092135056E0A0921350921350F3E683B647B02629C3794CC3CA4EA60BC
        F33CA4EA6E9FC05CB2E86E9FC03CA4EA89A3B2544EF173BBE660BCF373BBE637
        94CC3794CC6E9FC073BBE63794CC02629C58839BFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94C8940D4D8F066428189B
        1F068B090921350921350F3E6802629C1C79C773BBE660BCF3CDE3CD92C5E6FF
        F9D8D6D5FCCDE3CDD6D5FCCDE3CDD6D5FCFFF9D8CDCDCCFFF9D8CDCDCCFFF9D8
        CDCDCC6E9FC00D4D8F3B647BFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE2EEF5C8B7A43B647B0664280921355CCE71338E95189B1F02
        52141338601570BF3794CC73BBE6FFF9D8D6D5FCFFF9D8D6D5FCFFF9D8E2EEF5
        FFF9D8D6D5FCEAE6F992C5E6D6D5FCFFFFFFD6D5FCD6D5FCFFF9D83794CC0262
        9C3B647BFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF89A3B26F
        926F3B647B068B09189B1F4A8F4A58839B90E5A26F926F189B1F0F3E6802629C
        1C79C7CDCDCCB6B3F87469E8322DF07469E8544EF189A3B2D6D5FC7469E8544E
        F1312AEE6762F3FFFFFF322DF0CDCDCCFFFFFF73BBE61570BF597859FFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74D68B189B1F189B1F2ABE3C43C556
        5CCE7174D68B62CF7674D68B94C89474D68B35973602629C3794CC9AC9DCB6B3
        F80F08ED9A97F69A97F69A97F6322DF07469E86762F3D6D5FC544EF19A97F6E2
        EEF56762F392C5E6FFFFFF3794CC02629C3B647BFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFF95989A068B09189B1F2ABE3C2690512ABE3C2690515CCE7174D6
        8B8BC38B74D68B94C894338E950D4D8F544EF1FFF9D89A97F6312AEED6D5FCD6
        D5FCFFFFFF89A3B20F08EDD6D5FCFFFFFF89A3B2B6B3F8FFFFFF322DF0CDCDCC
        FFFFFF73BBE61570BF3B647BEAE6F9000000FFFFFFFFFFFFFFFFFF89A3B23597
        36189B1F2ABE3C3597362ABE3C2690515CCE715CCE715CCE7174D68B62CF7694
        C894269051211BED3794CCD6D5FCCDCDCC0F08ED7469E86762F3FFFFFF6762F3
        312AEE92C5E6FFFFFF6762F3D6D5FCFFFFFF544EF16E9FC0FCE5C760BCF33794
        CC3B647BFFF9D8000000FFFFFFFFFFFFD6D5FC359736189B1F3597363597362A
        BE3C26905135973626905135973658839B5CCE7174D68B5CCE7102629C02629C
        3CA4EAFFF9D88681F50F08ED6E9FC089A3B28681F57469E86762F37469E88681
        F5312AEE544EF17469E8544EF1C8B7A4B0A6E86E9FC01570BF2C772DEAE6F900
        0000FFFFFFFFFFFFC8B7A4189B1F2ABE3C189B1F189B1F189B1F359736359736
        3B647B0664285CCE7174D68B6F926F2C772D0B6E7502629C73BBE6CDCDCC9AC9
        DC0F08ED7469E85CB2E86E9FC06762F3FFF9D85CB2E89A97F65CB2E8D6D5FC9A
        97F6CDCDCCCDCDCC92C5E63CA4EA338E953B647BFFFFFF000000FFFFFFFFF9D8
        597859068B09189B1F068B0958839B94C8949AC9DC296F8C0F08ED0664282690
        5135973609213509213502629C296F8C3CA4EACDCDCCD6D5FCD6D5FCD6D5FCE2
        EEF5D6D5FCFFF9D8FFFFFFFFF9D8D6D5FCFFF9D8FFFFFFFFF9D8FFF9D89AC9DC
        3CA4EA73BBE61570BF3B647BEAE6F9000000FFFFFFD6D5FC2ABE3C068B094A8F
        4A9AC9DCFFFFFFFFFFFFCDE3CD1570BF02629C066428189B1F0921350921350F
        3E683B647B02629C45B0F7CDCDCCFFF9D8FFFFFFFFFFFFFFF9D8FFFFFFFFF9D8
        FFF9D8FFF9D8FFF9D8CDCDCCFFF9D8FFF9D8FFF9D83CA4EA60BCF33CA4EA338E
        950B6E75FFF9D8000000FFFFFFFFF9D8066428056E0AD6D5FCFFFFFFFFFFFFFF
        FFFFD6D5FC3B647B0D4D8F0921350F3E680921350F3E680F3E680D4D8F02629C
        5CB2E8B0A6E8FCE5C7CDCDCCD6D5FCFCE5C7D6D5FC9AC9DC92C5E69AC9DC5CB2
        E89AC9DC5CB2E86E9FC03CA4EA6E9FC03CA4EA3794CC1C79C70B6E75D6D5FC00
        0000FFFFFFE2EEF53597366F926FFFFFFFFFFFFFFFFFFFFFFFFFE2EEF5338E95
        02629C02629C02629C02629C02629C02629C02629C3794CC60BCF35CB2E860BC
        F360BCF360BCF360BCF360BCF33CA4EA73BBE63794CC3794CC228AD5338E9502
        629C338E9502629C02629C02629C02629C296F8CFFFFFF000000FFFFFFFFF9D8
        6E9FC0CDCDCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D8B6B3F89AC9DC89A3
        B29AC9DC89A3B2CDCDCC02629C296F8C3CA4EA1C79C7338E951C79C7211BED02
        629C1570BF02629C0D4D8F0B6E750D4D8F0B6E750D4D8F0B6E750D4D8F3B647B
        1C79C79AC9DC6762F3C8B7A4FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF296F8C0D4D8F02629C02629C0F3E680D4D8F02629C02629C3B647B296F8C
        58839B58839B9AC9DC9AC9DCCDE3CDD6D5FCFFF9D8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D5FC1570BF
        296F8C95989AD6D5FCEAE6F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000}
    end
    object RadioTipo: TRadioGroup
      Left = 10
      Top = 6
      Width = 207
      Height = 55
      Caption = ' Tipo de Consulta '
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        '0 - C'#243'digo'
        '1 - Descri'#231#227'o'
        '2 - Refer'#234'ncia')
      TabOrder = 0
    end
    object ChAtivos: TCheckBox
      Left = 368
      Top = 14
      Width = 97
      Height = 17
      Caption = 'Apenas Ativos'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object RadioTipoProd: TRadioGroup
      Left = 224
      Top = 6
      Width = 129
      Height = 56
      Caption = ' Tipo de Produto '
      ItemIndex = 2
      Items.Strings = (
        '0 - Normal'
        '1 - Composto'
        '2 - Ambos')
      TabOrder = 1
    end
    object GrpLocalizar: TGroupBox
      Left = 11
      Top = 61
      Width = 342
      Height = 39
      Caption = ' Localizar '
      TabOrder = 3
      object Edtlocalizar: TEdit
        Left = 8
        Top = 13
        Width = 327
        Height = 21
        TabOrder = 0
        OnKeyPress = ComboGrupoKeyPress
      end
    end
    object ChAtivoVenda: TCheckBox
      Left = 368
      Top = 32
      Width = 153
      Height = 17
      Caption = 'Apenas Ativos para venda'
      TabOrder = 6
    end
  end
  object GridProdutos: TDBGrid
    Left = 0
    Top = 112
    Width = 789
    Height = 400
    Align = alBottom
    DataSource = DataProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = GridProdutosDblClick
    OnEnter = GridProdutosEnter
    OnExit = GridProdutosExit
    OnKeyPress = GridProdutosKeyPress
    OnTitleClick = GridProdutosTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 290
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Unid.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Estoque'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Venda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 85
        Visible = True
      end>
  end
  object DataProdutos: TDataSource
    Left = 360
    Top = 184
  end
  object ActionList1: TActionList
    Left = 280
    Top = 184
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