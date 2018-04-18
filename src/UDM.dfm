object DM: TDM
  OldCreateOrder = False
  Height = 541
  Width = 619
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
    TableName = 'Users'
    Left = 40
    Top = 104
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
    TableName = 'Worker'
    Left = 96
    Top = 104
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
    TableName = 'Reader'
    Left = 152
    Top = 104
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
      FieldName = 'id'
      ReadOnly = True
    end
    object TAuthorFirstName: TStringField
      FieldName = 'FirstName'
    end
    object TAuthorLastName: TStringField
      FieldName = 'LastName'
    end
    object TAuthorMiddleName: TStringField
      FieldName = 'MiddleName'
    end
    object TAuthorabr: TStringField
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
    end
    object TAuthorBookauthor_id: TIntegerField
      FieldName = 'author_id'
    end
    object TAuthorBookISBN: TStringField
      FieldName = 'ISBN'
      Size = 13
    end
    object TAuthorBookauthor_lf: TStringField
      FieldKind = fkLookup
      FieldName = 'author_lf'
      LookupDataSet = TAuthor
      LookupKeyFields = 'id'
      LookupResultField = 'abr'
      KeyFields = 'author_id'
      Size = 50
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
    Left = 280
    Top = 136
  end
  object DSBookIssuing: TDataSource
    DataSet = TBookIssuing
    Left = 280
    Top = 192
  end
  object TExemplar: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Exemplar'
    Left = 376
    Top = 296
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
    Left = 360
    Top = 136
  end
  object DSReservation: TDataSource
    DataSet = TReservation
    Left = 360
    Top = 192
  end
  object TReservationStatus: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ReservationStatus'
    Left = 456
    Top = 136
  end
  object DSReservationStatus: TDataSource
    DataSet = TReservationStatus
    Left = 456
    Top = 192
  end
  object note: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'catalog'
    Left = 40
    Top = 432
  end
  object DSCatalog: TDataSource
    DataSet = note
    Left = 40
    Top = 480
  end
end
