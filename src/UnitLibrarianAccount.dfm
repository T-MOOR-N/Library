object FormLibrary: TFormLibrary
  Left = 255
  Top = 77
  Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072#1088#1100
  ClientHeight = 517
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
    Height = 517
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 508
    object TabSheet1: TTabSheet
      Caption = #1050#1072#1090#1072#1083#1086#1075
      ExplicitHeight = 480
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 844
        Height = 489
        ActivePage = TabSheet7
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 480
        object TabSheet5: TTabSheet
          Caption = #1042#1089#1077' '#1082#1085#1080#1075#1080
          ExplicitHeight = 452
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 836
            Height = 81
            Align = alTop
            TabOrder = 0
            object GroupBox2: TGroupBox
              Left = 1
              Top = 1
              Width = 834
              Height = 79
              Align = alClient
              Caption = #1060#1080#1083#1100#1090#1088'/'#1055#1086#1080#1089#1082
              TabOrder = 0
              object SearchBoxCatalog: TSearchBox
                Left = 176
                Top = 26
                Width = 241
                Height = 21
                TabOrder = 0
                OnInvokeSearch = SearchBoxCatalogInvokeSearch
              end
              object ComboBoxBookSearch: TComboBox
                Left = 32
                Top = 26
                Width = 113
                Height = 22
                Style = csOwnerDrawFixed
                ItemIndex = 0
                TabOrder = 1
                Text = #1053#1072#1079#1074#1072#1085#1080#1077
                Items.Strings = (
                  #1053#1072#1079#1074#1072#1085#1080#1077
                  #1050#1072#1090#1077#1075#1086#1088#1080#1103
                  #1040#1074#1090#1086#1088
                  #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086)
              end
              object ButtonSearchBoxCatalogClear: TButton
                Left = 440
                Top = 26
                Width = 75
                Height = 21
                Caption = #1054#1095#1080#1089#1090#1080#1090#1100
                TabOrder = 2
                OnClick = ButtonSearchBoxCatalogClearClick
              end
            end
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 81
            Width = 836
            Height = 380
            Align = alClient
            Caption = #1042#1089#1077' '#1082#1085#1080#1075#1080
            TabOrder = 1
            ExplicitHeight = 371
            object DBGridCatalog: TDBGrid
              Left = 2
              Top = 15
              Width = 832
              Height = 363
              Align = alClient
              DataSource = DM.DSCatalog
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
                  FieldName = 'ISBN'
                  Visible = True
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
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'city'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'year'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CountAll'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AvailableCount'
                  Visible = True
                end>
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1044#1086#1089#1090#1091#1087#1085#1099#1077' '#1101#1082#1084#1077#1087#1083#1103#1088#1099
          ImageIndex = 1
          ExplicitHeight = 452
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 836
            Height = 81
            Align = alTop
            TabOrder = 0
            object GroupBox3: TGroupBox
              Left = 1
              Top = 1
              Width = 834
              Height = 79
              Align = alClient
              Caption = #1060#1080#1083#1100#1090#1088'/'#1055#1086#1080#1089#1082
              TabOrder = 0
              object SearchBoxAvailableBooks: TSearchBox
                Left = 176
                Top = 26
                Width = 241
                Height = 21
                TabOrder = 0
                OnInvokeSearch = SearchBoxAvailableBooksInvokeSearch
              end
              object ComboBoxAvailableBooks: TComboBox
                Left = 32
                Top = 26
                Width = 113
                Height = 22
                Style = csOwnerDrawFixed
                ItemIndex = 0
                TabOrder = 1
                Text = #1053#1072#1079#1074#1072#1085#1080#1077
                Items.Strings = (
                  #1053#1072#1079#1074#1072#1085#1080#1077
                  #1050#1072#1090#1077#1075#1086#1088#1080#1103
                  #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086)
              end
              object ButtonSearchBoxAvailableBooksClear: TButton
                Left = 440
                Top = 26
                Width = 75
                Height = 21
                Caption = #1054#1095#1080#1089#1090#1080#1090#1100
                TabOrder = 2
                OnClick = ButtonSearchBoxAvailableBooksClearClick
              end
            end
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 81
            Width = 836
            Height = 380
            Hint = #1069#1082#1079#1077#1084#1087#1083#1103#1088#1099' '#1082#1086#1090#1086#1088#1099#1077' '#1085#1077' '#1079#1072#1073#1088#1086#1085#1080#1088#1086#1074#1072#1085#1085#1099' '#1080' '#1085#1072#1093#1086#1076#1103#1090#1089#1103' '#1074' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
            HelpType = htKeyword
            HelpKeyword = #1069#1082#1079#1077#1084#1087#1083#1103#1088#1099' '#1082#1086#1090#1086#1088#1099#1077' '#1085#1077' '#1079#1072#1073#1088#1086#1085#1080#1088#1086#1074#1072#1085#1085#1099' '#1080' '#1085#1072#1093#1086#1076#1103#1090#1089#1103' '#1074' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
            Align = alClient
            Caption = #1044#1086#1089#1090#1091#1087#1085#1099#1077' '#1101#1082#1079#1077#1084#1087#1083#1103#1088#1099
            TabOrder = 1
            ExplicitHeight = 371
            object DBGridAvailableBooks: TDBGrid
              Left = 2
              Top = 15
              Width = 832
              Height = 363
              Hint = #1069#1082#1079#1077#1084#1087#1083#1103#1088#1099' '#1082#1086#1090#1086#1088#1099#1077' '#1085#1077' '#1079#1072#1073#1088#1086#1085#1080#1088#1086#1074#1072#1085#1085#1099' '#1080' '#1085#1072#1093#1086#1076#1103#1090#1089#1103' '#1074' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
              HelpType = htKeyword
              HelpKeyword = #1069#1082#1079#1077#1084#1087#1083#1103#1088#1099' '#1082#1086#1090#1086#1088#1099#1077' '#1085#1077' '#1079#1072#1073#1088#1086#1085#1080#1088#1086#1074#1072#1085#1085#1099' '#1080' '#1085#1072#1093#1086#1076#1103#1090#1089#1103' '#1074' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
              Align = alClient
              DataSource = DM.DSAvailableBooks
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
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
        object TabSheet7: TTabSheet
          Caption = #1048#1089#1090#1086#1088#1080#1103' '#1101#1082#1079#1077#1084#1087#1083#1103#1088#1072
          ImageIndex = 2
          ExplicitHeight = 452
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 281
            Height = 461
            Align = alLeft
            Caption = #1042#1099#1073#1086#1088' '#1101#1082#1079#1077#1084#1087#1083#1103#1088#1072
            TabOrder = 0
            ExplicitHeight = 452
            object Label1: TLabel
              Left = 24
              Top = 48
              Width = 119
              Height = 13
              Caption = '1. '#1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1102
            end
            object Label2: TLabel
              Left = 24
              Top = 106
              Width = 145
              Height = 13
              Caption = '2. '#1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
            end
            object Label3: TLabel
              Left = 24
              Top = 168
              Width = 144
              Height = 13
              Caption = '3. '#1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1072#1084' '#1101#1082#1079#1077#1084#1087#1083#1103#1088
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 24
              Top = 67
              Width = 225
              Height = 21
              KeyField = 'id'
              ListField = 'name'
              ListSource = DSTBHCategory
              TabOrder = 0
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 24
              Top = 125
              Width = 225
              Height = 21
              KeyField = 'ISBN'
              ListField = 'Title'
              ListSource = DSTBHBook
              TabOrder = 1
            end
            object DBLookupComboBox5: TDBLookupComboBox
              Left = 24
              Top = 187
              Width = 225
              Height = 21
              KeyField = 'id'
              ListField = 'id'
              ListSource = DSTBHExemplar
              TabOrder = 2
            end
          end
          object DBGridBookHistory: TDBGrid
            Left = 281
            Top = 0
            Width = 555
            Height = 461
            Align = alClient
            DataSource = DSTBHHistory
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1063#1080#1090#1072#1090#1077#1083#1100
      ImageIndex = 1
      ExplicitHeight = 480
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
            Left = 24
            Top = 26
            Width = 225
            Height = 21
            TabOrder = 0
            OnInvokeSearch = SearchBoxReaderInvokeSearch
          end
          object ButtonSearchBoxReaderClear: TButton
            Left = 277
            Top = 26
            Width = 75
            Height = 21
            Caption = #1054#1095#1080#1089#1090#1080#1090#1100
            TabOrder = 1
            OnClick = ButtonSearchBoxReaderClearClick
          end
        end
        object GroupBox7: TGroupBox
          Left = 385
          Top = 1
          Width = 458
          Height = 71
          Align = alClient
          Caption = #1063#1080#1090#1072#1090#1077#1083#1100#1089#1082#1080#1081' '#1073#1080#1083#1077#1090
          TabOrder = 1
          object Button1: TButton
            Left = 61
            Top = 24
            Width = 97
            Height = 25
            Caption = #1057#1086#1079#1076#1072#1090#1100
            TabOrder = 0
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 157
            Top = 24
            Width = 97
            Height = 25
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 1
            OnClick = Button2Click
          end
          object Button7: TButton
            Left = 253
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
          Columns = <
            item
              Expanded = False
              FieldName = 'id'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'FirstName'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LastName'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MiddleName'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Phone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Adress'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'abr'
              Visible = False
            end>
        end
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 297
        Width = 844
        Height = 192
        Align = alClient
        Caption = #1057#1087#1080#1089#1086#1082' '#1083#1080#1089#1090#1086#1074' '#1074#1099#1076#1072#1095#1080
        TabOrder = 2
        ExplicitHeight = 183
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 840
          Height = 175
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
          Columns = <
            item
              Expanded = False
              FieldName = 'id'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'BookName'
              Visible = True
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Worker_id'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ReaderName'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'WorkerName'
              Visible = False
            end>
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1041#1088#1086#1085#1100
      ImageIndex = 2
      ExplicitHeight = 480
      object DBGridReservations: TDBGrid
        Left = 0
        Top = 0
        Width = 844
        Height = 280
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
      object Panel5: TPanel
        Left = 0
        Top = 321
        Width = 844
        Height = 168
        Align = alBottom
        Caption = 'Panel5'
        ShowCaption = False
        TabOrder = 1
        ExplicitTop = 312
        object Label8: TLabel
          Left = 64
          Top = 29
          Width = 48
          Height = 13
          Caption = #1063#1080#1090#1072#1090#1077#1083#1100
        end
        object Label9: TLabel
          Left = 64
          Top = 77
          Width = 34
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089
        end
        object Label11: TLabel
          Left = 240
          Top = 24
          Width = 53
          Height = 13
          Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
        end
        object Label12: TLabel
          Left = 240
          Top = 70
          Width = 82
          Height = 13
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
        end
        object Label13: TLabel
          Left = 240
          Top = 115
          Width = 57
          Height = 13
          Caption = #1069#1082#1079#1084#1077#1087#1083#1103#1088
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 64
          Top = 48
          Width = 145
          Height = 21
          DataField = 'reader_id'
          DataSource = DM.DSReservation
          KeyField = 'id'
          ListField = 'abr'
          ListSource = DM.DSReader
          TabOrder = 0
        end
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 64
          Top = 96
          Width = 145
          Height = 21
          DataField = 'status'
          DataSource = DM.DSReservation
          KeyField = 'id'
          ListField = 'name'
          ListSource = DM.DSReservationStatus
          TabOrder = 1
        end
        object DBLookupComboBox9: TDBLookupComboBox
          Left = 240
          Top = 43
          Width = 225
          Height = 21
          KeyField = 'id'
          ListField = 'name'
          ListSource = DSTBHCategory
          TabOrder = 2
        end
        object DBLookupComboBox10: TDBLookupComboBox
          Left = 240
          Top = 88
          Width = 225
          Height = 21
          KeyField = 'ISBN'
          ListField = 'Title'
          ListSource = DSTBHBook
          TabOrder = 3
        end
        object DBLookupComboBox11: TDBLookupComboBox
          Left = 240
          Top = 134
          Width = 225
          Height = 21
          KeyField = 'id'
          ListField = 'id'
          ListSource = DSTBHExemplar
          TabOrder = 4
        end
        object Button8: TButton
          Left = 536
          Top = 128
          Width = 75
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 5
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 648
          Top = 128
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 6
          OnClick = Button9Click
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 280
        Width = 844
        Height = 41
        Align = alBottom
        Caption = 'Panel6'
        ShowCaption = False
        TabOrder = 2
        ExplicitTop = 271
        object Button4: TButton
          Left = 64
          Top = 6
          Width = 75
          Height = 25
          Caption = #1057#1086#1079#1076#1072#1090#1100
          TabOrder = 0
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 192
          Top = 6
          Width = 97
          Height = 25
          Caption = #1042#1099#1076#1072#1090#1100' '#1082#1085#1080#1075#1091
          TabOrder = 1
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 336
          Top = 6
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1080#1090#1100
          TabOrder = 2
          OnClick = Button6Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1051#1080#1089#1090' '#1074#1099#1076#1072#1095#1080
      ImageIndex = 3
      ExplicitHeight = 480
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
          Left = 385
          Top = 1
          Width = 458
          Height = 71
          Align = alClient
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
        Height = 183
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
            Title.Caption = #1050#1086#1076' '
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BookName'
            Visible = True
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Worker_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ReaderName'
            Title.Caption = #1063#1080#1090#1072#1090#1077#1083#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WorkerName'
            Visible = True
          end>
      end
      object GroupBoxBookIssue: TGroupBox
        Left = 0
        Top = 256
        Width = 844
        Height = 233
        Align = alBottom
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1083#1080#1089#1090' '#1074#1099#1076#1072#1095#1080
        Enabled = False
        TabOrder = 2
        Visible = False
        object Label5: TLabel
          Left = 41
          Top = 133
          Width = 57
          Height = 13
          Caption = #1069#1082#1079#1077#1084#1087#1083#1103#1088
        end
        object Label6: TLabel
          Left = 432
          Top = 39
          Width = 48
          Height = 13
          Caption = #1063#1080#1090#1072#1090#1077#1083#1100
        end
        object Label10: TLabel
          Left = 432
          Top = 87
          Width = 77
          Height = 13
          Caption = #1044#1072#1090#1072' '#1086#1090#1082#1088#1099#1090#1080#1103
        end
        object Label7: TLabel
          Left = 432
          Top = 133
          Width = 78
          Height = 13
          Caption = #1044#1072#1090#1072' '#1079#1072#1082#1088#1099#1090#1080#1103
        end
        object Label4: TLabel
          Left = 41
          Top = 87
          Width = 82
          Height = 13
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
        end
        object Label14: TLabel
          Left = 41
          Top = 39
          Width = 53
          Height = 13
          Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
        end
        object DateTimePicker1: TDateTimePicker
          Left = 432
          Top = 106
          Width = 305
          Height = 21
          Date = 43205.908754224540000000
          Time = 43205.908754224540000000
          TabOrder = 0
        end
        object DateTimePicker2: TDateTimePicker
          Left = 432
          Top = 152
          Width = 305
          Height = 21
          Date = 43205.908754224540000000
          Time = 43205.908754224540000000
          TabOrder = 1
        end
        object ButtonBookIssueSave: TButton
          Left = 696
          Top = 192
          Width = 75
          Height = 25
          Caption = #1043#1086#1090#1086#1074#1086
          TabOrder = 2
          OnClick = ButtonBookIssueSaveClick
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 41
          Top = 152
          Width = 265
          Height = 21
          DataField = 'Exemplar_id'
          DataSource = DM.DSBookIssuing
          KeyField = 'id'
          ListField = 'id'
          ListSource = DSTBHExemplar
          TabOrder = 3
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 432
          Top = 58
          Width = 265
          Height = 21
          DataField = 'Reader_id'
          DataSource = DM.DSBookIssuing
          KeyField = 'id'
          ListField = 'abr'
          ListSource = DM.DSReader
          TabOrder = 4
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 41
          Top = 106
          Width = 265
          Height = 21
          KeyField = 'ISBN'
          ListField = 'Title'
          ListSource = DSTBHBook
          TabOrder = 5
        end
        object Button3: TButton
          Left = 600
          Top = 192
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 6
          OnClick = Button3Click
        end
        object DBLookupComboBox12: TDBLookupComboBox
          Left = 41
          Top = 58
          Width = 225
          Height = 21
          KeyField = 'id'
          ListField = 'name'
          ListSource = DSTBHCategory
          TabOrder = 7
        end
      end
    end
  end
  object TBHCategory: TADOTable
    Active = True
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    TableName = 'BookCategory'
    Left = 552
    Top = 392
  end
  object DSTBHCategory: TDataSource
    DataSet = TBHCategory
    Left = 552
    Top = 440
  end
  object TBHBook: TADOTable
    Active = True
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'category'
    MasterFields = 'id'
    MasterSource = DSTBHCategory
    TableName = 'Book'
    Left = 624
    Top = 392
  end
  object DSTBHBook: TDataSource
    DataSet = TBHBook
    Left = 624
    Top = 440
  end
  object DSTBHExemplar: TDataSource
    DataSet = TBHExemplar
    Left = 696
    Top = 440
  end
  object TBHExemplar: TADOTable
    Active = True
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'ISBN'
    MasterFields = 'ISBN'
    MasterSource = DSTBHBook
    TableName = 'Exemplar'
    Left = 696
    Top = 392
  end
  object TBHHistory: TADOTable
    Active = True
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Exemplar_id'
    MasterFields = 'id'
    MasterSource = DSTBHExemplar
    TableName = 'exemplar_history'
    Left = 768
    Top = 392
    object TBHHistoryExemplar_id: TIntegerField
      FieldName = 'Exemplar_id'
      Visible = False
    end
    object TBHHistoryDateIssue: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
      FieldName = 'DateIssue'
      Size = 10
    end
    object TBHHistoryDateReturnExpected: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072' ('#1086#1078#1080#1076#1072#1077#1084#1072#1103')'
      FieldName = 'DateReturnExpected'
      Size = 10
    end
    object TBHHistoryDateReturnReal: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072' ('#1092#1072#1082#1090'.)'
      FieldName = 'DateReturnReal'
      Size = 10
    end
    object TBHHistoryReader: TStringField
      DisplayLabel = #1063#1080#1090#1072#1090#1077#1083#1100
      FieldName = 'Reader'
      ReadOnly = True
      Size = 25
    end
  end
  object DSTBHHistory: TDataSource
    DataSet = TBHHistory
    Left = 768
    Top = 440
  end
end
