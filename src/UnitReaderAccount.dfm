object FormReader: TFormReader
  Left = 0
  Top = 0
  Caption = #1063#1080#1090#1072#1090#1077#1083#1100
  ClientHeight = 459
  ClientWidth = 897
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 897
    Height = 459
    ActivePage = Бронь
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1050#1072#1090#1072#1083#1086#1075
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 889
        Height = 93
        Align = alTop
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 1
          Top = 1
          Width = 705
          Height = 91
          Align = alLeft
          Caption = #1060#1080#1083#1100#1090#1088'/'#1055#1086#1080#1089#1082
          TabOrder = 0
          object ButtonSearchBook: TSpeedButton
            Left = 416
            Top = 34
            Width = 25
            Height = 25
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFF60C0E7
              05B1E905B1E9B3E2F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF05B1E901E4FD01E4FD05B1E9EFF9FDFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30B3E3
              01E4FD01E4FD05B1E950BAE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEFF9FD30B3E301E4FD01E4FD05B1E9B3E2F4FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              D7EFF905B1E901E4FD01E4FD3B9EC8D7EFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3E2F405B1E9C8B3B3C19C9CC1
              9C9CBA8E8EC19C9CC8B3B3F4EAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFB3E2F4C8B3B3BA8E8ED9BABAD9BABAD9BABAC19C9CBA8E8EE3D3
              D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3D3D3C19C9CECC1A3F3
              B66EF3B66EE6C9C5EDDEDDD5ABABBA8E8EE3D3D3FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFC8A8A8EECDB6FFB235FFB235FFB235FEBB51ECC1A3F4EAEAD5AB
              ABBA8E8EF4EAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9BABAECC1A3FEBB51FE
              BB51FEBB51FEBB51FEBB51EECDB6F4EAEAD5ABABC8B3B3FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFC8B3B3E6C9C5FEBB51FFCB70FFCB70FFCB70FFCB70FFCB70EDDE
              DDE6C9C5BA8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3D3D3D9BABAF3B66EFF
              CB70FFD587FFD587FFD587FFD587EECDB6F4EAEAC8A8A8FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFBF8F8C8A8A8D9BABAFEBB51FFD587FEDF9CFEDF9CFEDF9CFEDF
              9CF4EAEAC19C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDEDDD9BABAEC
              C1A3F3B66EFFCB70FEDF9CFFE6A7FCE7CAEDDEDDC8A8A8FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFEDDEDDD9BABAE6C9C5ECC1A3F3B66EFFD587EDDE
              DDC8A8A8FBF8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4
              EAEAD9BABADAC3C3E6C9C5DAC3C3C8B3B3FBF8F8FFFFFFFFFFFF}
          end
          object EditSearchBook: TEdit
            Left = 96
            Top = 34
            Width = 321
            Height = 24
            TabOrder = 0
          end
          object RadioButtonYear: TRadioButton
            Left = 512
            Top = 16
            Width = 113
            Height = 17
            Caption = #1043#1086#1076' '#1080#1079#1076#1072#1085#1080#1103
            TabOrder = 1
          end
          object RadioButtonAuthor: TRadioButton
            Left = 512
            Top = 39
            Width = 113
            Height = 17
            Caption = #1040#1074#1090#1086#1088
            TabOrder = 2
          end
          object RadioButtonTitle: TRadioButton
            Left = 512
            Top = 62
            Width = 113
            Height = 17
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            TabOrder = 3
          end
        end
        object GroupBox7: TGroupBox
          Left = 712
          Top = 1
          Width = 176
          Height = 91
          Align = alRight
          Caption = #1041#1088#1086#1085#1100
          TabOrder = 1
          object Button1: TButton
            Left = 45
            Top = 34
            Width = 97
            Height = 25
            Caption = #1057#1086#1079#1076#1072#1090#1100
            TabOrder = 0
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 93
        Width = 889
        Height = 335
        Align = alClient
        Caption = #1050#1085#1080#1075#1080
        TabOrder = 1
        object DBGridCatalog: TDBGrid
          Left = 2
          Top = 18
          Width = 885
          Height = 315
          Align = alClient
          DataSource = DM.DSCatalog
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object Бронь: TTabSheet
      Caption = #1041#1088#1086#1085#1100
      ImageIndex = 1
      object DBGridBooking: TDBGrid
        Left = 0
        Top = 0
        Width = 889
        Height = 428
        Align = alClient
        DataSource = DM.DSBook
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end
