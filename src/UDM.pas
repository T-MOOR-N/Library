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
