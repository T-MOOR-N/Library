object FormAddReadTicket: TFormAddReadTicket
  Left = 326
  Top = 200
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1095#1080#1090#1072#1090#1077#1083#1100#1089#1082#1086#1075#1086' '#1073#1080#1083#1077#1090#1072
  ClientHeight = 482
  ClientWidth = 397
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 353
    Height = 281
    Caption = #1051#1080#1095#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
    TabOrder = 0
    object Label3: TLabel
      Left = 16
      Top = 120
      Width = 47
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 22
      Height = 13
      Caption = #1048#1084#1103
    end
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 49
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label10: TLabel
      Left = 16
      Top = 172
      Width = 45
      Height = 13
      Caption = #1058#1077#1083#1077#1092#1086#1085
    end
    object Label4: TLabel
      Left = 16
      Top = 222
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 305
      Height = 21
      DataField = 'LastName'
      DataSource = DM.DSReader
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 136
      Width = 305
      Height = 21
      DataField = 'MiddleName'
      DataSource = DM.DSReader
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 88
      Width = 305
      Height = 21
      DataField = 'FirstName'
      DataSource = DM.DSReader
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 191
      Width = 305
      Height = 21
      DataField = 'Phone'
      DataSource = DM.DSReader
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 241
      Width = 305
      Height = 21
      DataField = 'Adress'
      DataSource = DM.DSReader
      TabOrder = 4
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 287
    Width = 353
    Height = 133
    Caption = #1051#1080#1095#1085#1099#1081' '#1082#1072#1073#1080#1085#1077#1090
    TabOrder = 1
    object Label8: TLabel
      Left = 16
      Top = 72
      Width = 38
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100
    end
    object Label9: TLabel
      Left = 16
      Top = 21
      Width = 31
      Height = 13
      Caption = #1051#1086#1075#1080#1085
    end
    object EditLogin: TEdit
      Left = 16
      Top = 40
      Width = 305
      Height = 21
      TabOrder = 0
    end
    object EditPass: TEdit
      Left = 16
      Top = 91
      Width = 305
      Height = 21
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 270
    Top = 438
    Width = 75
    Height = 25
    Caption = #1043#1086#1090#1086#1074#1086
    ModalResult = 1
    TabOrder = 2
  end
end
