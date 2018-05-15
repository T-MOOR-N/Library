unit UnitLibrarianAccount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, ComCtrls, Data.DB, Vcl.WinXCtrls, Data.Win.ADODB;

type
  TFormLibrary = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button7: TButton;
    GroupBox8: TGroupBox;
    DBGridReader: TDBGrid;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    ButtonIssueBook: TButton;
    ButtonReturnBook: TButton;
    DBGridBookIssuing: TDBGrid;
    GroupBoxBookIssue: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label7: TLabel;
    ButtonBookIssueSave: TButton;
    DBGridReservations: TDBGrid;
    GroupBox9: TGroupBox;
    DBGrid3: TDBGrid;
    SearchBoxReader: TSearchBox;
    SearchBox1: TSearchBox;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    SearchBoxCatalog: TSearchBox;
    GroupBox1: TGroupBox;
    DBGridCatalog: TDBGrid;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    SearchBoxAvailableBooks: TSearchBox;
    GroupBox4: TGroupBox;
    DBGridAvailableBooks: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet7: TTabSheet;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBGridBookHistory: TDBGrid;
    TBHCategory: TADOTable;
    DSTBHCategory: TDataSource;
    TBHBook: TADOTable;
    DSTBHBook: TDataSource;
    DSTBHExemplar: TDataSource;
    TBHExemplar: TADOTable;
    TBHHistory: TADOTable;
    DSTBHHistory: TDataSource;
    TBHHistoryExemplar_id: TIntegerField;
    TBHHistoryReader: TStringField;
    TBHHistoryDateIssue: TWideStringField;
    TBHHistoryDateReturnExpected: TWideStringField;
    TBHHistoryDateReturnReal: TWideStringField;
    ComboBoxBookSearch: TComboBox;
    ButtonSearchBoxCatalogClear: TButton;
    ComboBoxAvailableBooks: TComboBox;
    ButtonSearchBoxAvailableBooksClear: TButton;
    ButtonSearchBoxReaderClear: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonSearchBoxCatalogClearClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SearchBoxReaderInvokeSearch(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure SearchBoxCatalogInvokeSearch(Sender: TObject);
    procedure SearchBoxAvailableBooksInvokeSearch(Sender: TObject);
    procedure ButtonIssueBookClick(Sender: TObject);
    procedure ButtonBookIssueSaveClick(Sender: TObject);
    procedure DBGridBookIssuingKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonReturnBookClick(Sender: TObject);
    procedure ButtonSearchBoxAvailableBooksClearClick(Sender: TObject);
    procedure ButtonSearchBoxReaderClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLibrary: TFormLibrary;

implementation

{$R *.dfm}

uses UDM, UnitBook, UnitReader;

procedure TFormLibrary.ButtonBookIssueSaveClick(Sender: TObject);
begin
  if DM.TBookIssuing.State in [dsInsert] then
  begin
    DM.TBookIssuing.FieldByName('DateIssue').Value := DateTimePicker1.DateTime;
    DM.TBookIssuing.FieldByName('DateReturnExpected').Value :=
      DateTimePicker2.DateTime;
    DM.TBookIssuing.FieldByName('Worker_id').Value := DM.TWorker.Fields
      [0].Value;
    DM.TBookIssuing.Post;
    GroupBoxBookIssue.Enabled := false;
  end;
  GroupBoxBookIssue.Visible := false;
  ButtonReturnBook.Enabled := true;
  DBGridBookIssuing.Enabled := true;
end;

procedure TFormLibrary.Button1Click(Sender: TObject);
begin
  DM.TReader.Insert;

  case FormAddReadTicket.ShowModal of
    mrOk:
      begin
        DM.TReader.Post;
        // DM.TUsers.Locate('user_id;type', VarArrayOf([DM.TReader.Fields[0].Value, 'reader']), [loPartialKey]);

        // DM.TUsers.Insert;
        // DM.TUsers.FieldByName('type').Value := 'reader';
        // DM.TUsers.FieldByName('user_id').Value := DM.TReader.Fields[0].Value;
        // DM.TUsers.FieldByName('login').Value :=
        // FormAddReadTicket.EditLogin.Text;
        // DM.TUsers.FieldByName('password').Value :=
        // FormAddReadTicket.EditPass.Text;
        // DM.TUsers.Post;
        // // обновим пароль MD5
        // DM.ADOQueryUpdatePassMD5.ExecSQL;
      end;
    mrCancel:
      begin
        DM.TReader.Cancel;
        // DM.TUsers.Cancel;
      end;
  end;
end;

procedure TFormLibrary.Button2Click(Sender: TObject);
begin
  DM.TReader.Edit;
  // DM.TUsers.Locate('user_id;type', VarArrayOf([DM.TReader.Fields[0].Value,
  // 'reader']), [loPartialKey]);
  //
  // DM.TUsers.Edit;
  // FormAddReadTicket.EditLogin.Text := DM.TUsers.FieldByName('login').Value;
  // FormAddReadTicket.EditPass.Text := DM.TUsers.FieldByName('password').Value;

  case FormAddReadTicket.ShowModal of
    mrOk:
      begin
        DM.TReader.Post;
        // DM.TUsers.FieldByName('type').Value := 'reader';
        // DM.TUsers.FieldByName('user_id').Value := DM.TReader.Fields[0].Value;
        // DM.TUsers.FieldByName('login').Value :=
        // FormAddReadTicket.EditLogin.Text;
        // DM.TUsers.FieldByName('password').Value :=
        // FormAddReadTicket.EditPass.Text;
        // DM.TUsers.Post;
      end;
    mrCancel:
      begin
        DM.TReader.Cancel;
        DM.TUsers.Cancel;
      end;
  end;
end;

procedure TFormLibrary.ButtonSearchBoxReaderClearClick(Sender: TObject);
begin
  DM.TReader.Filtered := false
end;

procedure TFormLibrary.ButtonSearchBoxAvailableBooksClearClick(Sender: TObject);
begin
  DM.ViewAvailableBooks.Filtered := false;
end;

procedure TFormLibrary.ButtonSearchBoxCatalogClearClick(Sender: TObject);
begin
  DM.ViewCatalog.Filtered := false;
end;

procedure TFormLibrary.Button7Click(Sender: TObject);
begin
  // if DM.TUsers.Locate('user_id', DM.TReader.Fields[0].AsInteger,
  // [loCaseInsensitive, loPartialKey]) then
  // begin
  // DM.TUsers.Delete;
  DM.TReader.Delete;
  // end;
end;

procedure TFormLibrary.ButtonIssueBookClick(Sender: TObject);
begin
  DM.TBookIssuing.Insert;
  GroupBoxBookIssue.Enabled := true;
  GroupBoxBookIssue.Visible := true;
  ButtonReturnBook.Enabled := false;
  DBGridBookIssuing.Enabled := false;
end;

procedure TFormLibrary.ButtonReturnBookClick(Sender: TObject);
begin
  DM.TBookIssuing.Edit;

  DM.TBookIssuing.FieldByName('DateReturnReal').Value := now();

  DM.TBookIssuing.Post;
end;

procedure TFormLibrary.DBGridBookIssuingKeyPress(Sender: TObject;
  var Key: Char);
begin
  // if DM.TBookIssuing.State in [dsInsert] then
  // GroupBoxBookIssue.Enabled := true
  // else
  // GroupBoxBookIssue.Enabled := false;
end;

procedure TFormLibrary.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFormLibrary.SearchBoxReaderInvokeSearch(Sender: TObject);
var
  SearchTerm: string;
begin
  // здесь будет поиск
  // if not DM.TReader.Locate('LastName', SearchBoxReader.Text, [loPartialKey])
  // then
  // if not DM.TReader.Locate('FirstName', SearchBoxReader.Text, [loPartialKey])
  // then
  // if not DM.TReader.Locate('MiddleName', SearchBoxReader.Text,
  // [loPartialKey]) then
  // DM.TReader.Locate('Phone', SearchBoxReader.Text, [loPartialKey]);
  SearchTerm := SearchBoxReader.Text;
  if SearchTerm = '' then
    DM.TReader.Filtered := false
  else
  begin
    DM.TReader.Filter := 'LastName' + ' LIKE ' + QuotedStr(SearchTerm + '*') +
      ' OR ' + 'FirstName' + ' LIKE ' + QuotedStr(SearchTerm + '*') + ' OR ' +
      'MiddleName' + ' LIKE ' + QuotedStr(SearchTerm + '*');
    DM.TReader.Filtered := true;
  end;
end;

procedure TFormLibrary.SearchBoxAvailableBooksInvokeSearch(Sender: TObject);
var
  FieldName, SearchTerm: string;
begin
  case ComboBoxAvailableBooks.ItemIndex of
    0:
      FieldName := 'Title';
    1:
      FieldName := 'category';
    2:
      FieldName := 'publishing';
  end;

  SearchTerm := SearchBoxAvailableBooks.Text;
  DM.DoIncrementalFilter(DM.ViewAvailableBooks, FieldName, SearchTerm);
end;

procedure TFormLibrary.SearchBoxCatalogInvokeSearch(Sender: TObject);
var
  FieldName, SearchTerm: string;
begin
  case ComboBoxBookSearch.ItemIndex of
    0:
      FieldName := 'Title';
    1:
      FieldName := 'category';
    2:
      FieldName := 'Author';
    3:
      FieldName := 'name';
  end;

  SearchTerm := SearchBoxCatalog.Text;
  DM.DoIncrementalFilter(DM.ViewCatalog, FieldName, SearchTerm);
end;

end.
