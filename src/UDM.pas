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
    note: TADOTable;
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
    noteISBN: TStringField;
    notecategory: TStringField;
    noteTitle: TStringField;
    noteAuthor: TStringField;
    notename: TStringField;
    notecity: TStringField;
    noteyear: TWideStringField;
    noteCount: TIntegerField;
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
    TBookIssuingReaderName: TStringField;
    TBookIssuingBookName: TStringField;
    TReservationBookName: TStringField;
    TReservationReaderName: TStringField;
    TReservationStatusNAme: TStringField;
    ADOQueryUpdatePassMD5: TADOQuery;
    procedure TAuthorCalcFields(DataSet: TDataSet);
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

  DataSet.FieldByName('abr').value := DataSet.FieldByName('LastName').AsString +
    ' ' + DataSet.FieldByName('FirstName').AsString[1] + '.' +
    DataSet.FieldByName('MiddleName').AsString[1];
end;

end.
