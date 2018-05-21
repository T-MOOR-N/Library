object DM: TDM
  OldCreateOrder = False
  Height = 541
  Width = 1068
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=LibraryDB;Data Source=(local' +
      ');Use Procedure for Prepare=1;Auto Translate=True;Packet Size=40' +
      '96;Workstation ID=DESKTOP-A3HHT9S;Use Encryption for Data=False;' +
      'Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 40
  end
  object TUsers: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'user_id'
    MasterFields = 'id'
    MasterSource = DSWorker
    TableName = 'Users'
    Left = 40
    Top = 104
    object TUsersid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object TUserstype: TStringField
      FieldName = 'type'
      Size = 10
    end
    object TUsersuser_id: TIntegerField
      FieldName = 'user_id'
    end
    object TUserslogin: TStringField
      FieldName = 'login'
      Size = 50
    end
    object TUserspassword: TStringField
      FieldName = 'password'
      Size = 50
    end
    object TUserspassMD5: TBytesField
      FieldName = 'passMD5'
    end
  end
  object DSUsers: TDataSource
    DataSet = TUsers
    Left = 40
    Top = 160
  end
  object TWorker: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'type<>'#39'admin'#39
    TableName = 'Worker'
    Left = 96
    Top = 104
    object TWorkerid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object TWorkerFirstName: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 40
      FieldName = 'FirstName'
      Size = 50
    end
    object TWorkerLastName: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 40
      FieldName = 'LastName'
      Size = 50
    end
    object TWorkerIsDelete: TBooleanField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'IsDelete'
      DisplayValues = #1059#1074#1086#1083#1077#1085';'#1056#1072#1073#1086#1090#1072#1077#1090
    end
    object TWorkerDateCreate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072' '#1085#1072' '#1088#1072#1073#1086#1090#1091
      FieldName = 'DateCreate'
      DisplayFormat = 'dd.mm.yyyy'
    end
  end
  object DSWorker: TDataSource
    DataSet = TWorker
    Left = 96
    Top = 160
  end
  object TReader: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = TReaderCalcFields
    TableName = 'Reader'
    Left = 152
    Top = 104
    object TReaderid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object TReaderFirstName: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 21
      FieldName = 'FirstName'
    end
    object TReaderLastName: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 21
      FieldName = 'LastName'
    end
    object TReaderMiddleName: TStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      DisplayWidth = 22
      FieldName = 'MiddleName'
    end
    object TReaderPhone: TStringField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
      DisplayWidth = 16
      FieldName = 'Phone'
      Size = 16
    end
    object TReaderAdress: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 33
      FieldName = 'Adress'
      Size = 30
    end
    object TReaderabr: TStringField
      FieldKind = fkCalculated
      FieldName = 'abr'
      Size = 30
      Calculated = True
    end
  end
  object DSReader: TDataSource
    DataSet = TReader
    Left = 152
    Top = 160
  end
  object TAuthor: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = TAuthorCalcFields
    TableName = 'Author'
    Left = 40
    Top = 296
    object TAuthorid: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object TAuthorFirstName: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 24
      FieldName = 'FirstName'
    end
    object TAuthorLastName: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 21
      FieldName = 'LastName'
    end
    object TAuthorMiddleName: TStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      DisplayWidth = 22
      FieldName = 'MiddleName'
    end
    object TAuthorabr: TStringField
      DisplayLabel = #1040#1073#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'abr'
      Size = 30
      Calculated = True
    end
  end
  object DSAuthor: TDataSource
    DataSet = TAuthor
    Left = 40
    Top = 352
  end
  object TAuthorBook: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'ISBN'
    MasterFields = 'ISBN'
    MasterSource = DSBook
    TableName = 'AuthorBook'
    Left = 104
    Top = 296
    object TAuthorBookid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object TAuthorBookauthor_id: TIntegerField
      FieldName = 'author_id'
      Visible = False
    end
    object TAuthorBookISBN: TStringField
      FieldName = 'ISBN'
      Visible = False
      Size = 13
    end
    object TAuthorBookauthor_lf: TStringField
      FieldKind = fkLookup
      FieldName = 'author_lf'
      LookupDataSet = TAuthor
      LookupKeyFields = 'id'
      LookupResultField = 'abr'
      KeyFields = 'author_id'
      Visible = False
      Size = 50
      Lookup = True
    end
    object TAuthorBookAuthorName: TStringField
      DisplayLabel = #1040#1074#1090#1086#1088#1099
      FieldKind = fkLookup
      FieldName = 'AuthorName'
      LookupDataSet = TAuthor
      LookupKeyFields = 'id'
      LookupResultField = 'abr'
      KeyFields = 'author_id'
      Size = 100
      Lookup = True
    end
  end
  object DSAuthorBook: TDataSource
    DataSet = TAuthorBook
    Left = 104
    Top = 352
  end
  object TBook: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Book'
    Left = 168
    Top = 296
    object TBookISBN: TStringField
      FieldName = 'ISBN'
      Visible = False
      Size = 13
    end
    object TBookTitle: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 40
      FieldName = 'Title'
      Size = 40
    end
    object TBookpublishing_id: TIntegerField
      FieldName = 'publishing_id'
      Visible = False
    end
    object TBookyear: TWideStringField
      DisplayLabel = #1043#1086#1076
      DisplayWidth = 10
      FieldName = 'year'
      Size = 10
    end
    object TBookcategory2: TIntegerField
      FieldName = 'category'
      Visible = False
    end
    object TBookpublication_lf: TStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'publication_lf'
      LookupDataSet = TPublishing
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'publishing_id'
      Size = 30
      Lookup = True
    end
    object TBookCategoryName2: TStringField
      DisplayLabel = #1046#1072#1085#1088
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'CategoryName'
      LookupDataSet = TBookCategory
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'category'
      Size = 100
      Lookup = True
    end
  end
  object DSBook: TDataSource
    DataSet = TBook
    Left = 168
    Top = 352
  end
  object TBookCategory: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'BookCategory'
    Left = 240
    Top = 296
    object TBookCategoryid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object TBookCategoryname: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 112
      FieldName = 'name'
      Size = 70
    end
  end
  object DSBookCategory: TDataSource
    DataSet = TBookCategory
    Left = 240
    Top = 352
  end
  object TBookIssuing: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'BookIssuing'
    Left = 344
    Top = 128
    object TBookIssuingid: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
    end
    object TBookIssuingExemplar_id: TIntegerField
      DisplayWidth = 10
      FieldName = 'Exemplar_id'
      Visible = False
    end
    object TBookIssuingReader_id: TIntegerField
      DisplayWidth = 10
      FieldName = 'Reader_id'
      Visible = False
    end
    object TBookIssuingDateIssue: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
      FieldName = 'DateIssue'
      Size = 10
    end
    object TBookIssuingDateReturnExpected: TWideStringField
      DisplayLabel = #1054#1078#1080#1076#1072#1077#1084#1072#1103' '#1076#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
      DisplayWidth = 12
      FieldName = 'DateReturnExpected'
      Size = 10
    end
    object TBookIssuingDateReturnReal: TWideStringField
      DisplayLabel = #1056#1077#1072#1083#1100#1085#1072#1103' '#1076#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
      DisplayWidth = 27
      FieldName = 'DateReturnReal'
      Size = 10
    end
    object TBookIssuingWorker_id: TIntegerField
      DisplayWidth = 24
      FieldName = 'Worker_id'
      Visible = False
    end
    object TBookIssuingReaderName: TStringField
      FieldKind = fkLookup
      FieldName = 'ReaderName'
      LookupDataSet = TReader
      LookupKeyFields = 'id'
      LookupResultField = 'abr'
      KeyFields = 'Reader_id'
      Size = 30
      Lookup = True
    end
    object TBookIssuingWorkerName: TStringField
      DisplayLabel = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072#1088#1100
      FieldKind = fkLookup
      FieldName = 'WorkerName'
      LookupDataSet = TWorker
      LookupKeyFields = 'id'
      LookupResultField = 'FirstName'
      KeyFields = 'Worker_id'
      Size = 50
      Lookup = True
    end
    object TBookIssuingBookName: TStringField
      DisplayLabel = #1050#1085#1080#1075#1072
      FieldKind = fkLookup
      FieldName = 'BookName'
      LookupDataSet = TExemplar
      LookupKeyFields = 'id'
      LookupResultField = 'book_LF'
      KeyFields = 'Exemplar_id'
      Size = 50
      Lookup = True
    end
  end
  object DSBookIssuing: TDataSource
    DataSet = TBookIssuing
    Left = 344
    Top = 184
  end
  object TExemplar: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'IsDelete <> 1'
    Filtered = True
    TableName = 'Exemplar'
    Left = 376
    Top = 296
    object TExemplarid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object TExemplarplacement: TStringField
      DisplayLabel = #1052#1077#1089#1090#1086
      DisplayWidth = 33
      FieldName = 'placement'
      Size = 10
    end
    object TExemplarISBN: TStringField
      DisplayWidth = 57
      FieldName = 'ISBN'
      Size = 13
    end
    object TExemplarbook_LF: TStringField
      FieldKind = fkLookup
      FieldName = 'book_LF'
      LookupDataSet = TBook
      LookupKeyFields = 'ISBN'
      LookupResultField = 'Title'
      KeyFields = 'ISBN'
      Size = 100
      Lookup = True
    end
    object TExemplarDateCreate: TDateTimeField
      FieldName = 'DateCreate'
      Visible = False
    end
    object TExemplarIsDelete: TBooleanField
      DisplayLabel = #1057#1087#1080#1089#1072#1085
      FieldName = 'IsDelete'
      Visible = False
    end
  end
  object DSExemplar: TDataSource
    DataSet = TExemplar
    Left = 376
    Top = 352
  end
  object TPublishing: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Publishing'
    Left = 312
    Top = 296
    object TPublishingid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object TPublishingname: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 59
      FieldName = 'name'
    end
    object TPublishingcity: TStringField
      DisplayLabel = #1043#1086#1088#1086#1076
      DisplayWidth = 36
      FieldName = 'city'
      Size = 10
    end
  end
  object DSPublishing: TDataSource
    DataSet = TPublishing
    Left = 312
    Top = 352
  end
  object TReservation: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Reservation'
    Left = 424
    Top = 128
    object TReservationid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object TReservationdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object TReservationreader_id: TIntegerField
      DisplayLabel = #1063#1080#1090#1072#1090#1077#1083#1100
      FieldName = 'reader_id'
      Visible = False
    end
    object TReservationstatus2: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'status'
      Visible = False
    end
    object TReservationbook_LF: TStringField
      DisplayLabel = #1050#1085#1080#1075#1072
      FieldKind = fkLookup
      FieldName = 'book_LF'
      LookupDataSet = TExemplar
      LookupKeyFields = 'id'
      LookupResultField = 'book_LF'
      KeyFields = 'exemplar_id'
      Visible = False
      Size = 50
      Lookup = True
    end
    object TReservationBookName: TStringField
      DisplayLabel = #1050#1085#1080#1075#1072
      FieldKind = fkLookup
      FieldName = 'BookName'
      LookupDataSet = TExemplar
      LookupKeyFields = 'id'
      LookupResultField = 'book_LF'
      KeyFields = 'exemplar_id'
      Size = 50
      Lookup = True
    end
    object TReservationReaderName: TStringField
      DisplayLabel = #1063#1080#1090#1072#1090#1077#1083#1100
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'ReaderName'
      LookupDataSet = TReader
      LookupKeyFields = 'id'
      LookupResultField = 'FirstName'
      KeyFields = 'reader_id'
      Size = 50
      Lookup = True
    end
    object TReservationStatusNAme: TStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldKind = fkLookup
      FieldName = 'StatusNAme'
      LookupDataSet = TReservationStatus
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'status'
      Size = 19
      Lookup = True
    end
    object TReservationexemplar_id: TIntegerField
      FieldName = 'exemplar_id'
      Visible = False
    end
  end
  object DSReservation: TDataSource
    DataSet = TReservation
    Left = 424
    Top = 184
  end
  object TReservationStatus: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ReservationStatus'
    Left = 520
    Top = 128
  end
  object DSReservationStatus: TDataSource
    DataSet = TReservationStatus
    Left = 520
    Top = 184
  end
  object ViewCatalog: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'catalog'
    Left = 40
    Top = 432
    object ViewCatalogISBN: TStringField
      FieldName = 'ISBN'
      Size = 13
    end
    object ViewCatalogcategory: TStringField
      DisplayLabel = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      FieldName = 'category'
      Size = 70
    end
    object ViewCatalogTitle: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'Title'
      Size = 40
    end
    object ViewCatalogAuthor: TStringField
      DisplayLabel = #1040#1074#1090#1086#1088#1099
      FieldName = 'Author'
      Size = 25
    end
    object ViewCatalogname: TStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
      FieldName = 'name'
    end
    object ViewCatalogcity: TStringField
      DisplayLabel = #1043#1086#1088#1086#1076
      FieldName = 'city'
      Size = 10
    end
    object ViewCatalogyear: TWideStringField
      DisplayLabel = #1043#1086#1076
      FieldName = 'year'
      Size = 10
    end
    object ViewCatalogCount: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'CountAll'
    end
    object ViewCatalogAvailableCount: TIntegerField
      DisplayLabel = #1044#1086#1089#1090#1091#1087#1085#1086
      FieldName = 'AvailableCount'
    end
  end
  object DSCatalog: TDataSource
    DataSet = ViewCatalog
    Left = 40
    Top = 480
  end
  object ADOQueryUpdatePassMD5: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'UPDATE dbo.Users '
      'SET'
      ' passMD5 =  CAST(HASHBYTES('#39'MD5'#39', password) AS BINARY(16))')
    Left = 344
    Top = 24
  end
  object ViewAvailableBooks: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'AvailableBooks'
    Left = 128
    Top = 432
    object ViewAvailableBooksid: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1101#1082#1079#1077#1084#1087#1083#1103#1088#1072
      FieldName = 'id'
    end
    object ViewAvailableBooksISBN: TStringField
      FieldName = 'ISBN'
      Size = 13
    end
    object ViewAvailableBooksTitle: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'Title'
      Size = 40
    end
    object ViewAvailableBookspublishing_id: TIntegerField
      FieldName = 'publishing_id'
    end
    object ViewAvailableBookspublishing: TStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
      FieldName = 'publishing'
    end
    object ViewAvailableBooksyear: TWideStringField
      DisplayLabel = #1043#1086#1076
      FieldName = 'year'
      Size = 10
    end
    object ViewAvailableBookscategory_id: TIntegerField
      FieldName = 'category_id'
    end
    object ViewAvailableBookscategory: TStringField
      DisplayLabel = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      FieldName = 'category'
      Size = 70
    end
    object ViewAvailableBooksplacement: TStringField
      DisplayLabel = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077
      FieldName = 'placement'
      Size = 10
    end
  end
  object DSAvailableBooks: TDataSource
    DataSet = ViewAvailableBooks
    Left = 128
    Top = 480
  end
  object TBookIssuingReader: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Reader_id'
    MasterFields = 'id'
    MasterSource = DSReader
    TableName = 'BookIssuing'
    Left = 224
    Top = 104
    object AutoIncField1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'Exemplar_id'
      Visible = False
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'Reader_id'
      Visible = False
    end
    object WideStringField1: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
      FieldName = 'DateIssue'
      Size = 10
    end
    object WideStringField2: TWideStringField
      DisplayLabel = #1054#1078#1080#1076#1072#1077#1084#1072#1103' '#1076#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
      DisplayWidth = 12
      FieldName = 'DateReturnExpected'
      Size = 10
    end
    object WideStringField3: TWideStringField
      DisplayLabel = #1056#1077#1072#1083#1100#1085#1072#1103' '#1076#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
      DisplayWidth = 27
      FieldName = 'DateReturnReal'
      Size = 10
    end
    object IntegerField3: TIntegerField
      DisplayWidth = 24
      FieldName = 'Worker_id'
      Visible = False
    end
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'ReaderName'
      LookupDataSet = TReader
      LookupKeyFields = 'id'
      LookupResultField = 'abr'
      KeyFields = 'Reader_id'
      Size = 30
      Lookup = True
    end
    object StringField2: TStringField
      DisplayLabel = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072#1088#1100
      FieldKind = fkLookup
      FieldName = 'WorkerName'
      LookupDataSet = TWorker
      LookupKeyFields = 'id'
      LookupResultField = 'FirstName'
      KeyFields = 'Worker_id'
      Size = 50
      Lookup = True
    end
    object StringField3: TStringField
      DisplayLabel = #1050#1085#1080#1075#1072
      FieldKind = fkLookup
      FieldName = 'BookName'
      LookupDataSet = TExemplar
      LookupKeyFields = 'id'
      LookupResultField = 'book_LF'
      KeyFields = 'Exemplar_id'
      Size = 50
      Lookup = True
    end
  end
  object DsBookIssuingReader: TDataSource
    DataSet = TBookIssuingReader
    Left = 224
    Top = 160
  end
  object TOrders: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Orders'
    Left = 560
    Top = 296
    object TOrdersid: TAutoIncField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'id'
      ReadOnly = True
    end
    object TOrderspublishing_id: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1080#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1072
      FieldName = 'publishing_id'
      Visible = False
    end
    object TOrderspublishilg_LF: TStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
      FieldKind = fkLookup
      FieldName = 'publishilg_LF'
      LookupDataSet = TPublishing
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'publishing_id'
      Size = 30
      Lookup = True
    end
    object TOrdersbook_id: TStringField
      DisplayLabel = 'ISBN'
      FieldName = 'book_id'
      Visible = False
      Size = 13
    end
    object TOrdersbook_LF: TStringField
      DisplayLabel = #1050#1085#1080#1075#1072
      FieldKind = fkLookup
      FieldName = 'book_LF'
      LookupDataSet = TBook
      LookupKeyFields = 'ISBN'
      LookupResultField = 'Title'
      KeyFields = 'book_id'
      Size = 50
      Lookup = True
    end
    object TOrderscount: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'count'
    end
    object TOrdersprocessed: TBooleanField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'processed'
      DisplayValues = #1086#1073#1088#1072#1073#1086#1090#1072#1085';'#1085#1077' '#1086#1073#1088#1072#1073#1086#1090#1072#1085
    end
  end
  object DSOrder: TDataSource
    DataSet = TOrders
    Left = 560
    Top = 352
  end
  object TRepReaderActivity: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'start'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'end'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '  b.Title'
      ' ,bi.DateIssue'
      ' ,bi.DateReturnReal'
      'FROM LibraryDB.dbo.BookIssuing bi'
      'LEFT JOIN Exemplar e'
      '  ON bi.Exemplar_id = e.id'
      'LEFT JOIN Book b'
      '  ON e.ISBN = b.ISBN'
      'WHERE bi.Reader_id = :id'
      'AND bi.DateIssue > :start'
      'AND bi.DateReturnReal < :end')
    Left = 936
    Top = 256
    object TRepReaderActivityTitle: TStringField
      DisplayLabel = #1050#1085#1080#1075#1072
      FieldName = 'Title'
      Size = 40
    end
    object TRepReaderActivityDateIssue: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
      FieldName = 'DateIssue'
      Size = 10
    end
    object TRepReaderActivityDateReturnReal: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
      FieldName = 'DateReturnReal'
      Size = 10
    end
  end
  object DSRepReaderActivity: TDataSource
    DataSet = TRepReaderActivity
    Left = 936
    Top = 312
  end
  object ADOQueryReportOverdueBooks: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  bi.id'
      ' ,b.Title'
      ' ,bi.DateIssue'
      ' ,bi.DateReturnExpected'
      
        ' ,r.FirstName + '#39' '#39' + SUBSTRING(r.LastName, 1, 1) + '#39'.'#39' + SUBSTR' +
        'ING(r.MiddleName, 1, 1) + '#39'.'#39' AS '#39'Reader'#39
      ' ,r.Phone'
      'FROM LibraryDB.dbo.BookIssuing bi'
      'LEFT JOIN Exemplar e'
      '  ON bi.Exemplar_id = e.id'
      'LEFT JOIN Book b'
      '  ON e.ISBN = b.ISBN'
      'LEFT JOIN Reader r'
      '  ON bi.Reader_id = r.id'
      'WHERE bi.DateReturnReal IS NULL')
    Left = 808
    Top = 256
    object ADOQueryReportOverdueBooksid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object ADOQueryReportOverdueBooksTitle: TStringField
      DisplayLabel = #1050#1085#1080#1075#1072
      DisplayWidth = 31
      FieldName = 'Title'
      Size = 40
    end
    object ADOQueryReportOverdueBooksDateIssue: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
      DisplayWidth = 11
      FieldName = 'DateIssue'
      Size = 10
    end
    object ADOQueryReportOverdueBooksDateReturnExpected: TWideStringField
      DisplayLabel = #1054#1078#1080#1076#1072#1077#1084#1072#1103' '#1076#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
      DisplayWidth = 22
      FieldName = 'DateReturnExpected'
      Size = 10
    end
    object ADOQueryReportOverdueBooksReader: TStringField
      DisplayLabel = #1063#1080#1090#1072#1090#1077#1083#1100
      DisplayWidth = 25
      FieldName = 'Reader'
      ReadOnly = True
      Size = 25
    end
    object ADOQueryReportOverdueBooksPhone: TStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      DisplayWidth = 16
      FieldName = 'Phone'
      Size = 16
    end
  end
  object DSOverdueBooks: TDataSource
    DataSet = ADOQueryReportOverdueBooks
    Left = 808
    Top = 320
  end
end
