object FormAuth: TFormAuth
  Left = 192
  Top = 124
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 217
  ClientWidth = 355
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 355
    Height = 217
    Align = alClient
    Caption = #1042#1093#1086#1076
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 80
      Width = 31
      Height = 13
      Caption = #1051#1086#1075#1080#1085
    end
    object Label2: TLabel
      Left = 48
      Top = 120
      Width = 38
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100
    end
    object Label3: TLabel
      Left = 48
      Top = 34
      Width = 25
      Height = 13
      Caption = #1056#1086#1083#1100
    end
    object EditLogin: TEdit
      Left = 48
      Top = 96
      Width = 169
      Height = 21
      TabOrder = 0
    end
    object EditPass: TEdit
      Left = 48
      Top = 139
      Width = 169
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 255
      Top = 171
      Width = 75
      Height = 25
      Caption = #1054#1050
      ModalResult = 1
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object ComboBox1: TComboBox
      Left = 48
      Top = 53
      Width = 169
      Height = 21
      TabOrder = 3
      Text = 'ComboBox1'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'l'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'p'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '  user_id'
      '  ,type'
      'FROM LibraryDB.dbo.Users'
      '  WHERE login =:l '
      'AND passMD5 = CAST(HASHBYTES('#39'MD5'#39', :p) AS BINARY(16))')
    Left = 280
    Top = 32
  end
end
