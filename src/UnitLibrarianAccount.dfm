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
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1050#1072#1090#1086#1083#1086#1075
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 844
        Height = 480
        ActivePage = TabSheet6
        Align = alClient
        TabOrder = 0
        object TabSheet5: TTabSheet
          Caption = #1042#1089#1077' '#1082#1085#1080#1075#1080
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 836
            Height = 81
            Align = alTop
            TabOrder = 0
            object GroupBox2: TGroupBox
              Left = -8
              Top = 1
              Width = 843
              Height = 79
              Align = alRight
              Caption = #1060#1080#1083#1100#1090#1088'/'#1055#1086#1080#1089#1082
              TabOrder = 0
              object SearchBoxCatalog: TSearchBox
                Left = 32
                Top = 30
                Width = 241
                Height = 21
                TabOrder = 0
                OnInvokeSearch = SearchBoxCatalogInvokeSearch
              end
              object RadioButtonCategory: TRadioButton
                Left = 296
                Top = 16
                Width = 113
                Height = 17
                Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080
                TabOrder = 1
              end
              object RadioButtonAuthor: TRadioButton
                Left = 296
                Top = 39
                Width = 113
                Height = 17
                Caption = #1040#1074#1090#1086#1088
                TabOrder = 2
              end
              object RadioButtonTitle: TRadioButton
                Left = 296
                Top = 62
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
            Width = 836
            Height = 371
            Align = alClient
            Caption = #1069#1082#1079#1077#1084#1087#1083#1103#1088#1099
            TabOrder = 1
            object DBGridCatalog: TDBGrid
              Left = 2
              Top = 15
              Width = 832
              Height = 354
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
        object TabSheet6: TTabSheet
          Caption = #1044#1086#1089#1090#1091#1087#1085#1099#1077' '#1101#1082#1084#1077#1087#1083#1103#1088#1099
          ImageIndex = 1
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 836
            Height = 81
            Align = alTop
            TabOrder = 0
            object GroupBox3: TGroupBox
              Left = -8
              Top = 1
              Width = 843
              Height = 79
              Align = alRight
              Caption = #1060#1080#1083#1100#1090#1088'/'#1055#1086#1080#1089#1082
              TabOrder = 0
              object SearchBoxAvailableBooks: TSearchBox
                Left = 32
                Top = 30
                Width = 241
                Height = 21
                TabOrder = 0
                OnInvokeSearch = SearchBoxAvailableBooksInvokeSearch
              end
              object RadioButton1: TRadioButton
                Left = 296
                Top = 16
                Width = 113
                Height = 17
                Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080
                TabOrder = 1
              end
              object RadioButton3: TRadioButton
                Left = 296
                Top = 39
                Width = 113
                Height = 17
                Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                TabOrder = 2
              end
            end
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 81
            Width = 836
            Height = 371
            Align = alClient
            Caption = #1069#1082#1079#1077#1084#1087#1083#1103#1088#1099
            TabOrder = 1
            object DBGridAvailableBooks: TDBGrid
              Left = 2
              Top = 15
              Width = 832
              Height = 354
              Align = alClient
              DataSource = DM.DSAvailableBooks
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'id'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ISBN'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Title'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'publishing_id'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'publishing'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'year'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'category_id'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'category'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'placement'
                  Visible = True
                end>
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1063#1080#1090#1072#1090#1077#1083#1100
      ImageIndex = 1
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
          object SearchBoxReader: TSearchBox
            Left = 40
            Top = 26
            Width = 297
            Height = 21
            TabOrder = 0
            OnInvokeSearch = SearchBoxReaderInvokeSearch
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
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 840
          Height = 166
          Align = alClient
          DataSource = DM.DsBookIssuingReader
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
      object DBGridReservations: TDBGrid
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
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'book_LF'
            Width = 246
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BookName'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ReaderName'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StatusNAme'
            Width = 82
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1051#1080#1089#1090' '#1074#1099#1076#1072#1095#1080
      ImageIndex = 3
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
          object SearchBox1: TSearchBox
            Left = 40
            Top = 26
            Width = 265
            Height = 21
            TabOrder = 0
            OnInvokeSearch = SearchBoxCatalogInvokeSearch
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
          object ButtonIssueBook: TButton
            Left = 134
            Top = 24
            Width = 97
            Height = 25
            Caption = #1054#1090#1082#1088#1099#1090#1100
            TabOrder = 0
            OnClick = ButtonIssueBookClick
          end
          object ButtonReturnBook: TButton
            Left = 237
            Top = 24
            Width = 97
            Height = 25
            Caption = #1047#1072#1082#1088#1099#1090#1100
            TabOrder = 1
            OnClick = ButtonReturnBookClick
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = DBGridBookIssuingKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Exemplar_id'
            Title.Caption = #1050#1086#1076' '#1101#1082#1079#1077#1084#1087#1083#1103#1088#1072
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BookName'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReaderName'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DateIssue'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DateReturnExpected'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DateReturnReal'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WorkerName'
            Width = 110
            Visible = True
          end>
      end
      object GroupBoxBookIssue: TGroupBox
        Left = 0
        Top = 303
        Width = 844
        Height = 177
        Align = alBottom
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1083#1080#1089#1090' '#1074#1099#1076#1072#1095#1080
        Enabled = False
        TabOrder = 2
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
        object ButtonBookIssueSave: TButton
          Left = 712
          Top = 136
          Width = 75
          Height = 25
          Caption = #1043#1086#1090#1086#1074#1086
          TabOrder = 2
          OnClick = ButtonBookIssueSaveClick
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 16
          Top = 88
          Width = 265
          Height = 21
          DataField = 'Exemplar_id'
          DataSource = DM.DSBookIssuing
          KeyField = 'id'
          ListField = 'id'
          ListSource = DM.DSExemplar
          TabOrder = 3
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 16
          Top = 42
          Width = 265
          Height = 21
          DataField = 'Reader_id'
          DataSource = DM.DSBookIssuing
          KeyField = 'id'
          ListField = 'abr'
          ListSource = DM.DSReader
          TabOrder = 4
        end
      end
    end
  end
end
