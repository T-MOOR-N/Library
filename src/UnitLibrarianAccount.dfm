object FormLibrary: TFormLibrary
  Left = 255
  Top = 77
  Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072#1088#1100
  ClientHeight = 508
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 852
    Height = 508
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1050#1072#1090#1086#1083#1086#1075
      ExplicitHeight = 487
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 844
        Height = 81
        Align = alTop
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 0
          Top = 1
          Width = 843
          Height = 79
          Align = alRight
          Caption = #1060#1080#1083#1100#1090#1088'/'#1055#1086#1080#1089#1082
          TabOrder = 0
          object SpeedButton1: TSpeedButton
            Left = 240
            Top = 32
            Width = 23
            Height = 22
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
          object Edit1: TEdit
            Left = 41
            Top = 30
            Width = 193
            Height = 21
            TabOrder = 0
          end
          object RadioButton1: TRadioButton
            Left = 304
            Top = 9
            Width = 113
            Height = 17
            Caption = #1043#1086#1076' '#1080#1079#1076#1072#1085#1080#1103
            TabOrder = 1
          end
          object RadioButton2: TRadioButton
            Left = 304
            Top = 32
            Width = 113
            Height = 17
            Caption = #1040#1074#1090#1086#1088
            TabOrder = 2
          end
          object RadioButton3: TRadioButton
            Left = 304
            Top = 55
            Width = 113
            Height = 17
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            TabOrder = 3
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 81
        Width = 844
        Height = 399
        Align = alClient
        Caption = #1069#1082#1079#1077#1084#1087#1083#1103#1088#1099
        TabOrder = 1
        ExplicitLeft = 432
        ExplicitWidth = 412
        ExplicitHeight = 406
        object DBGridCatalog: TDBGrid
          Left = 2
          Top = 15
          Width = 840
          Height = 382
          Align = alClient
          DataSource = DM.DSCatalog
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1063#1080#1090#1072#1090#1077#1083#1100
      ImageIndex = 1
      ExplicitHeight = 487
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 844
        Height = 73
        Align = alTop
        TabOrder = 0
        object GroupBox6: TGroupBox
          Left = 1
          Top = 1
          Width = 384
          Height = 71
          Align = alLeft
          Caption = #1055#1086#1080#1089#1082
          TabOrder = 0
          object SearchBox1: TSearchBox
            Left = 40
            Top = 26
            Width = 297
            Height = 21
            TabOrder = 0
            OnInvokeSearch = SearchBox1InvokeSearch
          end
        end
        object GroupBox7: TGroupBox
          Left = 391
          Top = 1
          Width = 452
          Height = 71
          Align = alRight
          Caption = #1063#1080#1090#1072#1090#1077#1083#1100#1089#1082#1080#1081' '#1073#1080#1083#1077#1090
          TabOrder = 1
          object Button1: TButton
            Left = 85
            Top = 24
            Width = 97
            Height = 25
            Caption = #1057#1086#1079#1076#1072#1090#1100
            TabOrder = 0
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 181
            Top = 24
            Width = 97
            Height = 25
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 1
            OnClick = Button2Click
          end
          object Button7: TButton
            Left = 277
            Top = 24
            Width = 97
            Height = 25
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 2
            OnClick = Button7Click
          end
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 73
        Width = 844
        Height = 224
        Align = alTop
        Caption = #1063#1080#1090#1072#1090#1077#1083#1080
        TabOrder = 1
        object DBGridReader: TDBGrid
          Left = 2
          Top = 15
          Width = 840
          Height = 207
          Align = alClient
          DataSource = DM.DSReader
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 297
        Width = 844
        Height = 183
        Align = alClient
        Caption = #1057#1087#1080#1089#1086#1082' '#1083#1080#1089#1090#1086#1074' '#1074#1099#1076#1072#1095#1080
        TabOrder = 2
        ExplicitTop = 303
        ExplicitHeight = 184
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 840
          Height = 166
          Align = alClient
          DataSource = DM.DSBookIssuing
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1041#1088#1086#1085#1100
      ImageIndex = 2
      ExplicitHeight = 487
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 844
        Height = 480
        Align = alClient
        DataSource = DM.DSReservation
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1051#1080#1089#1090' '#1074#1099#1076#1072#1095#1080
      ImageIndex = 3
      ExplicitHeight = 487
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 844
        Height = 73
        Align = alTop
        TabOrder = 0
        object GroupBox12: TGroupBox
          Left = 1
          Top = 1
          Width = 384
          Height = 71
          Align = alLeft
          Caption = #1055#1086#1080#1089#1082
          TabOrder = 0
          object SpeedButton4: TSpeedButton
            Left = 311
            Top = 26
            Width = 23
            Height = 22
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
          object Edit4: TEdit
            Left = 35
            Top = 26
            Width = 278
            Height = 21
            TabOrder = 0
          end
        end
        object GroupBox13: TGroupBox
          Left = 391
          Top = 1
          Width = 452
          Height = 71
          Align = alRight
          Caption = #1051#1080#1089#1090' '#1074#1099#1076#1072#1095#1080
          TabOrder = 1
          object Button11: TButton
            Left = 134
            Top = 24
            Width = 97
            Height = 25
            Caption = #1057#1086#1079#1076#1072#1090#1100
            TabOrder = 0
          end
          object Button13: TButton
            Left = 237
            Top = 24
            Width = 97
            Height = 25
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1090#1072#1090#1091#1089
            TabOrder = 1
          end
        end
      end
      object DBGridBookIssuing: TDBGrid
        Left = 0
        Top = 73
        Width = 844
        Height = 230
        Align = alClient
        DataSource = DM.DSBookIssuing
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object GroupBox14: TGroupBox
        Left = 0
        Top = 303
        Width = 844
        Height = 177
        Align = alBottom
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1083#1080#1089#1090' '#1074#1099#1076#1072#1095#1080
        TabOrder = 2
        ExplicitTop = 310
        object Label5: TLabel
          Left = 16
          Top = 69
          Width = 57
          Height = 13
          Caption = #1069#1082#1079#1077#1084#1087#1083#1103#1088
        end
        object Label6: TLabel
          Left = 16
          Top = 21
          Width = 48
          Height = 13
          Caption = #1063#1080#1090#1072#1090#1077#1083#1100
        end
        object Label10: TLabel
          Left = 448
          Top = 20
          Width = 77
          Height = 13
          Caption = #1044#1072#1090#1072' '#1086#1090#1082#1088#1099#1090#1080#1103
        end
        object Label7: TLabel
          Left = 448
          Top = 76
          Width = 78
          Height = 13
          Caption = #1044#1072#1090#1072' '#1079#1072#1082#1088#1099#1090#1080#1103
        end
        object DateTimePicker1: TDateTimePicker
          Left = 448
          Top = 39
          Width = 305
          Height = 21
          Date = 43205.908754224540000000
          Time = 43205.908754224540000000
          TabOrder = 0
        end
        object DateTimePicker2: TDateTimePicker
          Left = 448
          Top = 95
          Width = 305
          Height = 21
          Date = 43205.908754224540000000
          Time = 43205.908754224540000000
          TabOrder = 1
        end
        object Button12: TButton
          Left = 712
          Top = 136
          Width = 75
          Height = 25
          Caption = #1043#1086#1090#1086#1074#1086
          TabOrder = 2
        end
        object DBComboBox1: TDBComboBox
          Left = 16
          Top = 40
          Width = 305
          Height = 21
          TabOrder = 3
        end
        object DBComboBox2: TDBComboBox
          Left = 16
          Top = 88
          Width = 305
          Height = 21
          TabOrder = 4
        end
      end
    end
  end
end
