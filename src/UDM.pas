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

end.
