object FrmEditarParticipantesTiposAti: TFrmEditarParticipantesTiposAti
  Left = 0
  Top = 0
  HelpContext = 495
  BorderStyle = bsDialog
  Caption = 'Participantes'
  ClientHeight = 517
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    625
    517)
  PixelsPerInch = 96
  TextHeight = 13
  object MSGroupHeader1: TMSGroupHeader
    Left = 8
    Top = 10
    Width = 614
    Height = 62
    Transparent = True
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Tipo da Atividade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    DesignSize = (
      614
      62)
    object Label2: TLabel
      Left = 1
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 529
      Top = 16
      Width = 44
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Promotor'
      ExplicitLeft = 333
    end
    object DBEdit1: TDBEdit
      Left = 0
      Top = 31
      Width = 505
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      DataField = 'DESTIPATI'
      DataSource = DsrTiposAtividades
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 529
      Top = 31
      Width = 81
      Height = 21
      Anchors = [akTop, akRight]
      Color = clBtnFace
      DataField = 'CAMPRO'
      DataSource = DsrTiposAtividades
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object MSGroupHeader2: TMSGroupHeader
    Left = 8
    Top = 79
    Width = 614
    Height = 433
    Transparent = True
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Participantes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    DesignSize = (
      614
      433)
    inline FmeGridSearch1: TFmeGridSearch
      Left = 1
      Top = 48
      Width = 504
      Height = 382
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 1
      ExplicitTop = 48
      ExplicitWidth = 504
      ExplicitHeight = 382
      inherited PnlSearchBar: TPanel
        Top = 358
        Width = 504
        ExplicitTop = 358
        ExplicitWidth = 504
        inherited SbnSearch: TSpeedButton
          Left = 478
          ExplicitLeft = 413
        end
        inherited SbnLocate: TSpeedButton
          Left = 593
          ExplicitLeft = 481
        end
        inherited EdtSearch: TEdit
          Width = 474
          ExplicitWidth = 474
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 504
        Height = 358
        DataSource = FmeDBDelButtons1.DataSource1
      end
    end
    inline FmeFKDiscipulados: TFmeFKSearch
      Left = 0
      Top = 23
      Width = 530
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = True
      ExplicitTop = 23
      ExplicitWidth = 530
      ExplicitHeight = 25
      inherited SpeedButton1: TSpeedButton
        Left = 506
        ExplicitLeft = 339
      end
      inherited EdtData: TDBEdit
        Width = 504
        DataField = 'NOMDIS'
        DataSource = FmeDBDelButtons1.DataSource1
        ExplicitWidth = 504
      end
    end
    inline FmeDBDelButtons1: TFmeDBDelButtons
      Left = 532
      Top = 22
      Width = 81
      Height = 171
      Anchors = [akTop, akRight]
      TabOrder = 2
      TabStop = True
      ExplicitLeft = 532
      ExplicitTop = 22
      inherited ImageList1: TImageList
        Bitmap = {
          494C010106000900400012001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
          0000000000000000000000000000000000009C6363006B313100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000E7CEC600E7CEC600DECEC600DEC6
          BD00DEC6BD00E7CEBD0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000009C6363009C636300BD636300BD6B6B006B313100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000EFCEC600EFE7DE00EFEFEF00E7E7EF00DED6D600D6CE
          CE00CECECE00C6C6BD00CEB5B500E7CEBD000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C63
          63009C636300C66B6B00D66B6B00D66B6B00C66B6B006B3131009C6363009C63
          63009C6363009C6363009C6363009C6363000000000000000000000000000000
          000000000000EFCEC600F7F7EF00F7FFFF00E7CEC600D6947300D68C6300D68C
          6300D68C6B00CEB5A500C6C6C600C6B5B500DEC6B50000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C63
          6300DE737300D6737300D66B7300D66B6B00C66B6B006B313100FFA5A500FFAD
          B500FFBDBD00FFC6C600FFC6C6009C6363000000000000000000000000000000
          0000EFCEBD00FFF7F700FFFFFF00DEA58400CE632900CE632900F7E7D600F7D6
          C600CE632900CE632900CE947B00C6C6C600CEBDBD00E7CEBD00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C63
          6300E7737B00DE737300DE737300DE737300CE6B73006B31310039C6630021CE
          630029CE630018CE5A00FFC6C6009C6363000000000000000000000000000000
          0000F7EFE700FFFFFF00E7AD9400CE5A2100CE632900CE6B3100EFBDA500E7B5
          9C00CE633100CE633100CE632100D69C7B00CECECE00DEC6BD00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C63
          6300E77B7B00E77B7B00DE7B7B00DE737B00D67373006B31310042C66B0031CE
          630031CE630021CE6300FFC6C6009C636300000000000000000000000000EFCE
          C600FFFFFF00F7E7DE00D6733900CE633100CE633100D6734200E7B59C00E7A5
          8400CE632900CE6B3100CE633100CE6B3100D6C6BD00D6D6D600E7CEBD000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C63
          6300EF848400E77B8400E77B7B00E7848400D67373006B31310039C6630029CE
          630029CE630021CE5A00FFC6C6009C636300000000000000000000000000EFDE
          D600FFFFFF00EFBD9C00D6733900D6734200CE6B3100D67B4A00FFFFF700FFF7
          EF00CE6B3900CE632900CE6B3100CE632900D6A58400DEE7E700E7CEC6000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C63
          6300F7848C00EF848400EF949400FFDEDE00DE8C8C006B313100BDE7AD006BDE
          8C005AD6840042D67300FFC6C6009C636300000000000000000000000000F7E7
          DE00FFFFFF00E7AD8400D6844200D6844A00D67B4200CE6B3900EFC6B500FFFF
          FF00F7D6C600D6734200CE632900CE632900D68C6B00EFEFF700E7D6C6000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C63
          6300F78C8C00EF848400F79C9C00FFDEDE00DE8C8C006B313100FFF7DE00FFFF
          E700FFFFDE00EFFFD600FFC6C6009C636300000000000000000000000000F7E7
          DE00FFFFFF00EFB58C00DE8C5200DE8C5200D6844A00D67B4200D6734200EFC6
          B500FFFFFF00F7E7DE00D6734200CE5A2100DE946B00F7F7FF00EFD6CE000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C63
          6300FF949400F78C8C00F78C8C00F78C8C00DE7B84006B313100FFF7D600FFFF
          DE00FFFFDE00FFFFE700FFC6C6009C636300000000000000000000000000EFDE
          CE00FFFFFF00F7CEB500DE945A00E79C6300E79C6B00DE8C5200D6844A00D673
          3900EFC6AD00FFFFFF00E7AD9400C6521800E7AD8C00F7FFFF00EFD6C6000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C63
          6300FF949C00FF949400FF949400FF949400E78484006B313100FFF7D600FFFF
          DE00FFFFDE00FFFFDE00FFC6C6009C636300000000000000000000000000EFDE
          CE00FFFFFF00FFF7E700E7A56B00F7DEC600FFFFFF00EFB59400DE844A00D67B
          3900E7AD8C00FFFFFF00EFBDA500CE6B3100F7E7DE00F7F7F700EFD6C6000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C63
          6300FF9C9C00FF949C00FF949400FF949C00E78C8C006B313100FFF7D600FFFF
          DE00FFFFDE00FFFFDE00FFC6C6009C6363000000000000000000000000000000
          0000F7E7E700FFFFFF00F7D6B500EFC69C00FFFFFF00FFFFF700EFCEB500EFCE
          AD00FFFFF700FFFFFF00DE946300E7B59400FFFFFF00EFDED600000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C63
          6300FF9CA500FF9C9C00FF9C9C00FF9C9C00E78C8C006B313100FFF7D600FFFF
          DE00FFFFDE00FFFFDE00FFC6C6009C6363000000000000000000000000000000
          0000EFD6CE00FFF7EF00FFFFFF00F7D6AD00F7CEAD00FFEFE700FFFFF700FFFF
          F700FFE7DE00EFB58C00EFBD9C00FFFFFF00F7EFEF00EFDED600000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C63
          63009C636300EF8C8C00FF9C9C00FF9C9C00EF8C94006B313100FFF7D600FFFF
          DE00FFFFDE00FFFFDE00FFC6C6009C6363000000000000000000000000000000
          000000000000EFD6CE00FFF7EF00FFFFFF00FFEFDE00F7D6B500F7D6AD00EFCE
          AD00EFCEAD00F7E7D600FFFFFF00F7EFEF00EFCEC60000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000009C636300B5737300D6848400DE8C8C006B3131009C6363009C63
          63009C6363009C6363009C6363009C6363000000000000000000000000000000
          00000000000000000000EFD6CE00F7EFE700FFF7F700FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFF7F700F7E7E700F7E7E7000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009C6363009C6363006B313100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000EFD6CE00EFD6CE00EFDECE00EFD6
          CE00EFD6CE00EFD6CE0000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000003100000029
          0000002100000021000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000420000298C
          4A00217339000018000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000004A0000319C
          5200298442000021000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000634239005A2929005A2929005A2929006342390000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000063000000630000005A0000005A000042C6
          6B0039AD5A000031000000290000002900000029000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006331
          3100395A5A001084A50010738400105A6300393139005A292900000000000000
          000000000000000000000000000000009C000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000063000000630000005A000000007B0000007B0000007B000000
          7B00002900000029000000290000000000000000000000000000000000000000
          0000000000000000000000000000187B180073FFA5006BFFA50063FF9C005AF7
          940052DE840042BD6B0039AD5A0039A55A000031000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007352
          4A0000CEFF0000BDE700009CBD0000738C0000636B005A292900000000000000
          000000000000000000003131CE000000FF0000009C0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000007B000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF00003100000000000000000000633131005A2929005A29
          29005A2929005A2929005A2929003994390073E7940073E7940073E7940073FF
          AD0063FF9C0039C6630031B5520031AD5200004A000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008C63
          5A0018D6FF0000CEFF0000ADD6000084A500006B73005A292900000000000000
          000000000000000000003131CE00319CFF000000FF0000009C00000000000000
          000000000000000000000000000000000000000000000000FF00000000000000
          0000000000000000000000000000633131005A2929005A2929005A2929005A29
          29005A29290000007B000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF00004A000000000000000000005A292900E7DED600DECE
          C600DECEC600DECEC600DECEC60063A5630063A5630063A5630063A5630094FF
          B50084FFAD00087308000063000000630000005A000000000000000000006B4A
          42005A2929005A2929005A292900B59C9C00633131005A2929005A2929009473
          6B0039DEFF0018D6FF0000C6F7000094BD0000738C005A292900000000000000
          00000000000000000000000000003131CE000063FF000000CE00000000000000
          0000000000000000000000000000000000000000FF0000000000000000000000
          00000000000000000000000000005A292900E7DED600DECEC600DECEC600DECE
          C600DECEC60000007B0000007B0000007B0000007B0000007B0000007B000873
          08000063000000630000005A0000000000000000000063313100FFFFEF00EFE7
          D600EFE7D600EFE7D600EFE7D600EFE7D600EFE7D600EFE7D60073AD7300A5FF
          C60094FFB500218421005A29290000000000000000000000000000000000EFE7
          E700FFFFF700EFE7DE00DED6CE00D6C6BD00CEBDB500CEBDB500CEBDB500A584
          84004ADEFF0031DEFF0000CEFF0000ADD600008CA5005A292900000000000000
          0000000000000000000000000000000000000000CE000000FF0000009C000000
          00000000000000000000000000000000FF0000009C0000000000000000000000
          000000000000000000000000000063313100FFFFEF00EFE7D600EFE7D600EFE7
          D600EFE7D600EFE7D600EFE7D600EFE7D600EFE7D600EFE7D600EFE7D600EFE7
          D6005A292900000000000000000000000000000000006B423900FFFFF700FFFF
          F700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE70073AD730094EF
          AD0084E7A500318431005A29290000000000000000000000000000000000734A
          4200FFFFF700FFFFF700EFEFE700E7DED600DECEC600DECEC600DECEC600A58C
          8C008CADBD00848C94006373730042525200315A63005A292900000000000000
          000000000000000000000000000000000000000000000000CE000000FF000000
          9C0000000000000000000000FF0000009C000000000000000000000000000000
          00000000000000000000000000006B423900FFFFF700FFFFF700F7EFE700F7EF
          E700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700F7EF
          E7005A2929000000000000000000000000000000000073524A00FFFFF700FFFF
          F700EFCE8400D6840000D6840000D6840000D6840000D684000073AD730063A5
          6300529C5200318431005A29290000000000000000000000000000000000845A
          5200FFFFF700FFFFF700FFFFF700F7EFE700EFE7DE00EFE7DE00EFE7DE00AD94
          9400A5949C0084ADBD005A9CAD00297B9400523139005A292900000000000000
          00000000000000000000000000000000000000000000000000000000CE000000
          FF0000009C000000FF0000009C00000000000000000000000000000000000000
          000000000000000000000000000073524A00FFFFF700FFFFF700EFCE8400D684
          0000D6840000D6840000D6840000D684000073AD730063A56300529C52003184
          31005A2929000000000000000000000000000000000084525200FFFFF700FFFF
          F700FFFFEF00F7E7BD00F7DEB500F7E7BD00F7E7BD00F7DEB500F7F7DE00EFEF
          E700E7DED600DECEC6005A292900000000000000000000000000000000008C63
          5A00FFFFF700FFFFF700FFFFF700EFCE8C00D6840000D6840000D6840000D684
          0000D6840000A5AD730042D6F70029B5D600395A63005A292900000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          CE000000FF0000009C0000000000000000000000000000000000000000000000
          000000000000000000000000000084525200FFFFF700FFFFF700FFFFEF00F7E7
          BD00F7DEB500F7E7BD00F7E7BD00F7DEB500F7F7DE00EFEFE700E7DED600DECE
          C6005A2929000000000000000000000000000000000084525200FFFFF700F7F7
          DE00F7DEB500F7DEB500F7DEB500F7DEB500F7DEB500F7DEB500F7DEB500EFDE
          B500EFE7D600E7D6CE005A292900000000000000000000000000000000009C7B
          7300FFFFF700FFFFF700FFFFF700FFF7E700F7E7BD00F7E7BD00F7E7BD00E7C6
          9C00BD946B00AD8C84009C736B00845A52006331390000000000000000000000
          00000000000000000000000000000000000000000000000000000000CE000000
          FF0000009C000000CE0000009C00000000000000000000000000000000000000
          000000000000000000000000000084525200FFFFF700F7F7DE00F7DEB500F7DE
          B500F7DEB500F7DEB500F7DEB500F7DEB500F7DEB500EFDEB500EFE7D600E7D6
          CE005A292900000000000000000000000000000000008C635A00FFFFF700D673
          1000CE630000CE630000CE630000CE630000CE630000CE630000CE630000D673
          1000FFFFF700EFE7D6005A29290000000000000000000000000000000000F7EF
          EF00FFFFF700FFFFF700FFEFDE00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DE
          BD00F7D6B500E7CEAD00DEC6A500D6C6BD005A29290000000000000000000000
          000000000000000000000000000000000000000000000000CE000000FF000000
          9C0000000000000000000000CE0000009C000000000000000000000000000000
          00000000000000000000000000008C635A00FFFFF700D6731000CE630000CE63
          0000CE630000CE630000CE630000CE630000CE630000D6731000FFFFF700EFE7
          D6005A29290000000000000000000000000000000000946B6300FFFFFF00FFFF
          FF00FFFFFF00FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
          F700FFFFF700FFFFF7005A292900000000000000000000000000000000009473
          6B00FFFFF700FFFFF700D67B1000CE630000CE630000CE630000CE630000CE63
          0000CE630000CE630000D6731000DED6CE00D6C6C60000000000000000000000
          00000000000000000000000000000000CE000000FF000000FF0000009C000000
          00000000000000000000000000000000CE0000009C0000000000000000000000
          0000000000000000000000000000946B6300FFFFFF00FFFFFF00FFFFFF00FFFF
          F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
          F7005A2929000000000000000000000000000000000094736300E7DED600E7DE
          D600E7DED600E7DED600E7DED600E7DED600E7DED600E7DED600E7DED600DED6
          D600DED6CE00DECEC6005A292900000000000000000000000000000000009C73
          6B00FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
          F700FFFFF700FFFFF700FFFFEF00EFE7DE006B42390000000000000000000000
          000000000000000000000000CE00319CFF000000FF0000009C00000000000000
          0000000000000000000000000000000000000000CE0000009C00000000000000
          000000000000000000000000000094736300E7DED600E7DED600E7DED600E7DE
          D600E7DED600E7DED600E7DED600E7DED600E7DED600DED6D600DED6CE00DECE
          C6005A2929000000000000000000000000000000000094737300947373009473
          730094737300947373009473730094737300947373009473730094736300946B
          63008C635A0073524A00734A4200000000000000000000000000000000009C7B
          7300EFE7DE00EFE7DE00E7DED600E7D6D600EFEFE700FFFFF700EFE7DE00E7D6
          D600DED6CE00EFE7E700FFFFF700DED6CE005A29290000000000000000000000
          0000000000000000000063639C000000CE0063639C0000000000000000000000
          00000000000000000000000000000000000000000000000000000000CE000000
          0000000000000000000000000000947373009473730094737300947373009473
          73009473730094737300947373009473730094736300946B63008C635A007352
          4A00734A42000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000A584
          8400F7EFEF009C736B0094736B00946B63009C7B7300F7EFEF008C6B63008C6B
          63008C635A00946B6300EFEFE700633131006331310000000000000000000000
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
          000000000000000000000000000000000000424D3E000000000000003E000000
          2800000048000000240000000100010000000000B00100000000000000000000
          000000000000000000000000FFFFFF00FFFFFFFFF000000000000000FF3FFF03
          F000000000000000F83FFC00F000000000000000E000F8007000000000000000
          E000F0003000000000000000E000F0003000000000000000E000E00010000000
          00000000E000E0001000000000000000E000E0001000000000000000E000E000
          1000000000000000E000E0001000000000000000E000E0001000000000000000
          E000F0003000000000000000E000F0003000000000000000E000F80070000000
          00000000F800FC00F000000000000000FE3FFF03F000000000000000FFFFFFFF
          F000000000000000FFC3FFFFFFFFFFFFFF000000FFC3FFFFFFFFFFFFFF000000
          FFC3FFF07FFFFFFFFF000000FE007FE03EFFDFF801000000FE007FE03C7FFFF8
          0100000080007FE03C3FBE0001000000800060003E3F7E00010000008001E000
          3F1E7E00070000008001E0003F8CFE00070000008001E0003FC1FE0007000000
          8001E0003FE3FE00070000008001E0007FC1FE00070000008001E0007F8CFE00
          070000008001E0007E1E7E00070000008001E0007C3F3E00070000008001E000
          7C7FDE0007000000FFFFE0007FFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000
          00000000000000000000000000000000000000000000}
      end
      inherited ActionList1: TActionList
        inherited DataSetInsert1: TDataSetInsert
          Enabled = False
        end
        inherited DataSetPost1: TDataSetPost
          Enabled = False
        end
        inherited DataSetCancel1: TDataSetCancel
          Enabled = False
        end
        inherited DataSetDelete1: TDataSetDelete
          Enabled = False
        end
      end
      inherited DataSource1: TDataSource
        DataSet = CdsParticipantes
      end
    end
  end
  object CdsTiposAtividades: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codtipati'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'DspTipoAtividade'
    Left = 64
    Top = 160
  end
  object CdsParticipantes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codtipati'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'DspParticipantesTipoAtividade'
    AfterOpen = CdsParticipantesAfterOpen
    AfterInsert = CdsParticipantesAfterInsert
    BeforePost = CdsParticipantesBeforePost
    AfterPost = CdsParticipantesAfterPost
    BeforeDelete = CdsParticipantesBeforeDelete
    AfterDelete = CdsParticipantesAfterPost
    OnReconcileError = CdsParticipantesReconcileError
    Left = 168
    Top = 160
  end
  object DsrTiposAtividades: TDataSource
    DataSet = CdsTiposAtividades
    Left = 64
    Top = 216
  end
end
