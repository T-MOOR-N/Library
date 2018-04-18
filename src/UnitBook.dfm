object FormAddBook: TFormAddBook
  Left = 467
  Top = 366
  Caption = #1053#1086#1074#1072#1103' '#1082#1085#1080#1075#1072
  ClientHeight = 344
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Label2: TLabel
    Left = 32
    Top = 71
    Width = 38
    Height = 13
    Caption = #1040#1074#1090#1086#1088#1099
  end
  object Label3: TLabel
    Left = 32
    Top = 207
    Width = 29
    Height = 13
    Caption = #1046#1072#1085#1088
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 40
    Width = 305
    Height = 21
    DataField = 'Title'
    DataSource = DM.DSBook
    TabOrder = 0
  end
  object Button2: TButton
    Left = 262
    Top = 272
    Width = 75
    Height = 25
    Caption = #1043#1086#1090#1086#1074#1086
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 115
    Width = 305
    Height = 78
    DataSource = DM.DSAuthorBook
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 224
    Top = 84
    Width = 113
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 32
    Top = 90
    Width = 186
    Height = 21
    ListField = 'author_lf'
    ListSource = DM.DSAuthorBook
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 32
    Top = 226
    Width = 305
    Height = 21
    DataField = 'category'
    DataSource = DM.DSBook
    KeyField = 'id'
    ListField = 'name'
    ListSource = DM.DSBookCategory
    TabOrder = 5
  end
end
