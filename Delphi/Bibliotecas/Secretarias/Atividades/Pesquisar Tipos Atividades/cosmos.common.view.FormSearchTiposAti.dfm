object FrmSearchTiposAti: TFrmSearchTiposAti
  Left = 0
  Top = 0
  HelpContext = 570
  BorderStyle = bsDialog
  Caption = 'Tipos de Atividades'
  ClientHeight = 468
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    677
    468)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 431
    Width = 661
    Height = 7
    Anchors = [akLeft, akRight, akBottom]
    Shape = bsTopLine
    ExplicitTop = 327
    ExplicitWidth = 483
  end
  object MSGroupHeader1: TMSGroupHeader
    Left = 8
    Top = 8
    Width = 657
    Height = 70
    Transparent = True
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Campo Promotor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    object RdbLec: TRadioButton
      Left = 0
      Top = 25
      Width = 145
      Height = 17
      Caption = 'Lectorium Rosicrucianum'
      TabOrder = 0
      OnClick = RdbLecClick
    end
    object RdbTM: TRadioButton
      Left = 0
      Top = 48
      Width = 129
      Height = 17
      Caption = 'Trabalho da Mocidade'
      TabOrder = 1
      OnClick = RdbTMClick
    end
    object RdbTPU: TRadioButton
      Left = 169
      Top = 48
      Width = 113
      Height = 17
      Caption = 'Trabalho P'#250'blico'
      TabOrder = 2
      OnClick = RdbTPUClick
    end
    object RdbEI: TRadioButton
      Left = 307
      Top = 25
      Width = 94
      Height = 17
      Caption = 'Escola Interna'
      TabOrder = 3
      OnClick = RdbEIClick
    end
    object RdbSimpatizantes: TRadioButton
      Left = 169
      Top = 25
      Width = 94
      Height = 17
      Caption = 'Simpatizantes'
      TabOrder = 4
      OnClick = RdbSimpatizantesClick
    end
  end
  inline FmeGridSearch1: TFmeGridSearch
    Left = 7
    Top = 84
    Width = 661
    Height = 339
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    ParentColor = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 7
    ExplicitTop = 84
    ExplicitWidth = 661
    ExplicitHeight = 339
    inherited PnlSearchBar: TPanel
      Top = 315
      Width = 661
      ExplicitTop = 315
      ExplicitWidth = 661
      inherited SbnSearch: TSpeedButton
        Left = 635
        ExplicitLeft = 413
      end
      inherited SbnLocate: TSpeedButton
        Left = 603
        ExplicitLeft = 509
      end
      inherited EdtSearch: TEdit
        Width = 631
        ExplicitWidth = 631
      end
    end
    inherited DBGrid1: TDBGrid
      Width = 661
      Height = 315
      DataSource = DsrData
      OnDblClick = ActSelectExecute
    end
  end
  object BitBtn1: TBitBtn
    Left = 417
    Top = 440
    Width = 75
    Height = 25
    Action = ActSelect
    Anchors = [akRight, akBottom]
    Caption = '&Selecionar'
    Glyph.Data = {
      46050000424D4605000000000000360000002800000012000000120000000100
      2000000000001005000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF002D7310002D7310002D7310002B6E
      0F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00317C11004B922E004787
      2C00437C2B00317C11002B6E0F00FF00FF00FF00FF00FF00FF00FF00FF00B0A0
      900060483000604830006048300060483000604830006048300041A5170053A6
      3100CFE0CF00C4E0C40047872C00437C2B00317C11002B6E0F00FF00FF00FF00
      FF00FF00FF00B0A09000E0C8C000D0C0B000D0B8B000D0B8B000C0B0A000C0B0
      A0004CC11B0058B13200E0E0E000E0E0E000C4E0C40047872C00437C2B002D73
      1000FF00FF00FF00FF00FF00FF00B0A09000FFFFFF00FFF0E000FFFFFF00FFF0
      E000FFFFFF00FFF0E00060C635005AB83300E0E0E00053A63100E0E0E000C4E0
      C40047872C00368A1300FF00FF00FF00FF00FF00FF00B0A09000FFF0E000FFFF
      FF00FFF0E000FFFFFF00FFF0E000FFFFFF0067C93E0060C635002CDF2C0058B1
      320053A63100CFE0CF00CFE0CF00368A1300FF00FF00FF00FF00FF00FF00B0A0
      9000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF0067C9
      3E0060C635005AB8330058B1320053A6310041A51700FF00FF00FF00FF00FF00
      FF00FF00FF00C0A89000FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFF
      FF00FFF0E000FFFFFF0067C93E0060C635005AB8330058B1320060483000FF00
      FF00FF00FF00FF00FF00FF00FF00C0A8A000FFFFFF00FFF0E000FFFFFF00FFF0
      E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF00C0A8
      A00060483000FF00FF00FF00FF00FF00FF00FF00FF00C0B0A000FFF0E000FFFF
      FF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFF
      FF00FFF0E000C0B0A00060483000FF00FF00FF00FF00FF00FF00FF00FF00D0B0
      A000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0
      E000FFFFFF00FFF0E000FFFFFF00C0B0A00060483000FF00FF00FF00FF00FF00
      FF00FF00FF00D0B8A000FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFF
      FF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000D0B8B00060483000FF00
      FF00FF00FF00FF00FF00FF00FF00F0A89000F0A89000F0A89000F0A88000F0A0
      8000E0987000E0906000E0885000E0805000E0784000E0704000E0704000E070
      4000D0603000FF00FF00FF00FF00FF00FF00FF00FF00F0A89000FFC0A000FFC0
      A000FFC0A000FFB89000FFB89000FFB09000FFA88000FFA88000F0A07000F0A0
      7000F0987000F0986000D0683000FF00FF00FF00FF00FF00FF00FF00FF00F0A8
      9000F0A89000F0A89000F0A89000F0A88000F0A08000F0987000E0987000E090
      6000E0886000E0805000E0784000E0784000E0704000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00}
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 505
    Top = 440
    Width = 75
    Height = 25
    Action = ActCancel
    Anchors = [akRight, akBottom]
    Caption = '&Cancelar'
    Glyph.Data = {
      46050000424D4605000000000000360000002800000012000000120000000100
      2000000000001005000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF003131CE000000FF0000009C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF003131CE00319CFF000000FF0000009C00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003131CE000063FF000000
      CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000CE000000FF0000009C00FF00FF00FF00FF00FF00FF00FF00FF000000
      FF0000009C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF000000CE000000FF0000009C00FF00FF00FF00
      FF000000FF0000009C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000CE000000
      FF0000009C000000FF0000009C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000CE000000FF0000009C00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000CE000000FF0000009C000000CE0000009C00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF000000CE000000FF0000009C00FF00FF00FF00
      FF000000CE0000009C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF000000CE000000FF000000FF0000009C00FF00
      FF00FF00FF00FF00FF00FF00FF000000CE0000009C00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000CE00319CFF000000FF000000
      9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000CE000000
      9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0063639C000000
      CE0063639C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00}
    TabOrder = 3
  end
  object BitBtn3: TBitBtn
    Left = 594
    Top = 440
    Width = 75
    Height = 25
    Action = ActHelp
    Anchors = [akRight, akBottom]
    Caption = '&Ajuda'
    Glyph.Data = {
      46050000424D4605000000000000360000002800000012000000120000000100
      2000000000001005000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E7CEC600E7CE
      C600DECEC600DEC6BD00DEC6BD00E7CEBD00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFCEC600EFE7
      DE00EFEFEF00E7E7EF00DED6D600D6CECE00CECECE00C6C6BD00CEB5B500E7CE
      BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFCE
      C600F7F7EF00F7FFFF00E7CEC600D6947300D68C6300D68C6300D68C6B00CEB5
      A500C6C6C600C6B5B500DEC6B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00EFCEBD00FFF7F700FFFFFF00DEA58400CE632900CE632900F7E7D600F7D6
      C600CE632900CE632900CE947B00C6C6C600CEBDBD00E7CEBD00FF00FF00FF00
      FF00FF00FF00FF00FF00F7EFE700FFFFFF00E7AD9400CE5A2100CE632900CE6B
      3100EFBDA500E7B59C00CE633100CE633100CE632100D69C7B00CECECE00DEC6
      BD00FF00FF00FF00FF00FF00FF00EFCEC600FFFFFF00F7E7DE00D6733900CE63
      3100CE633100D6734200E7B59C00E7A58400CE632900CE6B3100CE633100CE6B
      3100D6C6BD00D6D6D600E7CEBD00FF00FF00FF00FF00EFDED600FFFFFF00EFBD
      9C00D6733900D6734200CE6B3100D67B4A00FFFFF700FFF7EF00CE6B3900CE63
      2900CE6B3100CE632900D6A58400DEE7E700E7CEC600FF00FF00FF00FF00F7E7
      DE00FFFFFF00E7AD8400D6844200D6844A00D67B4200CE6B3900EFC6B500FFFF
      FF00F7D6C600D6734200CE632900CE632900D68C6B00EFEFF700E7D6C600FF00
      FF00FF00FF00F7E7DE00FFFFFF00EFB58C00DE8C5200DE8C5200D6844A00D67B
      4200D6734200EFC6B500FFFFFF00F7E7DE00D6734200CE5A2100DE946B00F7F7
      FF00EFD6CE00FF00FF00FF00FF00EFDECE00FFFFFF00F7CEB500DE945A00E79C
      6300E79C6B00DE8C5200D6844A00D6733900EFC6AD00FFFFFF00E7AD9400C652
      1800E7AD8C00F7FFFF00EFD6C600FF00FF00FF00FF00EFDECE00FFFFFF00FFF7
      E700E7A56B00F7DEC600FFFFFF00EFB59400DE844A00D67B3900E7AD8C00FFFF
      FF00EFBDA500CE6B3100F7E7DE00F7F7F700EFD6C600FF00FF00FF00FF00FF00
      FF00F7E7E700FFFFFF00F7D6B500EFC69C00FFFFFF00FFFFF700EFCEB500EFCE
      AD00FFFFF700FFFFFF00DE946300E7B59400FFFFFF00EFDED600FF00FF00FF00
      FF00FF00FF00FF00FF00EFD6CE00FFF7EF00FFFFFF00F7D6AD00F7CEAD00FFEF
      E700FFFFF700FFFFF700FFE7DE00EFB58C00EFBD9C00FFFFFF00F7EFEF00EFDE
      D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFD6CE00FFF7EF00FFFF
      FF00FFEFDE00F7D6B500F7D6AD00EFCEAD00EFCEAD00F7E7D600FFFFFF00F7EF
      EF00EFCEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00EFD6CE00F7EFE700FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700F7E7E700F7E7E700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00EFD6CE00EFD6CE00EFDECE00EFD6
      CE00EFD6CE00EFD6CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00}
    TabOrder = 4
  end
  object CdsData: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    AfterOpen = CdsDataAfterOpen
    Left = 64
    Top = 104
  end
  object DsrData: TDataSource
    DataSet = CdsData
    Left = 120
    Top = 104
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 64
    Top = 176
    object ActSelect: TAction
      Caption = '&Selecionar'
      Hint = 'Selecionar|Seleciona a informa'#231#227'o selecionada na pesquisa'
      ImageIndex = 0
      OnExecute = ActSelectExecute
      OnUpdate = ActSelectUpdate
    end
    object ActCancel: TAction
      Caption = '&Cancelar'
      Hint = 'Cancelar|Cancela a pesquisa'
      ImageIndex = 1
      OnExecute = ActCancelExecute
    end
    object ActHelp: TAction
      Caption = '&Ajuda'
      Hint = 'Ajuda|Aciona o sistema de ajuda'
      ImageIndex = 2
      OnExecute = ActHelpExecute
    end
  end
  object ImageList1: TImageList
    Height = 18
    Width = 18
    Left = 120
    Top = 168
    Bitmap = {
      494C010103000400480012001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000480000001200000001002000000000004014
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7CEC600E7CE
      C600DECEC600DEC6BD00DEC6BD00E7CEBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002D7310002D73
      10002D7310002B6E0F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFCEC600EFE7DE00EFEFEF00E7E7
      EF00DED6D600D6CECE00CECECE00C6C6BD00CEB5B500E7CEBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000317C11004B922E004787
      2C00437C2B00317C11002B6E0F00000000000000000000000000000000000000
      00000000000000009C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000EFCEC600F7F7EF00F7FFFF00E7CEC600D694
      7300D68C6300D68C6300D68C6B00CEB5A500C6C6C600C6B5B500DEC6B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0A09000604830006048
      30006048300060483000604830006048300041A5170053A63100CFE0CF00C4E0
      C40047872C00437C2B00317C11002B6E0F000000000000000000000000000000
      00003131CE000000FF0000009C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFCEBD00FFF7F700FFFFFF00DEA58400CE632900CE63
      2900F7E7D600F7D6C600CE632900CE632900CE947B00C6C6C600CEBDBD00E7CE
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0A09000E0C8C000D0C0
      B000D0B8B000D0B8B000C0B0A000C0B0A0004CC11B0058B13200E0E0E000E0E0
      E000C4E0C40047872C00437C2B002D7310000000000000000000000000000000
      00003131CE00319CFF000000FF0000009C000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      00000000000000000000F7EFE700FFFFFF00E7AD9400CE5A2100CE632900CE6B
      3100EFBDA500E7B59C00CE633100CE633100CE632100D69C7B00CECECE00DEC6
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0A09000FFFFFF00FFF0
      E000FFFFFF00FFF0E000FFFFFF00FFF0E00060C635005AB83300E0E0E00053A6
      3100E0E0E000C4E0C40047872C00368A13000000000000000000000000000000
      0000000000003131CE000063FF000000CE000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      000000000000EFCEC600FFFFFF00F7E7DE00D6733900CE633100CE633100D673
      4200E7B59C00E7A58400CE632900CE6B3100CE633100CE6B3100D6C6BD00D6D6
      D600E7CEBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0A09000FFF0E000FFFF
      FF00FFF0E000FFFFFF00FFF0E000FFFFFF0067C93E0060C635002CDF2C0058B1
      320053A63100CFE0CF00CFE0CF00368A13000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C0000000000000000000000
      0000000000000000FF0000009C00000000000000000000000000000000000000
      000000000000EFDED600FFFFFF00EFBD9C00D6733900D6734200CE6B3100D67B
      4A00FFFFF700FFF7EF00CE6B3900CE632900CE6B3100CE632900D6A58400DEE7
      E700E7CEC6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0A09000FFFFFF00FFF0
      E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF0067C93E0060C635005AB8
      330058B1320053A6310041A51700000000000000000000000000000000000000
      00000000000000000000000000000000CE000000FF0000009C00000000000000
      00000000FF0000009C0000000000000000000000000000000000000000000000
      000000000000F7E7DE00FFFFFF00E7AD8400D6844200D6844A00D67B4200CE6B
      3900EFC6B500FFFFFF00F7D6C600D6734200CE632900CE632900D68C6B00EFEF
      F700E7D6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0A89000FFF0E000FFFF
      FF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF0067C93E0060C6
      35005AB8330058B1320060483000000000000000000000000000000000000000
      0000000000000000000000000000000000000000CE000000FF0000009C000000
      FF0000009C000000000000000000000000000000000000000000000000000000
      000000000000F7E7DE00FFFFFF00EFB58C00DE8C5200DE8C5200D6844A00D67B
      4200D6734200EFC6B500FFFFFF00F7E7DE00D6734200CE5A2100DE946B00F7F7
      FF00EFD6CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0A8A000FFFFFF00FFF0
      E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0
      E000FFFFFF00C0A8A00060483000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000CE000000FF000000
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000EFDECE00FFFFFF00F7CEB500DE945A00E79C6300E79C6B00DE8C
      5200D6844A00D6733900EFC6AD00FFFFFF00E7AD9400C6521800E7AD8C00F7FF
      FF00EFD6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0B0A000FFF0E000FFFF
      FF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFF
      FF00FFF0E000C0B0A00060483000000000000000000000000000000000000000
      0000000000000000000000000000000000000000CE000000FF0000009C000000
      CE0000009C000000000000000000000000000000000000000000000000000000
      000000000000EFDECE00FFFFFF00FFF7E700E7A56B00F7DEC600FFFFFF00EFB5
      9400DE844A00D67B3900E7AD8C00FFFFFF00EFBDA500CE6B3100F7E7DE00F7F7
      F700EFD6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0B0A000FFFFFF00FFF0
      E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0
      E000FFFFFF00C0B0A00060483000000000000000000000000000000000000000
      00000000000000000000000000000000CE000000FF0000009C00000000000000
      00000000CE0000009C0000000000000000000000000000000000000000000000
      00000000000000000000F7E7E700FFFFFF00F7D6B500EFC69C00FFFFFF00FFFF
      F700EFCEB500EFCEAD00FFFFF700FFFFFF00DE946300E7B59400FFFFFF00EFDE
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0B8A000FFF0E000FFFF
      FF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFFFF00FFF0E000FFFF
      FF00FFF0E000D0B8B00060483000000000000000000000000000000000000000
      0000000000000000CE000000FF000000FF0000009C0000000000000000000000
      0000000000000000CE0000009C00000000000000000000000000000000000000
      00000000000000000000EFD6CE00FFF7EF00FFFFFF00F7D6AD00F7CEAD00FFEF
      E700FFFFF700FFFFF700FFE7DE00EFB58C00EFBD9C00FFFFFF00F7EFEF00EFDE
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0A89000F0A89000F0A8
      9000F0A88000F0A08000E0987000E0906000E0885000E0805000E0784000E070
      4000E0704000E0704000D0603000000000000000000000000000000000000000
      00000000CE00319CFF000000FF0000009C000000000000000000000000000000
      000000000000000000000000CE0000009C000000000000000000000000000000
      0000000000000000000000000000EFD6CE00FFF7EF00FFFFFF00FFEFDE00F7D6
      B500F7D6AD00EFCEAD00EFCEAD00F7E7D600FFFFFF00F7EFEF00EFCEC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0A89000FFC0A000FFC0
      A000FFC0A000FFB89000FFB89000FFB09000FFA88000FFA88000F0A07000F0A0
      7000F0987000F0986000D0683000000000000000000000000000000000000000
      000063639C000000CE0063639C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000CE0000000000000000000000
      000000000000000000000000000000000000EFD6CE00F7EFE700FFF7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700F7E7E700F7E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0A89000F0A89000F0A8
      9000F0A89000F0A88000F0A08000F0987000E0987000E0906000E0886000E080
      5000E0784000E0784000E0704000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFD6CE00EFD6
      CE00EFDECE00EFD6CE00EFD6CE00EFD6CE000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000048000000120000000100010000000000D80000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFC0000000000FFFFFFFF
      FFC0FC0000000000FFC3FFFFFF003C0000000000FF81FBFF7E001C0000000000
      8000F1FFFC000C00000000008000F0FEFC000C00000000008000F8FDF8000400
      000000008000FC79F8000400000000008001FE33F8000400000000008001FF07
      F8000400000000008001FF8FF8000400000000008001FF07F800040000000000
      8001FE33FC000C00000000008001F879FC000C00000000008001F0FCFE001C00
      000000008001F1FF7F003C00000000008001FFFFFFC0FC0000000000FFFFFFFF
      FFFFFC000000000000000000000000000000000000000000000000000000}
  end
end
