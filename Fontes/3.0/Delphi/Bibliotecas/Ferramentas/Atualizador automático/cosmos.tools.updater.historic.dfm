inherited FrmUpdatesHistoric: TFrmUpdatesHistoric
  Caption = 'Hist'#243'rico de Atualiza'#231#245'es'
  ClientHeight = 557
  ClientWidth = 681
  ExplicitWidth = 697
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  object LsvHistoric: TListView [0]
    Left = 0
    Top = 28
    Width = 496
    Height = 529
    Align = alClient
    Columns = <
      item
        AutoSize = True
        Caption = 'Atualiza'#231#227'o'
      end
      item
        Caption = 'Situa'#231#227'o'
        Width = 100
      end
      item
        Caption = 'Data'
        Width = 120
      end
      item
        Caption = 'Download'
        Width = 120
      end
      item
        Caption = 'Instala'#231#227'o'
        Width = 120
      end>
    ReadOnly = True
    RowSelect = True
    SmallImages = ImageList1
    TabOrder = 0
    ViewStyle = vsReport
    OnSelectItem = LsvHistoricSelectItem
  end
  object Panel1: TPanel [1]
    Left = 496
    Top = 28
    Width = 185
    Height = 529
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      185
      529)
    object Image1: TImage
      Left = 2
      Top = 8
      Width = 35
      Height = 33
    end
    object LblTitle: TLabel
      Left = 16
      Top = 47
      Width = 153
      Height = 66
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Bevel2: TBevel
      Left = 2
      Top = 122
      Width = 177
      Height = 10
      Anchors = [akLeft, akTop, akRight]
      Shape = bsTopLine
    end
    object LblDesc: TLabel
      Left = 16
      Top = 135
      Width = 153
      Height = 145
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
  end
  object ActionToolBar1: TActionToolBar [2]
    Left = 0
    Top = 0
    Width = 681
    Height = 28
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Spacing = 0
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010106000800900012001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000480000002400000001002000000000008028
      000000000000000000000000000000000000000000006D666D004C4C56002A34
      41008296A9002B425C0023355900424D690064616800766E6B00BAB4B000C0BA
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E3EFE6009CC5A5005FA16D002E8441000C7021000C70
      21002E8441005FA16D009CC5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F898B00DCD2D7002740
      4B00649DB50063ABD80013478C0000105400887C8B00B5998C008D7768008371
      5E00726551000000000000000000000000000000000000000000000000000000
      000000000000FEFFFF00388A4A00016D1800047F1E000AA12C0011C5390012C5
      39000AA12C00047F1E00016D18009AC4A300FEFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000095848200FFFAFB00979D
      A30010344A005993BF0069B1F300174586002E202D00DAB8AA00FFECD900F7E3
      CC0075654F00A9A1910000000000000000000000000000000000000000000000
      0000EDF5EF0076AF83000689220014D33F0014D23E0013D33F0014D33F0013D3
      3F0014D23E0013D23F0013D33F00006C180076B08300EDF5EF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000908B8300F8E8E200EFDC
      D90096939E00122B46005187B3007DB1DC0062585E00523023007A614E005845
      2C0042341B0055463700ACA29E0000000000000000000000000000000000FEFF
      FF0076B183000170180013CF3D0013D03D0012CF3D0012CF3D0012CF3C0012CE
      3C0012CF3D0012CE3C0013CE3C000BA62D000170190076B18300FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000092918300FEEAD900E3C5
      B700F6D9D500A8A1AB00203C5000557B8E009083800061422F00846B5200BBAA
      8E00CEC1A900C6BBA7006859500086797D000000000000000000000000009AC6
      A400007018000BA52C0011CC3A0012CC390012CB3A0011CA3A0025CE490010C8
      37000FC8370011C9370010CA390012CC3B000AA52C00007018009AC6A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C978500FEF7DD00E2CA
      AF00EECCB500EED2C600AAA5A2003239370059473800D2B59A00FFF4D300FFF7
      D200FFFEDC00FFFFE800ECE7E40070625F008C818900000000009CC8A6000174
      19000EC438000FC3370012C4380013C238003FCC5C00EEFBF10000000000FBFE
      FC004FCF6A0012BC320011BD34000EC336000FC437000EC4370001741A009CC8
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F948300FAFAD800EEE0
      B900F6D3B000F7CEB200FFE5CF0076624F0086725700FBEDC700E9D9AE00F8F2
      C500FDF9CD00F9F9D900FFFFF600D1CBBF00443B3A00000000005FA86F000384
      1E000DC035000DBF350019C03E003FC95B00ECFAF00000000000000000000000
      0000F7FEF8004FCC69001ABC390014BF39000DBF34000DC0360003841E005FA8
      6F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A39B8900FAFADB00EDDC
      B200FEDCB200FEDAB400F1CFAD0072543300CAB59000EFDDB000E4D39E00FFF8
      BC00FEFCC700FEFED400F9F8D700FCF6E2004F463B00000000002E8F4300069B
      27000CBC330013BD390044C86200E9F9EC000000000000000000000000000000
      000000000000F6FCF7005BCE730023C1460013BC39000CBC3300069B27002E8F
      4300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B9C8D00FFFFEA00F8DB
      B400FEDBB200FEDBB400F8E0BA0072593400CBBB9500F6E7BB00DBCA9300F2E7
      A800FFFCBE00FFFDCA00FAF4D000FCF2D400524E3B00000000000C7F250009AD
      2E000AB7310023BE4300DCF5E2000000000000000000C3EDCB006FD18400F6FC
      F8000000000000000000F5FCF7003CC55A0022BE45000BB8310009AE2E000C7F
      2500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000969D9300FEFAE600F6D1
      B400FFDBBA00FFD8B500FAE8C4007A6B4800A4917200FFFFDC00ECDEB000E8D5
      9C00F8E8AE00EEDDA900FAEFC400D1CAAE0050483600000000000C81250007AA
      2C0009B32F0040C45E00EBF9EE0000000000D1F1D80058C56D0052C2680079D2
      8B00F8FDF90000000000000000005ACB730040C45E0009B32F0007AB2C000C81
      2600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000989C9800FFFAED00F8D8
      C300FADEC300F0D4B600FEEDD000C1AB9200654C3900EDDCC500FFFFF000F9E9
      BC00D5BF8E00F8E3BA00F3E8C700796751009C8F8500000000002E9445000396
      240008AF2D0064CD7A00F0FAF200DEF3E20071CE85006BCC7F006ACB7E006ACB
      7F008FDAA000F9FDFA00000000006FD1850064CD7A0008AF2D00049624002E94
      4500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A09A9C00FFFDF500EBE3
      D000E2E3C800DFDAC000F7E1CB00FBE0D2009D7D780064443A00C8B5A100EDD7
      B600FFEBC500E2C8A600866A5200A291840000000000000000005FAF71000187
      1E0006AB2A0079D28D00DDF3E30089D79A0082D4940081D4930081D3920081D3
      920082D494009FDEAD00FBFEFB0084D5950079D28D0006AB2A0001881E005FAF
      7000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A69A9E00FFFFFE00F4FA
      EF00EEFCEF00F7FBED00FBEDDF00FEF0EB00FCECE900B4989300644637007E60
      4900644A2E0068503900A38F81000000000000000000000000009CCEA7000082
      1D0005A7290070CD840099DBA80095D9A40095D9A40095D9A40095D9A40095D9
      A40095D9A40095D9A400AEE2B90095D9A40070CC840005A7280000821D009CCE
      A700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A979700FEFEFE00FBFC
      FA00F9FCFA00FDFEFB00FFFDFB00FDFDFA00FEFEF100FFFEEE00C8B7A400A691
      7D003D2A1900B3A99C0000000000000000000000000000000000E3F2E700389E
      4F00018C1F004EBE6600A5DEB100A5DEB200A5DEB200A5DEB100A5DEB200A5DE
      B200A5DEB100A5DEB100A5DEB200A1DCAE004DBE6600018C2000389E4F00E3F2
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E9F9E00FFFFFF00FDFD
      FD00FBFBFB00FFFFFF00FFFFFF00FAF8F500FCFCF800D3CBB8008C7866006F5F
      50005D4D4100000000000000000000000000000000000000000000000000FEFF
      FF0076BE860000871D0075CA8800B6E2BF00BBE5C400BBE5C400BBE5C400BBE5
      C400BBE5C400BBE5C400B6E2BF00159A310000861E0076BE8600FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900F0F0F000EBEB
      EB00ECECEC00EDEDED00F8F8F900FFFFFF00FFFFFF00F5EEE2008D7C70004E42
      3700D3C9C0000000000000000000000000000000000000000000000000000000
      0000EDF7F00076BF8700018D200044B55B007CCB8E00A4DBB000BBE4C400BBE4
      C300A3DBB0007CCB8E0044B55C0000871D0076BF8700EDF7F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400707070007474
      740073737300747474007F80800092908F00A49D9600867D760052494300C4C0
      BB00000000000000000000000000000000000000000000000000000000000000
      000000000000FEFFFF0038A3500000891D00008B1E0000901F00009521000095
      210000901F00008B1E0000891E009AD0A600FEFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E3F3E7009CD2A8005FB572002E9F47000C8F29000C8F
      29002E9F47005FB572009CD2A800000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000009D9D00009D9D00009D
      9D00009D9D00009D9D00009D9D00009D9D00009D9D00009D9D00009D9D00009D
      9D00009D9D00009D9D00009D9D00009D9D00009D9D000000000000000000CC62
      2D00CC622D00CC622D00CC622D00CC622D00CC622D00CC622D00CC622D00CC62
      2D00CC622D00CC622D00CC622D00CC622D00CC622D00CC622D00CC622D000000
      0000000000006200C6006200C6006200C6006200C6006200C6006200C6006200
      C6006200C6006200C6006200C6006200C6006200C6006200C6006200C6006200
      C6006200C6000000000000000000009700000097000000970000009700000097
      0000009700000097000000970000009700000097000000970000009700000097
      00000097000000970000009700000000000000000000009D9D00007E7E00007E
      7E00007E7E00007E7E00007E7E00007E7E00007E7E00007E7E00007E7E00007E
      7E00007E7E00007E7E00007E7E00007E7E00009D9D000000000000000000CC62
      2D00AA540000AA540000AA540000AA540000AA540000AA540000AA540000AA54
      0000AA540000AA540000AA540000AA540000AA540000AA540000CC622D000000
      0000000000006200C6005400AA005400AA005400AA005400AA005400AA005400
      AA005400AA005400AA005400AA005400AA005400AA005400AA005400AA005400
      AA006200C600000000000000000000970000007E0000007E0000007E0000007E
      0000007E0000007E0000007E0000007E0000007E0000007E0000007E0000007E
      0000007E0000007E0000009700000000000000000000009D9D00007E7E005CCC
      CC0060CECE0064D0D00067D1D1006AD3D3006BD4D4006BD4D4006AD3D30067D1
      D10064D0D00060CECE005CCCCC00007E7E00009D9D000000000000000000CC62
      2D00AA540000BF885000C38D5700C6915D00C8956200CA976500CA996700CA99
      6700CA976500C8956200C6915D00C38D5700BF885000AA540000CC622D000000
      0000000000006200C6005400AA008850BF008D57C300915DC6009562C8009765
      CA009967CA009967CA009765CA009562C800915DC6008D57C3008850BF005400
      AA006200C600000000000000000000970000007E000050B5500057B957005DBC
      5D0062BF620065C1650067C2670067C2670065C1650062BF62005DBC5D0057B9
      570050B55000007E0000009700000000000000000000009D9D00007E7E0055C9
      C9005ACCCC005ECECE0061D0D00063D1D10064D2D20064D2D20063D1D10061D0
      D0005ECECE005ACCCC0055C9C900007E7E00009D9D000000000000000000CC62
      2D00AA540000BD844B00C1895100C38D5600C6915B00C7935E00C8946000C894
      6000C7935E00C6915B00C38D5600C1895100BD844B00AA540000CC622D000000
      0000000000006200C6005400AA00844BBD008951C1008D56C300915BC600935E
      C7009460C8009460C800935EC700915BC6008D56C3008951C100844BBD005400
      AA006200C600000000000000000000970000007E00004BB34B0051B7510056B9
      56005BBC5B005EBE5E0060BF600060BF60005EBE5E005BBC5B0056B9560051B7
      51004BB34B00007E0000009700000000000000000000009D9D00007E7E004DC6
      C60052C9C90055CBCB0057CDCD0059CECE00E6F7F700E6F7F70059CECE0057CD
      CD0055CBCB0052C9C9004DC6C600007E7E00009D9D000000000000000000CC62
      2D00AA540000BB804400BE844900C1884E00C28A5200C48D5500E7D1BC00E7D1
      BC00C48D5500C28A5200C1884E00BE844900BB804400AA540000CC622D000000
      0000000000006200C6005400AA008044BB008449BE00884EC1008A52C2008D55
      C400D1BCE700D1BCE7008D55C4008A52C200884EC1008449BE008044BB005400
      AA006200C600000000000000000000970000007E000044B0440049B349004EB7
      4E0052B8520055BA5500BCE3BC00BCE3BC0055BA550052B852004EB74E0049B3
      490044B04400007E0000009700000000000000000000009D9D00007E7E0043C3
      C30047C6C6004AC7C7004CC9C900E4F7F700E4F7F700E4F7F700E4F7F7004CC9
      C9004AC7C70047C6C60043C3C300007E7E00009D9D000000000000000000CC62
      2D00AA540000B7783B00BB7D4000BE824500BF844800E6CEB700E6CEB700E6CE
      B700E6CEB700BF844800BE824500BB7D4000B7783B00AA540000CC622D000000
      0000000000006200C6005400AA00783BB7007D40BB008245BE008448BF00CEB7
      E600CEB7E600CEB7E600CEB7E6008448BF008245BE007D40BB00783BB7005400
      AA006200C600000000000000000000970000007E00003BAD3B0040B0400045B3
      450048B44800B7E1B700B7E2B700B7E2B700B7E1B70048B4480045B3450040B0
      40003BAD3B00007E0000009700000000000000000000009D9D00007E7E0038C0
      C0003BC2C2003EC4C400E2F6F600E2F6F600E2F6F600E2F6F600E2F6F600E2F6
      F6003EC4C4003BC2C20038C0C000007E7E00009D9D000000000000000000CC62
      2D00AA540000B4723100B7763600B9783900E3CAB100E4CBB200E4CBB300E4CB
      B300E4CBB200E3CAB100B9783900B7763600B4723100AA540000CC622D000000
      0000000000006200C6005400AA007231B4007636B7007839B900CAB1E300CBB2
      E400CBB3E400CBB3E400CBB2E400CAB1E3007839B9007636B7007231B4005400
      AA006200C600000000000000000000970000007E000031A8310036AB360039AD
      3900B1DFB100B2DFB200B3E0B300B3E0B300B2DFB200B1DFB10039AD390036AB
      360031A83100007E0000009700000000000000000000009D9D00007E7E0045C3
      C30048C6C600E3F6F600E4F6F600E4F6F600E4F6F600E4F6F600E4F6F600E4F6
      F600E3F6F60048C6C60045C3C300007E7E00009D9D000000000000000000CC62
      2D00AA540000B87B3E00BB7E4100E4CCB400E5CDB500E5CDB600E5CDB600E5CD
      B600E5CDB600E5CDB500E4CCB400BB7E4100B87B3E00AA540000CC622D000000
      0000000000006200C6005400AA007B3EB8007E41BB00CCB4E400CDB5E500CDB6
      E500CDB6E500CDB6E500CDB6E500CDB5E500CCB4E4007E41BB007B3EB8005400
      AA006200C600000000000000000000970000007E00003EAE3E0041B04100B4E0
      B400B5E0B500B6E1B600B6E1B600B6E1B600B6E1B600B5E0B500B4E0B40041B0
      41003EAE3E00007E0000009700000000000000000000009D9D00007E7E0057C8
      C80058CACA0059CBCB005ACDCD00E6F7F700E6F7F700E6F7F700E6F7F7005ACD
      CD0059CBCB0058CACA0057C8C800007E7E00009D9D000000000000000000CC62
      2D00AA540000BE874F00C0895000C08A5200C38C5300E7D1BB00E7D1BB00E7D1
      BB00E7D1BB00C38C5300C08A5200C0895000BE874F00AA540000CC622D000000
      0000000000006200C6005400AA00874FBE008950C0008A52C0008C53C300D1BB
      E700D1BBE700D1BBE700D1BBE7008C53C3008A52C0008950C000874FBE005400
      AA006200C600000000000000000000970000007E00004FB44F0050B6500052B7
      520053B95300BBE3BB00BBE3BB00BBE3BB00BBE3BB0053B9530052B7520050B6
      50004FB44F00007E0000009700000000000000000000009D9D00007E7E006CCF
      CF006DD0D0006ED1D1006ED2D200E9F8F800E9F8F800E9F8F800E9F8F8006ED2
      D2006ED1D1006DD0D0006CCFCF00007E7E00009D9D000000000000000000CC62
      2D00AA540000C6946200C7956400C8966400C9976600E9D5C200E9D5C200E9D5
      C200E9D5C200C9976600C8966400C7956400C6946200AA540000CC622D000000
      0000000000006200C6005400AA009462C6009564C7009664C8009766C900D5C2
      E900D5C2E900D5C2E900D5C2E9009766C9009664C8009564C7009462C6005400
      AA006200C600000000000000000000970000007E000062BC620064BE640064BF
      640066C06600C2E6C200C2E6C200C2E6C200C2E6C20066C0660064BF640064BE
      640062BC6200007E0000009700000000000000000000009D9D00007E7E0086D6
      D60086D7D70087D8D80087D9D900EDF9F900EDF9F900EDF9F900EDF9F90087D9
      D90087D8D80086D7D70086D6D600007E7E00009D9D000000000000000000CC62
      2D00AA540000CDA27800CEA37800CEA47900CEA47900ECDBCA00ECDBCA00ECDB
      CA00ECDBCA00CEA47900CEA47900CEA37800CDA27800AA540000CC622D000000
      0000000000006200C6005400AA00A278CD00A378CE00A479CE00A479CE00DBCA
      EC00DBCAEC00DBCAEC00DBCAEC00A479CE00A479CE00A378CE00A278CD005400
      AA006200C600000000000000000000970000007E000078C5780078C6780079C7
      790079C77900CAE9CA00CAE9CA00CAE9CA00CAE9CA0079C7790079C7790078C6
      780078C57800007E0000009700000000000000000000009D9D00007E7E00A2E0
      E000A2E0E000A2E0E000A2E0E000F1FAFA00F1FAFA00F1FAFA00F1FAFA00A2E0
      E000A2E0E000A2E0E000A2E0E000007E7E00009D9D000000000000000000CC62
      2D00AA540000D5B39100D6B49100D6B49100D6B49100EFE1D300EFE1D300EFE1
      D300EFE1D300D6B49100D6B49100D6B49100D5B39100AA540000CC622D000000
      0000000000006200C6005400AA00B391D500B491D600B491D600B491D600E1D3
      EF00E1D3EF00E1D3EF00E1D3EF00B491D600B491D600B491D600B391D5005400
      AA006200C600000000000000000000970000007E000091CF910091D0910091D0
      910091D09100D3ECD300D3ECD300D3ECD300D3ECD30091D0910091D0910091D0
      910091CF9100007E0000009700000000000000000000009D9D00007E7E00C0E9
      E900C0E9E900C0EAEA00C0EAEA00C0EAEA00C0EAEA00C0EAEA00C0EAEA00C0EA
      EA00C0EAEA00C0E9E900C0E9E900007E7E00009D9D000000000000000000CC62
      2D00AA540000DFC5AC00E0C6AC00E0C6AC00E0C6AC00E0C6AC00E0C6AC00E0C6
      AC00E0C6AC00E0C6AC00E0C6AC00E0C6AC00DFC5AC00AA540000CC622D000000
      0000000000006200C6005400AA00C5ACDF00C6ACE000C6ACE000C6ACE000C6AC
      E000C6ACE000C6ACE000C6ACE000C6ACE000C6ACE000C6ACE000C5ACDF005400
      AA006200C600000000000000000000970000007E0000ACDBAC00ACDBAC00ACDB
      AC00ACDBAC00ACDBAC00ACDBAC00ACDBAC00ACDBAC00ACDBAC00ACDBAC00ACDB
      AC00ACDBAC00007E0000009700000000000000000000009D9D00007E7E00DFF3
      F300DFF3F300DFF3F300DFF3F300DFF4F400DFF4F400DFF4F400DFF4F400DFF3
      F300DFF3F300DFF3F300DFF3F300007E7E00009D9D000000000000000000CC62
      2D00AA540000E8D7C600E9D7C600E9D7C600E9D7C600E9D8C600E9D8C600E9D8
      C600E9D8C600E9D7C600E9D7C600E9D7C600E8D7C600AA540000CC622D000000
      0000000000006200C6005400AA00D7C6E800D7C6E900D7C6E900D7C6E900D8C6
      E900D8C6E900D8C6E900D8C6E900D7C6E900D7C6E900D7C6E900D7C6E8005400
      AA006200C600000000000000000000970000007E0000C6E5C600C6E6C600C6E6
      C600C6E6C600C6E6C600C6E6C600C6E6C600C6E6C600C6E6C600C6E6C600C6E6
      C600C6E5C600007E0000009700000000000000000000009D9D00007E7E00007E
      7E00007E7E00007E7E00007E7E00007E7E00007E7E00007E7E00007E7E00007E
      7E00007E7E00007E7E00007E7E00007E7E00009D9D000000000000000000CC62
      2D00AA540000AA540000AA540000AA540000AA540000AA540000AA540000AA54
      0000AA540000AA540000AA540000AA540000AA540000AA540000CC622D000000
      0000000000006200C6005400AA005400AA005400AA005400AA005400AA005400
      AA005400AA005400AA005400AA005400AA005400AA005400AA005400AA005400
      AA006200C600000000000000000000970000007E0000007E0000007E0000007E
      0000007E0000007E0000007E0000007E0000007E0000007E0000007E0000007E
      0000007E0000007E0000009700000000000000000000009D9D00009D9D00009D
      9D00009D9D00009D9D00009D9D00009D9D00009D9D00009D9D00009D9D00009D
      9D00009D9D00009D9D00009D9D00009D9D00009D9D000000000000000000CC62
      2D00CC622D00CC622D00CC622D00CC622D00CC622D00CC622D00CC622D00CC62
      2D00CC622D00CC622D00CC622D00CC622D00CC622D00CC622D00CC622D000000
      0000000000006200C6006200C6006200C6006200C6006200C6006200C6006200
      C6006200C6006200C6006200C6006200C6006200C6006200C6006200C6006200
      C6006200C6000000000000000000009700000097000000970000009700000097
      0000009700000097000000970000009700000097000000970000009700000097
      0000009700000097000000970000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00800FFC01F0000000000000008007F800
      70000000000000008003F00030000000000000008001E0001000000000000000
      8000E00010000000000000008000402000000000000000008000407000000000
      00000000800040F800000000000000008000418C000000000000000080004106
      00000000000000008000400200000000000000008000C0000000000000000000
      8001C00000000000000000008003C00000000000000000008007E00010000000
      000000008007F0003000000000000000800FF8007000000000000000FFFFFC01
      F000000000000000FFFFFFFFFFFFFFFFFF000000800060001800060001000000
      8000600018000600010000008000600018000600010000008000600018000600
      0100000080006000180006000100000080006000180006000100000080006000
      1800060001000000800060001800060001000000800060001800060001000000
      8000600018000600010000008000600018000600010000008000600018000600
      0100000080006000180006000100000080006000180006000100000080006000
      1800060001000000800060001800060001000000FFFFFFFFFFFFFFFFFF000000
      00000000000000000000000000000000000000000000}
  end
  inherited ActionList1: TActionList
    object ActVerifyUpdates: TAction
      Caption = 'Verificar Atualiza'#231#245'es...'
      Hint = 
        'Verificar Atualiza'#231#245'es|Busca as mais recentes atualiza'#231#245'es do si' +
        'stema Cosmos'
      ImageIndex = 4
      OnExecute = ActVerifyUpdatesExecute
    end
  end
  object XMLUpdatesHistoric: TXMLDocument
    Options = [doNodeAutoCreate, doNodeAutoIndent, doAttrNull, doAutoPrefix, doNamespaceDecl]
    Left = 64
    Top = 88
    DOMVendorDesc = 'MSXML'
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActVerifyUpdates
            Caption = '&Verificar Atualiza'#231#245'es...'
            ImageIndex = 4
            ShowCaption = False
          end
          item
            Action = Action2
            Caption = '&Instalar Atualiza'#231#227'o!'
            ImageIndex = 5
            ShowCaption = False
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Images = ImageList1
    Left = 72
    Top = 264
    StyleName = 'Platform Default'
    object Action2: TAction
      Caption = 'Instalar Atualiza'#231#227'o!'
      Hint = 'Instala a atualiza'#231#227'o selecionada'
      ImageIndex = 5
    end
  end
end
