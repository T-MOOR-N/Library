object FormReader: TFormReader
  Left = 0
  Top = 0
  Caption = #1063#1080#1090#1072#1090#1077#1083#1100
  ClientHeight = 609
  ClientWidth = 1124
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1124
    Height = 609
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1050#1072#1090#1072#1083#1086#1075
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1116
        Height = 93
        Align = alTop
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 1
          Top = 1
          Width = 831
          Height = 91
          Align = alClient
          Caption = #1060#1080#1083#1100#1090#1088'/'#1055#1086#1080#1089#1082
          TabOrder = 0
          object RadioButtonCategory: TRadioButton
            Left = 512
            Top = 16
            Width = 113
            Height = 17
            Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080
            TabOrder = 0
          end
          object RadioButtonAuthor: TRadioButton
            Left = 512
            Top = 39
            Width = 113
            Height = 17
            Caption = #1040#1074#1090#1086#1088
            TabOrder = 1
          end
          object RadioButtonTitle: TRadioButton
            Left = 512
            Top = 62
            Width = 113
            Height = 17
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            TabOrder = 2
          end
          object SearchBox1: TSearchBox
            Left = 64
            Top = 34
            Width = 329
            Height = 24
            TabOrder = 3
            Text = 'SearchBox1'
            OnInvokeSearch = SearchBox1InvokeSearch
          end
        end
        object GroupBox7: TGroupBox
          Left = 832
          Top = 1
          Width = 283
          Height = 91
          Align = alRight
          Caption = #1041#1088#1086#1085#1100
          TabOrder = 1
          object Button1: TButton
            Left = 93
            Top = 34
            Width = 97
            Height = 25
            Caption = #1057#1086#1079#1076#1072#1090#1100
            TabOrder = 0
            OnClick = Button1Click
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 93
        Width = 1116
        Height = 485
        Align = alClient
        Caption = #1050#1085#1080#1075#1080
        TabOrder = 1
        object DBGridCatalog: TDBGrid
          Left = 2
          Top = 18
          Width = 1112
          Height = 465
          Align = alClient
          DataSource = DM.DSCatalog
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ISBN'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'category'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Title'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Author'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'city'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'year'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Count'
              Visible = False
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1051#1080#1089#1090#1099' '#1074#1099#1076#1072#1095#1080
      ImageIndex = 2
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 1116
        Height = 578
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = #1041#1088#1086#1085#1080' '#1080' '#1079#1072#1076#1086#1083#1078#1085#1086#1089#1090#1080
          object GroupBox6: TGroupBox
            Left = 0
            Top = 0
            Width = 1108
            Height = 257
            Align = alTop
            Caption = #1041#1088#1086#1085#1080
            TabOrder = 0
            object DBGrid3: TDBGrid
              Left = 2
              Top = 18
              Width = 1104
              Height = 237
              Align = alClient
              DataSource = DM.DSReservation
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'id'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'date'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'exemplar_id'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'reader_id'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'status'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'book_LF'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'BookName'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ReaderName'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'StatusNAme'
                  Width = 192
                  Visible = True
                end>
            end
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 257
            Width = 1108
            Height = 290
            Align = alClient
            Caption = #1048#1084#1077#1102#1097#1080#1103#1089#1103' '#1079#1072#1076#1086#1083#1078#1085#1086#1089#1090#1080
            TabOrder = 1
            object DBGrid2: TDBGrid
              Left = 2
              Top = 18
              Width = 1104
              Height = 270
              Align = alClient
              DataSource = DM.DsBookIssuingReader
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'id'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Exemplar_id'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Reader_id'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'DateIssue'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DateReturnExpected'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DateReturnReal'
                  Width = 163
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Worker_id'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'WorkerName'
                  Width = 112
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ReaderName'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'BookName'
                  Visible = True
                end>
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = #1048#1089#1090#1086#1088#1080#1103
          ImageIndex = 1
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 1108
            Height = 544
            Align = alTop
            Caption = #1048#1089#1090#1086#1088#1080#1103
            TabOrder = 0
            object GroupBox4: TGroupBox
              Left = 2
              Top = 18
              Width = 1104
              Height = 99
              Align = alTop
              Caption = #1060#1080#1083#1100#1090#1088'/'#1055#1086#1080#1089#1082
              TabOrder = 0
              object SearchBox2: TSearchBox
                Left = 496
                Top = 32
                Width = 441
                Height = 24
                TabOrder = 0
                Text = 'SearchBox1'
                OnInvokeSearch = SearchBox2InvokeSearch
              end
            end
            object DBGrid1: TDBGrid
              Left = 2
              Top = 117
              Width = 1104
              Height = 425
              Align = alClient
              DataSource = DM.DsBookIssuingReader
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'id'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Exemplar_id'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Reader_id'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'DateIssue'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DateReturnExpected'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DateReturnReal'
                  Width = 163
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Worker_id'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'WorkerName'
                  Width = 112
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ReaderName'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'BookName'
                  Visible = True
                end>
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1051#1080#1095#1085#1099#1081' '#1082#1072#1073#1080#1085#1077#1090
      ImageIndex = 2
      object Label1: TLabel
        Left = 512
        Top = 100
        Width = 35
        Height = 16
        Caption = #1051#1086#1075#1080#1085
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 512
        Top = 178
        Width = 43
        Height = 16
        Caption = #1055#1072#1088#1086#1083#1100
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 40
        Top = 106
        Width = 53
        Height = 16
        Caption = #1060#1072#1084#1080#1083#1080#1103
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 40
        Top = 184
        Width = 23
        Height = 16
        Caption = #1048#1084#1103
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 40
        Top = 256
        Width = 55
        Height = 16
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 40
        Top = 328
        Width = 99
        Height = 16
        Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 40
        Top = 408
        Width = 35
        Height = 16
        Caption = #1040#1076#1088#1077#1089
        FocusControl = DBEdit7
      end
      object Button2: TButton
        Left = 24
        Top = 24
        Width = 121
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 0
        OnClick = Button2Click
      end
      object DBEdit1: TDBEdit
        Left = 512
        Top = 122
        Width = 412
        Height = 24
        DataField = 'login'
        DataSource = DM.DSUsers
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 512
        Top = 200
        Width = 419
        Height = 24
        DataField = 'password'
        DataSource = DM.DSUsers
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 40
        Top = 128
        Width = 356
        Height = 24
        DataField = 'FirstName'
        DataSource = DM.DSReader
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 40
        Top = 200
        Width = 356
        Height = 24
        DataField = 'LastName'
        DataSource = DM.DSReader
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 40
        Top = 272
        Width = 356
        Height = 24
        DataField = 'MiddleName'
        DataSource = DM.DSReader
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 40
        Top = 344
        Width = 260
        Height = 24
        DataField = 'Phone'
        DataSource = DM.DSReader
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 40
        Top = 430
        Width = 449
        Height = 24
        DataField = 'Adress'
        DataSource = DM.DSReader
        ReadOnly = True
        TabOrder = 7
      end
      object ButtonOKUser: TButton
        Left = 744
        Top = 487
        Width = 129
        Height = 26
        Caption = #1043#1086#1090#1086#1074#1086
        Enabled = False
        TabOrder = 8
        OnClick = ButtonOKUserClick
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 332
    Top = 288
    object ButtonDelete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
    end
  end
end
