inherited FrmWizardNovoUsuario: TFrmWizardNovoUsuario
  Caption = 'FrmWizardNovoUsuario'
  ExplicitWidth = 627
  ExplicitHeight = 532
  PixelsPerInch = 96
  TextHeight = 13
  inherited PcWizard: TPageControl
    inherited TabSheet1: TTabSheet
      inherited Label1: TLabel
        Caption = 
          'Bem-vindo ao assistente de cria'#231#227'o de usu'#225'rios dos aplicativos C' +
          'osmos. Este assistente ir'#225' auxiliar-lhe no processo de cria'#231#227'o d' +
          'e um novo usu'#225'rio. '
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      DesignSize = (
        613
        375)
      object MSGroupHeader1: TMSGroupHeader
        Left = 12
        Top = 6
        Width = 598
        Height = 193
        Transparent = True
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Identifica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        DesignSize = (
          598
          193)
        object Label2: TLabel
          Left = 4
          Top = 24
          Width = 27
          Height = 13
          Caption = 'Aluno'
        end
        object Label3: TLabel
          Left = 4
          Top = 73
          Width = 106
          Height = 13
          Caption = 'Login (deve ser '#250'nico)'
        end
        object Label5: TLabel
          Left = 4
          Top = 122
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object Label6: TLabel
          Left = 326
          Top = 122
          Width = 60
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Confirma'#231#227'o'
          ExplicitLeft = 204
        end
        object Label7: TLabel
          Left = 326
          Top = 73
          Width = 29
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Grupo'
          ExplicitLeft = 204
        end
        inline FmeFkAluno: TFmeFKSearch
          Left = 4
          Top = 38
          Width = 583
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = True
          ExplicitLeft = 4
          ExplicitTop = 38
          ExplicitWidth = 583
          ExplicitHeight = 25
          inherited SpeedButton1: TSpeedButton
            Left = 559
            ExplicitLeft = 339
          end
          inherited EdtData: TDBEdit
            Width = 557
            DataField = 'NOMCAD'
            DataSource = DsrUsuarios
            ExplicitWidth = 557
          end
        end
        object DBEdit1: TDBEdit
          Left = 4
          Top = 92
          Width = 303
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecLowerCase
          DataField = 'LOGUSU'
          DataSource = DsrUsuarios
          TabOrder = 1
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit2: TDBEdit
          Left = 4
          Top = 141
          Width = 303
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecLowerCase
          DataField = 'PASSWRD'
          DataSource = DsrUsuarios
          PasswordChar = '*'
          TabOrder = 3
          OnKeyPress = DBEdit1KeyPress
        end
        object EdtConfirmPass: TEdit
          Left = 326
          Top = 140
          Width = 181
          Height = 21
          Anchors = [akTop, akRight]
          PasswordChar = '*'
          TabOrder = 4
        end
        object CBXRoles: TDBComboBox
          Left = 326
          Top = 92
          Width = 181
          Height = 22
          Style = csOwnerDrawFixed
          Anchors = [akTop, akRight]
          DataField = 'ROLENAME'
          DataSource = DsrUsuarios
          TabOrder = 2
        end
      end
      object MSGroupHeader2: TMSGroupHeader
        Left = 16
        Top = 205
        Width = 594
        Height = 116
        Transparent = True
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informa'#231#245'es Adicionais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object DBCheckBox1: TDBCheckBox
          Left = 0
          Top = 24
          Width = 82
          Height = 17
          Caption = 'Usu'#225'rio ativo'
          DataField = 'INDATI'
          DataSource = DsrUsuarios
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 0
          Top = 53
          Width = 153
          Height = 17
          Caption = 'Usu'#225'rio '#233' um administrador'
          DataField = 'INDADM'
          DataSource = DsrUsuarios
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      DesignSize = (
        613
        375)
      object MSGroupHeader3: TMSGroupHeader
        Left = 12
        Top = 6
        Width = 600
        Height = 262
        Transparent = True
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Identifica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        DesignSize = (
          600
          262)
        object Label4: TLabel
          Left = 4
          Top = 19
          Width = 23
          Height = 13
          Caption = 'Foco'
        end
        object SpeedButton1: TSpeedButton
          Left = 575
          Top = 60
          Width = 23
          Height = 22
          Hint = 
            'Adicionar Foco|Adiciona um novo foco que ser'#225' acessado pelo usu'#225 +
            'rio'
          Anchors = [akTop, akRight]
          Glyph.Data = {
            CA020000424DCA02000000000000420000002800000012000000120000000100
            1000030000008802000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CC000
            A000800080001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C00012526C41D60001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C2001662A052280001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C80018001600160010837A72EC000A000A000A0001F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7CE30DEE53ED53EC4FCB4B6A43E836A72E872EC0001F7C1F7C
            CC18AB14AB14AB14AB14AB14471E8E4B8E4B8E4BEE57EC4F0733C62AA62A2001
            1F7C1F7CAB147C6B3B633B633B633B638C328C328C328C32F25BF057C1058001
            800160011F7C1F7CCC18FF779D6B9D6B9D6B9D6B9D6B9D6B9D6BAE3AF463F25B
            0412AB141F7C1F7C1F7C1F7C0D1DFF7BFF7BBE73BE73BE73BE73BE73BE73AE3A
            B2579053061AAB141F7C1F7C1F7C1F7C4E25FF7BFF7B3D431A021A021A021A02
            1A02AE3A8C326A2A061AAB141F7C1F7C1F7C1F7C5029FF7BFF7BFF779E5F7E5B
            9E5F9E5F7E5BDE6FBD737C6B3B63AB141F7C1F7C1F7C1F7C5029FF7BDE6F7E5B
            7E5B7E5B7E5B7E5B7E5B7E5B7D5B9D6B5C67AB141F7C1F7C1F7C1F7C912DFF7B
            DA099901990199019901990199019901DA09FF7B9D6BAB141F7C1F7C1F7C1F7C
            B231FF7FFF7FFF7FFF7BFF7BFF7BFF7BFF7BFF7BFF7BFF7BFF7BAB141F7C1F7C
            1F7C1F7CD2317C6B7C6B7C6B7C6B7C6B7C6B7C6B7C6B7C6B5B6B5B673B63AB14
            1F7C1F7C1F7C1F7CD239D239D239D239D239D239D239D239D239D231B231912D
            4E252E211F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 575
          Top = 88
          Width = 23
          Height = 22
          Hint = 'Excluir|Exclui o foco selecionado na grade'
          Anchors = [akTop, akRight]
          Glyph.Data = {
            7E030000424D7E030000000000003600000028000000120000000F0000000100
            18000000000048030000C40E0000C40E00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FF006000006000005F0000007F00007F00007F00007F002F0000
            2F00002F00FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
            007F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF003000FF00FF
            0000FF00FF6030305F2F2F5F2F2F5F2F2F5F2F2F5F2F2F00007F0000FF0000FF
            0000FF0000FF0000FF0000FF0000FF0000FF004F00FF00FF0000FF00FF5F2F2F
            E0DFD0DFCFC0DFCFC0DFCFC0DFCFC000007F00007F00007F00007F00007F0000
            7F0F700F006000006000005F00FF00FF0000FF00FF603030FFFFEFEFE0D0EFE0
            D0EFE0D0EFE0D0EFE0D0EFE0D0EFE0D0EFE0D0EFE0D0EFE0D0EFE0D05F2F2FFF
            00FFFF00FFFF00FF0000FF00FF6F403FFFFFF0FFFFF0F0EFE0F0EFE0F0EFE0F0
            EFE0F0EFE0F0EFE0F0EFE0F0EFE0F0EFE0F0EFE05F2F2FFF00FFFF00FFFF00FF
            0000FF00FF70504FFFFFF0FFFFF0EFCF80D08000D08000D08000D08000D08000
            70AF7060A060509F503080305F2F2FFF00FFFF00FFFF00FF0000FF00FF805050
            FFFFF0FFFFF0FFFFEFF0E0BFF0DFB0F0E0BFF0E0BFF0DFB0F0F0DFEFEFE0E0DF
            D0DFCFC05F2F2FFF00FFFF00FFFF00FF0000FF00FF805050FFFFF0F0F0DFF0DF
            B0F0DFB0F0DFB0F0DFB0F0DFB0F0DFB0F0DFB0EFDFB0EFE0D0E0D0CF5F2F2FFF
            00FFFF00FFFF00FF0000FF00FF8F605FFFFFF0D07010CF6000CF6000CF6000CF
            6000CF6000CF6000CF6000D07010FFFFF0EFE0D05F2F2FFF00FFFF00FFFF00FF
            0000FF00FF906F60FFFFFFFFFFFFFFFFFFFFFFF0FFFFF0FFFFF0FFFFF0FFFFF0
            FFFFF0FFFFF0FFFFF0FFFFF05F2F2FFF00FFFF00FFFF00FF0000FF00FF907060
            E0DFD0E0DFD0E0DFD0E0DFD0E0DFD0E0DFD0E0DFD0E0DFD0E0DFD0DFD0D0DFD0
            CFDFCFC05F2F2FFF00FFFF00FFFF00FF0000FF00FF9070709070709070709070
            70907070907070907070907070907070907060906F608F605F70504F704F40FF
            00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            0000}
          OnClick = SpeedButton2Click
        end
        inline FmeFkFocos: TFmeFKSearch
          Left = 2
          Top = 33
          Width = 567
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = True
          ExplicitLeft = 2
          ExplicitTop = 33
          ExplicitWidth = 567
          ExplicitHeight = 25
          inherited SpeedButton1: TSpeedButton
            Left = 543
            ExplicitLeft = 339
          end
          inherited EdtData: TDBEdit
            Width = 541
            DataField = 'NOMFOC'
            DataSource = DsrFocos
            ExplicitWidth = 541
          end
        end
        inline FmeGridSearch1: TFmeGridSearch
          Left = 1
          Top = 57
          Width = 571
          Height = 150
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TabStop = True
          ExplicitLeft = 1
          ExplicitTop = 57
          ExplicitWidth = 571
          ExplicitHeight = 150
          inherited PnlSearchBar: TPanel
            Top = 126
            Width = 571
            ExplicitTop = 126
            ExplicitWidth = 571
            inherited SbnSearch: TSpeedButton
              Left = 545
              ExplicitLeft = 413
            end
            inherited SbnLocate: TSpeedButton
              Left = 545
              ExplicitLeft = 545
            end
            inherited EdtSearch: TEdit
              Width = 541
              ExplicitWidth = 541
            end
          end
          inherited DBGrid1: TDBGrid
            Width = 571
            Height = 126
            DataSource = DsrFocos
          end
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 2
          Top = 215
          Width = 567
          Height = 47
          Anchors = [akLeft, akRight, akBottom]
          Caption = 'Tipo de Permiss'#227'o'
          Columns = 2
          DataField = 'TIPPER'
          DataSource = DsrFocos
          Items.Strings = (
            'Acesso com permiss'#227'o de escrita'
            'Acesso apenas para leitura')
          TabOrder = 2
          Values.Strings = (
            'E'
            'L')
        end
      end
      object MSGroupHeader4: TMSGroupHeader
        Left = 15
        Top = 283
        Width = 565
        Height = 90
        Transparent = True
        Anchors = [akLeft, akRight, akBottom]
        Caption = 'M'#243'dulos Acessados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object DBCheckBox3: TDBCheckBox
          Left = 3
          Top = 31
          Width = 174
          Height = 17
          Caption = 'Cosmos Gestor de Usu'#225'rios'
          DataField = 'INDUSU'
          DataSource = DsrFocos
          Enabled = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 3
          Top = 63
          Width = 174
          Height = 17
          Caption = 'Cosmos Gestor de Secretarias'
          DataField = 'INDSEC'
          DataSource = DsrFocos
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 212
          Top = 31
          Width = 150
          Height = 17
          Caption = 'Cosmos Gestor Financeiro'
          DataField = 'INDFIN'
          DataSource = DsrFocos
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 212
          Top = 63
          Width = 150
          Height = 17
          Caption = 'Cosmos Gestor de Focos'
          DataField = 'INDFOC'
          DataSource = DsrFocos
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 386
          Top = 31
          Width = 174
          Height = 17
          Caption = 'Cosmos Gestor de Confer'#234'ncias'
          DataField = 'INDCON'
          DataSource = DsrFocos
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      object MmoResumo: TMemo
        Left = 0
        Top = 0
        Width = 613
        Height = 375
        Align = alClient
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  inherited Panel1: TPanel
    inherited LblHelp: TLabel
      Left = 8
      Top = 23
      ExplicitLeft = 8
      ExplicitTop = 23
    end
  end
  inherited ActionList1: TActionList
    Left = 108
    Top = 5
  end
  inherited ImageList1: TImageList
    Left = 164
    Top = 4
    Bitmap = {
      494C010103000400580012001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000007F5B0000CF980800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF9808007F5B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFCEC600EFE7DE00EFEFEF00E7E7
      EF00DED6D600D6CECE00CECECE00C6C6BD00CEB5B500E7CEBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F5B0000CF9808007F5B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F5B0000CF9808007F5B
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFCEC600F7F7EF00F7FFFF00E7CEC600D694
      7300D68C6300D68C6300D68C6B00CEB5A500C6C6C600C6B5B500DEC6B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F5B0000CF980800F6CB97007F5B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F5B0000F6CB9700CF98
      08007F5B00000000000000000000000000000000000000000000000000000000
      00000000000000000000EFCEBD00FFF7F700FFFFFF00DEA58400CE632900CE63
      2900F7E7D600F7D6C600CE632900CE632900CE947B00C6C6C600CEBDBD00E7CE
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F5B0000CF980800F6CB9700F6CB97007F5B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F5B0000F6CB9700F6CB
      9700CF9808007F5B000000000000000000000000000000000000000000000000
      00000000000000000000F7EFE700FFFFFF00E7AD9400CE5A2100CE632900CE6B
      3100EFBDA500E7B59C00CE633100CE633100CE632100D69C7B00CECECE00DEC6
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F5B0000CF980800F6CB9700F6CB9700F6CB97007F5B00007F5B00007F5B
      00007F5B0000CF98080000000000000000000000000000000000000000000000
      000000000000CF9808007F5B00007F5B00007F5B00007F5B0000F6CB9700F6CB
      9700F6CB9700CF9808007F5B0000000000000000000000000000000000000000
      000000000000EFCEC600FFFFFF00F7E7DE00D6733900CE633100CE633100D673
      4200E7B59C00E7A58400CE632900CE6B3100CE633100CE6B3100D6C6BD00D6D6
      D600E7CEBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F5B
      0000CF980800F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB
      9700F6CB97007F5B000000000000000000000000000000000000000000000000
      0000000000007F5B0000F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB
      9700F6CB9700F6CB9700CF9808007F5B00000000000000000000000000000000
      000000000000EFDED600FFFFFF00EFBD9C00D6733900D6734200CE6B3100D67B
      4A00FFFFF700FFF7EF00CE6B3900CE632900CE6B3100CE632900D6A58400DEE7
      E700E7CEC6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F5B0000CF98
      0800F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB
      9700F6CB97007F5B000000000000000000000000000000000000000000000000
      0000000000007F5B0000F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB
      9700F6CB9700F6CB9700F6CB9700CF9808007F5B000000000000000000000000
      000000000000F7E7DE00FFFFFF00E7AD8400D6844200D6844A00D67B4200CE6B
      3900EFC6B500FFFFFF00F7D6C600D6734200CE632900CE632900D68C6B00EFEF
      F700E7D6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CF980800FFF3
      D500F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB
      9700F6CB97007F5B000000000000000000000000000000000000000000000000
      0000000000007F5B0000F6CB9700F6CB9700F6CB9700F6CB9700F6CB9700F6CB
      9700F6CB9700F6CB9700F6CB9700FFF3D500CF98080000000000000000000000
      000000000000F7E7DE00FFFFFF00EFB58C00DE8C5200DE8C5200D6844A00D67B
      4200D6734200EFC6B500FFFFFF00F7E7DE00D6734200CE5A2100DE946B00F7F7
      FF00EFD6CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CF98
      0800FFF3D500F6CB9700F6CB9700F6CB9700FFF3D500FFF3D500FFF3D500FFF3
      D500FFF3D5007F5B000000000000000000000000000000000000000000000000
      0000000000007F5B0000FFF3D500FFF3D500FFF3D500FFF3D500FFF3D500F6CB
      9700F6CB9700F6CB9700FFF3D500CF9808000000000000000000000000000000
      000000000000EFDECE00FFFFFF00F7CEB500DE945A00E79C6300E79C6B00DE8C
      5200D6844A00D6733900EFC6AD00FFFFFF00E7AD9400C6521800E7AD8C00F7FF
      FF00EFD6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CF980800FFF3D500F6CB9700F6CB9700FFF3D5007F5B0000CF980800CF98
      0800CF980800CF98080000000000000000000000000000000000000000000000
      000000000000CF980800CF980800CF980800CF9808007F5B0000FFF3D500F6CB
      9700F6CB9700FFF3D500CF980800000000000000000000000000000000000000
      000000000000EFDECE00FFFFFF00FFF7E700E7A56B00F7DEC600FFFFFF00EFB5
      9400DE844A00D67B3900E7AD8C00FFFFFF00EFBDA500CE6B3100F7E7DE00F7F7
      F700EFD6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CF980800FFF3D500F6CB9700FFF3D5007F5B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F5B0000FFF3D500F6CB
      9700FFF3D500CF98080000000000000000000000000000000000000000000000
      00000000000000000000F7E7E700FFFFFF00F7D6B500EFC69C00FFFFFF00FFFF
      F700EFCEB500EFCEAD00FFFFF700FFFFFF00DE946300E7B59400FFFFFF00EFDE
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CF980800FFF3D500FFF3D5007F5B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F5B0000FFF3D500FFF3
      D500CF9808000000000000000000000000000000000000000000000000000000
      00000000000000000000EFD6CE00FFF7EF00FFFFFF00F7D6AD00F7CEAD00FFEF
      E700FFFFF700FFFFF700FFE7DE00EFB58C00EFBD9C00FFFFFF00F7EFEF00EFDE
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CF980800FFF3D5007F5B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F5B0000FFF3D500CF98
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFD6CE00FFF7EF00FFFFFF00FFEFDE00F7D6
      B500F7D6AD00EFCEAD00EFCEAD00F7E7D600FFFFFF00F7EFEF00EFCEC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CF9808007F5B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F5B0000CF9808000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFD6CE00F7EFE700FFF7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700F7E7E700F7E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      FFC0FC0000000000FF3FFF9FFF003C0000000000FE3FFF8FFE001C0000000000
      FC3FFF87FC000C0000000000F83FFF83FC000C0000000000F003F801F8000400
      00000000E003F800F800040000000000C003F8007800040000000000C003F800
      7800040000000000E003F800F800040000000000F003F801F800040000000000
      F83FFF83FC000C0000000000FC3FFF87FC000C0000000000FE3FFF8FFE001C00
      00000000FF3FFF9FFF003C0000000000FFFFFFFFFFC0FC0000000000FFFFFFFF
      FFFFFC000000000000000000000000000000000000000000000000000000}
  end
  inherited WzCosmos: TWizard
    Pages = <
      item
        Title = 'Bem-vindo!'
        Description = 
          'Bem-vindo ao assistente de cria'#231#227'o de novos usu'#225'rios dos aplicat' +
          'ivos Cosmos'
        Visible = True
      end
      item
        Title = 'Dados do novo usu'#225'rio'
        Description = 'Informe os dados do novo usu'#225'rio dos aplicativos Cosmos'
        Visible = True
      end
      item
        Title = 'Focos acess'#237'veis'
        Description = 'Informe quais focos poder'#227'o ser acessados pelo novo usu'#225'rio'
        Visible = True
      end
      item
        Title = 'Resumo do assistente'
        Description = 
          'Verifique se os dados fornecidos para a cria'#231#227'o do novo usu'#225'rio ' +
          'est'#227'o corretos.'
        Visible = True
      end>
    Title = 'Novo Usu'#225'rio'
    OnBeforeNextPage = WzCosmosBeforeNextPage
    Left = 59
    Top = 4
  end
  object CdsUsuario: TClientDataSet
    PersistDataPacket.Data = {
      040100009619E0BD0100000018000000090000000000030000000401064C4F47
      5553550100490000000100055749445448020002001F00075041535357524402
      0049000400010005574944544802000200000106434F44434144040001000000
      000006494E44415449010049000000010005574944544802000200010006494E
      4441444D0100490000000100055749445448020002000100064E4F4D43414401
      0049000000010005574944544802000200460008524F4C454E414D4501004900
      0400010005574944544802000200140006494E44424C4F010049000000010005
      574944544802000200010006494E4450524F0100490000000100055749445448
      0200020001000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'LOGUSU'
        DataType = ftString
        Size = 31
      end
      item
        Name = 'PASSWRD'
        Attributes = [faRequired]
        DataType = ftString
        Size = 256
      end
      item
        Name = 'CODCAD'
        DataType = ftInteger
      end
      item
        Name = 'INDATI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'INDADM'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOMCAD'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'ROLENAME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INDBLO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'INDPRO'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterInsert = CdsUsuarioAfterInsert
    Left = 280
    Top = 184
  end
  object CdsFocos: TClientDataSet
    PersistDataPacket.Data = {
      2B0100009619E0BD01000000180000000B0000000000030000002B0106434F44
      475255040001000000000006434F44464F430400010000000000064E4F4D464F
      430100490000000100055749445448020002004600064E4F4D47525501004900
      0000010005574944544802000200320006534947464F43010049000000010005
      5749445448020002000400065449505045520100490004000100055749445448
      02000200010006494E4453454301004900000001000557494454480200020001
      0006494E44434F4E010049000000010005574944544802000200010006494E44
      46494E010049000000010005574944544802000200010006494E44464F430100
      49000000010005574944544802000200010006494E4455535501004900000001
      000557494454480200020001000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODGRU'
        DataType = ftInteger
      end
      item
        Name = 'CODFOC'
        DataType = ftInteger
      end
      item
        Name = 'NOMFOC'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'NOMGRU'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SIGFOC'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'TIPPER'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'INDSEC'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'INDCON'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'INDFIN'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'INDFOC'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'INDUSU'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterInsert = CdsFocosAfterInsert
    Left = 280
    Top = 248
    object CdsFocosCODGRU: TIntegerField
      FieldName = 'CODGRU'
      Visible = False
    end
    object CdsFocosCODFOC: TIntegerField
      FieldName = 'CODFOC'
      Visible = False
    end
    object CdsFocosNOMFOC: TStringField
      DisplayLabel = 'Foco'
      FieldName = 'NOMFOC'
      Size = 70
    end
    object CdsFocosNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Visible = False
      Size = 50
    end
    object CdsFocosSIGFOC: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGFOC'
      Size = 4
    end
    object CdsFocosTIPPER: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPPER'
      Required = True
      Size = 1
    end
    object CdsFocosINDSEC: TStringField
      DisplayLabel = 'Secretarias'
      FieldName = 'INDSEC'
      Visible = False
      Size = 1
    end
    object CdsFocosINDCON: TStringField
      DisplayLabel = 'Confer'#234'ncias'
      FieldName = 'INDCON'
      Visible = False
      Size = 1
    end
    object CdsFocosINDFIN: TStringField
      DisplayLabel = 'Financeiro'
      FieldName = 'INDFIN'
      Visible = False
      Size = 1
    end
    object CdsFocosINDFOC: TStringField
      DisplayLabel = 'Focos'
      FieldName = 'INDFOC'
      Visible = False
      Size = 1
    end
    object CdsFocosINDUSU: TStringField
      FieldName = 'INDUSU'
      Visible = False
      Size = 1
    end
  end
  object DsrUsuarios: TDataSource
    DataSet = CdsUsuario
    Left = 344
    Top = 184
  end
  object DsrFocos: TDataSource
    DataSet = CdsFocos
    Left = 344
    Top = 256
  end
end
