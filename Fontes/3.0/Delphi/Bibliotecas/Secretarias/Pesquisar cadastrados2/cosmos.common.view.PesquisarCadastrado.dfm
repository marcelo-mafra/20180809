inherited FrmPesquisarCadastrados: TFrmPesquisarCadastrados
  Caption = 'Pesquisar Cadastrados'
  ShowHint = True
  ExplicitTop = -45
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [5]
    Left = 3
    Top = 3
    Width = 689
    Height = 93
    Anchors = [akLeft, akTop, akRight]
    BevelKind = bkSoft
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      685
      89)
    object Label1: TLabel
      Left = 3
      Top = 7
      Width = 65
      Height = 13
      Caption = '&Pesquisar por'
      FocusControl = CbxPesquisa
    end
    object Label2: TLabel
      Left = 3
      Top = 50
      Width = 53
      Height = 13
      Caption = 'Ar&gumento'
      FocusControl = EdtArgumento
    end
    object SbnExecute: TSpeedButton
      Left = 658
      Top = 64
      Width = 23
      Height = 22
      Hint = 'Pesquisar!|Executa a pesquisa com o argumento atual'
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        96030000424D960300000000000036000000280000000F000000120000000100
        1800000000006003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFC64A10FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF
        FF00FF0884AD4A636BC64A104A5A5A0884AD0884ADFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF000000FF00FFFF00FF008CBD4AD6EF21D6FF8C6342C64A1094
        8C8442BDDE0884ADFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FF008CBD
        8CFFFF5AEFFF21D6FF42C6DE9C5A29BD5A106B847B089CCE0884ADFF00FFFF00
        FFFF00FFFF00FF000000FF00FF008CBD8CFFFF5AEFFF21D6FF31DEFF849C94AD
        5A29C64A105A5A5A107BA5FF00FFFF00FFFF00FFFF00FF000000FF00FF008CBD
        8CFFFF5AEFFF21D6FF31DEFF73E7FF9C6B4ACE844ABD4200425A63FF00FFFF00
        FFFF00FFFF00FF000000FF00FF008CBDB5FFFFB5F7FFC6F7FFE7FFFFEFFFFFD6
        D6CEA55A31EFC694BD4200FF00FFFF00FFFF00FFFF00FF000000FF00FF008CBD
        BDEFF731BDDE10A5D6109CCEC65A00C65A00C65A00DEA573FFE7BDBD4200FF00
        FFFF00FFFF00FF000000FF00FF008CBD4AC6DE5AEFFF21D6FF31DEFFC65A00CE
        8C5AFFDEADF7C694BD4208BD4200BD4200FF00FFFF00FF000000FF00FF008CBD
        8CFFFF5AEFFF21D6FF31DEFF6BE7FFC65A00CE844AF7C684E7A563BD4208FF00
        FFFF00FFFF00FF000000FF00FF008CBD8CFFFF5AEFFF21D6FF31DEFF6BE7FF8C
        E7FFC65A00C66B29E79431D67B18BD4200FF00FFFF00FF000000FF00FF008CBD
        8CFFFF5AEFFF21D6FF31DEFF6BE7FF8CE7FF4AC6E7C65A00C65A00C65A00BD42
        00BD4200FF00FF000000FF00FF008CBD94FFFF84FFFF6BFFFF7BFFFF94FFFFA5
        FFFF63DEF708A5D60884ADFF00FFFF00FFFF00FFFF00FF000000FF00FF008CBD
        FFFFFFF7FFFFD6FFFFB5FFFFB5FFFFADFFFFADFFFF6BFFFF0884ADFF00FFFF00
        FFFF00FFFF00FF000000FF00FFFF00FF0894C6F7FFFFE7FFFFC6FFFFADFFFFA5
        FFFF9CFFFF1084ADFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF
        FF00FF008CBD008CBD008CBD008CBD008CBD008CBDFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000}
      OnClick = SbnExecuteClick
      ExplicitLeft = 330
    end
    object Label3: TLabel
      Left = 163
      Top = 7
      Width = 23
      Height = 13
      Caption = '&Foco'
      FocusControl = CBXFocos
    end
    object CbxPesquisa: TComboBox
      Left = 3
      Top = 21
      Width = 145
      Height = 22
      Style = csOwnerDrawVariable
      TabOrder = 0
      Items.Strings = (
        'Matr'#237'cula'
        'Nome'
        'Apelido')
    end
    object EdtArgumento: TEdit
      Left = 3
      Top = 64
      Width = 651
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      OnKeyUp = EdtArgumentoKeyUp
    end
    object CBXFocos: TValueComboBox
      Left = 163
      Top = 21
      Width = 518
      Height = 22
      Style = csOwnerDrawVariable
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
  end
  inline FmeGridSearch1: TFmeGridSearch [6]
    Left = 4
    Top = 101
    Width = 687
    Height = 363
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = True
    ExplicitLeft = 4
    ExplicitTop = 101
    ExplicitWidth = 687
    ExplicitHeight = 363
    inherited PnlSearchBar: TPanel
      Top = 339
      Width = 687
      ExplicitTop = 339
      ExplicitWidth = 687
      inherited SbnSearch: TSpeedButton
        Left = 636
        ExplicitLeft = 413
      end
      inherited SbnLocate: TSpeedButton
        Left = 661
        ExplicitLeft = 378
      end
      inherited EdtSearch: TEdit
        Width = 631
        ExplicitWidth = 631
      end
    end
    inherited DBGrid1: TDBGrid
      Width = 687
      Height = 339
      DataSource = DsrData
      OnDblClick = FmeGridSearch1DBGrid1DblClick
    end
  end
  inherited ActionList1: TActionList [7]
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010104000900500012001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000480000002400000001002000000000008028
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFCEC600EFE7DE00EFEFEF00E7E7
      EF00DED6D600D6CECE00CECECE00C6C6BD00CEB5B500E7CEBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094987C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000EFCEC600F7F7EF00F7FFFF00E7CEC600D694
      7300D68C6300D68C6300D68C6B00CEB5A500C6C6C600C6B5B500DEC6B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000959A7D0044AB4D0073915F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003131CE000000FF0000009C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFCEBD00FFF7F700FFFFFF00DEA58400CE632900CE63
      2900F7E7D600F7D6C600CE632900CE632900CE947B00C6C6C600CEBDBD00E7CE
      BD00000000000000000000000000000000000000000000000000807870005038
      2000503820005038200050382000503820005038200050382000503820005038
      2000000000000000000000000000000000000000000000000000000000000000
      00005792490054D883004BC2680071915C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003131CE00319CFF000000FF0000009C000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      00000000000000000000F7EFE700FFFFFF00E7AD9400CE5A2100CE632900CE6B
      3100EFBDA500E7B59C00CE633100CE633100CE632100D69C7B00CECECE00DEC6
      BD0000000000000000000000000000000000000000000000000090807000AFB2
      B100AFAAA200A09BA20091949300908C84008389880083898800838988005038
      2000000000000000000000000000000000000000000000000000000000009EAF
      8F0054C16B0073E19F0069DF980052C46E007298600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003131CE000063FF000000CE000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      000000000000EFCEC600FFFFFF00F7E7DE00D6733900CE633100CE633100D673
      4200E7B59C00E7A58400CE632900CE6B3100CE633100CE6B3100D6C6BD00D6D6
      D600E7CEBD000000000000000000000000000000000000000000A0989000C0C0
      C000B0B8B000B0B0B000B0A8A000A098A000B0A8A000A098A000908C84005038
      20000000000000000000000000000000000000000000000000000000000065A1
      5A007EE5A6008AE9B30081E7AE0073E4A40053C56F0080A26F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C0000000000000000000000
      0000000000000000FF0000009C00000000000000000000000000000000000000
      000000000000EFDED600FFFFFF00EFBD9C00D6733900D6734200CE6B3100D67B
      4A00FFFFF700FFF7EF00CE6B3900CE632900CE6B3100CE632900D6A58400DEE7
      E700E7CEC6000000000000000000000000000000000000000000A0989000C0C8
      C000C0C0C000C0B8B000B0B8B000B0A8A000B0B8B000B0A8A000909393005038
      2000000000000000000000000000000000000000000000000000A9C3A3005CBD
      6B009CF1C50062D07F0078E3A30088EBB70078EAAD0050BE660089B07E000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CE000000FF0000009C00000000000000
      00000000FF0000009C0000000000000000000000000000000000000000000000
      000000000000F7E7DE00FFFFFF00E7AD8400D6844200D6844A00D67B4200CE6B
      3900EFC6B500FFFFFF00F7D6C600D6734200CE632900CE632900D68C6B00EFEF
      F700E7D6C6000000000000000000000000000000000000000000A0989000D0D0
      D000C0C0C000C0B8C000C0B8B000B0B0B000C0B8B000B0B0B0009FA2A2005038
      20000000000000000000000000000000000000000000000000006AAA62008AE9
      B00060CE7A00629B51004DA44A0069DD930089F0BF0075ECB1004CBC600091B7
      8700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000CE000000FF0000009C000000
      FF0000009C000000000000000000000000000000000000000000000000000000
      000000000000F7E7DE00FFFFFF00EFB58C00DE8C5200DE8C5200D6844A00D67B
      4200D6734200EFC6B500FFFFFF00F7E7DE00D6734200CE5A2100DE946B00F7F7
      FF00EFD6CE000000000000000000000000000000000000000000A0989000C0C8
      C000C0C0C000C0B8B000B0B8B000B0A8A000B0B8B000B0A8A000909393005038
      20000000000000000000000000000000000000000000B4CEAF0055C26A005FD3
      7F0076AD6C0000000000000000006CAB62004CC364007AF1BA0071F0B6004CC3
      66008FBA86000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000CE000000FF000000
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000EFDECE00FFFFFF00F7CEB500DE945A00E79C6300E79C6B00DE8C
      5200D6844A00D6733900EFC6AD00FFFFFF00E7AD9400C6521800E7AD8C00F7FF
      FF00EFD6C6000000000000000000000000000000000000000000B0A0A000D0D0
      D000C0C0C000C0B8C000C0B8B000B0B0B000C0B8B000B0B0B0009FA2A2005038
      2000000000000000000000000000000000000000000070B66B0043C4590071B4
      6C000000000000000000000000000000000096C18F004BBA570063E79F0067F1
      B4004AC26200A0C79A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000CE000000FF0000009C000000
      CE0000009C000000000000000000000000000000000000000000000000000000
      000000000000EFDECE00FFFFFF00FFF7E700E7A56B00F7DEC600FFFFFF00EFB5
      9400DE844A00D67B3900E7AD8C00FFFFFF00EFBDA500CE6B3100F7E7DE00F7F7
      F700EFD6C6000000000000000000000000000000000000000000B0B0B000E0D8
      E000D0D0D000C0C8C000C0C0C000C0B8B000C0C0C000C0B8B000AEAAB1005038
      2000000000000000000000000000000000000000000076B9720072B96D000000
      000000000000000000000000000000000000000000000000000057B6590051DB
      83005EF5B50045BE5700ABD0A800000000000000000000000000000000000000
      00000000000000000000000000000000CE000000FF0000009C00000000000000
      00000000CE0000009C0000000000000000000000000000000000000000000000
      00000000000000000000F7E7E700FFFFFF00F7D6B500EFC69C00FFFFFF00FFFF
      F700EFCEB500EFCEAD00FFFFF700FFFFFF00DE946300E7B59400FFFFFF00EFDE
      D600000000000000000000000000000000000000000000000000B0B0B000E0E0
      E000E0E0E000D0D0D000C0C8C000C0C0C000C0C8C000C0C0C000AEB9B1005038
      2000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000076C0
      740041CB61005CF2AE0046BF5600B3D8B3000000000000000000000000000000
      0000000000000000CE000000FF000000FF0000009C0000000000000000000000
      0000000000000000CE0000009C00000000000000000000000000000000000000
      00000000000000000000EFD6CE00FFF7EF00FFFFFF00F7D6AD00F7CEAD00FFEF
      E700FFFFF700FFFFF700FFE7DE00EFB58C00EFBD9C00FFFFFF00F7EFEF00EFDE
      D600000000000000000000000000000000000000000000000000B0B0B000B0B0
      B000B0B0B000B0A0A000A0989000A09080009080700090807000908070009080
      7000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A7D3A7003CBB460051E78F0043BF5100BBDDBD0000000000000000000000
      00000000CE00319CFF000000FF0000009C000000000000000000000000000000
      000000000000000000000000CE0000009C000000000000000000000000000000
      0000000000000000000000000000EFD6CE00FFF7EF00FFFFFF00FFEFDE00F7D6
      B500F7D6AD00EFCEAD00EFCEAD00F7E7D600FFFFFF00F7EFEF00EFCEC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000060C164003ACD52004FBF540000000000000000000000
      000063639C000000CE0063639C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000CE0000000000000000000000
      000000000000000000000000000000000000EFD6CE00F7EFE700FFF7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700F7E7E700F7E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008ED18F0089D08A0000000000000000000000
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
      2800000048000000240000000100010000000000B00100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFC0FFFFFF000000
      FFFFFFFFFF003FFFFF000000FBFFFBFF7E001FFFFF000000F1FFF1FFFC000FC0
      0F000000F0FFF0FEFC000FC00F000000E07FF8FDF80007C00F000000E03FFC79
      F80007C00F000000C01FFE33F80007C00F000000C00FFF07F80007C00F000000
      8607FF8FF80007C00F0000008F03FF07F80007C00F0000009FC1FE33FC000FC0
      0F000000FFE0F879FC000FC00F000000FFF070FCFE001FFFFF000000FFFC71FF
      7F003FFFFF000000FFFE7FFFFFC0FFFFFF000000FFFFFFFFFFFFFFFFFF000000
      00000000000000000000000000000000000000000000}
  end
  object DsrData: TDataSource
    Left = 88
    Top = 208
  end
end
