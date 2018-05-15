unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    TUsers: TADOTable;
    DSUsers: TDataSource;
    TWorker: TADOTable;
    DSWorker: TDataSource;
    TReader: TADOTable;
    DSReader: TDataSource;
    TAuthor: TADOTable;
    DSAuthor: TDataSource;
    TAuthorBook: TADOTable;
    DSAuthorBook: TDataSource;
    TBook: TADOTable;
    DSBook: TDataSource;
    TBookCategory: TADOTable;
    DSBookCategory: TDataSource;
    TBookIssuing: TADOTable;
    DSBookIssuing: TDataSource;
    TExemplar: TADOTable;
    DSExemplar: TDataSource;
    TPublishing: TADOTable;
    DSPublishing: TDataSource;
    TReservation: TADOTable;
    DSReservation: TDataSource;
    TReservationStatus: TADOTable;
    DSReservationStatus: TDataSource;
    ViewCatalog: TADOTable;
    DSCatalog: TDataSource;
    TAuthorBookid: TAutoIncField;
    TAuthorBookauthor_id: TIntegerField;
    TAuthorBookISBN: TStringField;
    TAuthorBookauthor_lf: TStringField;
    TAuthorid: TAutoIncField;
    TAuthorFirstName: TStringField;
    TAuthorLastName: TStringField;
    TAuthorMiddleName: TStringField;
    TAuthorabr: TStringField;
    TBookISBN: TStringField;
    TBookTitle: TStringField;
    TBookpublishing_id: TIntegerField;
    TBookyear: TWideStringField;
    TBookcategory2: TIntegerField;
    TBookpublication_lf: TStringField;
    TWorkerid: TAutoIncField;
    TWorkerFirstName: TStringField;
    TWorkerLastName: TStringField;
    TReaderid: TAutoIncField;
    TReaderFirstName: TStringField;
    TReaderLastName: TStringField;
    TReaderMiddleName: TStringField;
    TReaderPhone: TStringField;
    TReaderAdress: TStringField;
    TBookCategoryid: TAutoIncField;
    TBookCategoryname: TStringField;
    TPublishingid: TAutoIncField;
    TPublishingname: TStringField;
    TPublishingcity: TStringField;
    TBookCategoryName2: TStringField;
    TExemplarid: TAutoIncField;
    TExemplarplacement: TStringField;
    TExemplarISBN: TStringField;
    TAuthorBookAuthorName: TStringField;
    TReservationdate: TDateTimeField;
    TReservationexemplar_id: TIntegerField;
    TReservationreader_id: TIntegerField;
    TReservationstatus2: TIntegerField;
    TBookIssuingid: TAutoIncField;
    TBookIssuingExemplar_id: TIntegerField;
    TBookIssuingReader_id: TIntegerField;
    TBookIssuingDateIssue: TWideStringField;
    TBookIssuingDateReturnExpected: TWideStringField;
    TBookIssuingDateReturnReal: TWideStringField;
    TBookIssuingWorker_id: TIntegerField;
    ViewCatalogISBN: TStringField;
    ViewCatalogcategory: TStringField;
    ViewCatalogTitle: TStringField;
    ViewCatalogAuthor: TStringField;
    ViewCatalogname: TStringField;
    ViewCatalogcity: TStringField;
    ViewCatalogyear: TWideStringField;
    ViewCatalogCount: TIntegerField;
    TUsersid: TAutoIncField;
    TUserstype: TStringField;
    TUsersuser_id: TIntegerField;
    TUserslogin: TStringField;
    TUserspassword: TStringField;
    TUserspassMD5: TBytesField;
    TExemplarbook_LF: TStringField;
    TReservationid: TAutoIncField;
    TReservationbook_LF: TStringField;
    TBookIssuingWorkerName: TStringField;
    TBookIssuingBookName: TStringField;
    TReservationBookName: TStringField;
    TReservationReaderName: TStringField;
    TReservationStatusNAme: TStringField;
    ADOQueryUpdatePassMD5: TADOQuery;
    ViewAvailableBooks: TADOTable;
    DSAvailableBooks: TDataSource;
    ViewAvailableBooksid: TIntegerField;
    ViewAvailableBooksISBN: TStringField;
    ViewAvailableBooksTitle: TStringField;
    ViewAvailableBookspublishing_id: TIntegerField;
    ViewAvailableBookspublishing: TStringField;
    ViewAvailableBooksyear: TWideStringField;
    ViewAvailableBookscategory_id: TIntegerField;
    ViewAvailableBookscategory: TStringField;
    ViewAvailableBooksplacement: TStringField;
    TReaderabr: TStringField;
    TBookIssuingReaderName: TStringField;
    TBookIssuingReader: TADOTable;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DsBookIssuingReader: TDataSource;
    TOrders: TADOTable;
    DSOrder: TDataSource;
    TOrdersid: TAutoIncField;
    TOrderspublishing_id: TIntegerField;
    TOrdersbook_id: TStringField;
    TOrderscount: TIntegerField;
    TOrdersprocessed: TBooleanField;
    TOrderspublishilg_LF: TStringField;
    TOrdersbook_LF: TStringField;
    TWorkerIsDelete: TBooleanField;
    TWorkerDateCreate: TDateTimeField;
    TExemplarDateCreate: TDateTimeField;
    TExemplarIsDelete: TBooleanField;
    TRepReaderActivity: TADOQuery;
    DSRepReaderActivity: TDataSource;
    TRepReaderActivityTitle: TStringField;
    TRepReaderActivityDateIssue: TWideStringField;
    TRepReaderActivityDateReturnReal: TWideStringField;
    ADOQueryReportOverdueBooks: TADOQuery;
    DSOverdueBooks: TDataSource;
    ADOQueryReportOverdueBooksid: TAutoIncField;
    ADOQueryReportOverdueBooksTitle: TStringField;
    ADOQueryReportOverdueBooksDateIssue: TWideStringField;
    ADOQueryReportOverdueBooksDateReturnExpected: TWideStringField;
    ADOQueryReportOverdueBooksReader: TStringField;
    ADOQueryReportOverdueBooksPhone: TStringField;
    procedure TAuthorCalcFields(DataSet: TDataSet);
    procedure TReaderCalcFields(DataSet: TDataSet);
    procedure DoIncrementalFilter(DataSet: TDataSet;
      const FieldName, SearchTerm: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDM.TAuthorCalcFields(DataSet: TDataSet);
begin
  if (DataSet.FieldByName('LastName').AsString.IsEmpty or
    DataSet.FieldByName('FirstName').AsString.IsEmpty or
    DataSet.FieldByName('MiddleName').AsString.IsEmpty) then
    exit;

  DataSet.FieldByName('abr').value := DataSet.FieldByName('FirstName').AsString
    + ' ' + DataSet.FieldByName('LastName').AsString[1] + '.' +
    DataSet.FieldByName('MiddleName').AsString[1];
end;

procedure TDM.TReaderCalcFields(DataSet: TDataSet);
begin
  if (DataSet.FieldByName('LastName').AsString.IsEmpty or
    DataSet.FieldByName('FirstName').AsString.IsEmpty or
    DataSet.FieldByName('MiddleName').AsString.IsEmpty) then
    exit;

  DataSet.FieldByName('abr').value := DataSet.FieldByName('FirstName').AsString
    + ' ' + DataSet.FieldByName('LastName').AsString[1] + '.' +
    DataSet.FieldByName('MiddleName').AsString[1];
end;

procedure TDM.DoIncrementalFilter(DataSet: TDataSet;
  const FieldName, SearchTerm: string);
begin
  Assert(Assigned(DataSet), 'No dataset is assigned');

  if SearchTerm = '' then
    DataSet.Filtered := False
  else
  begin
    DataSet.Filter := FieldName + ' LIKE ' + QuotedStr(SearchTerm + '*');
    DataSet.Filtered := True;
  end;
end;

end.
