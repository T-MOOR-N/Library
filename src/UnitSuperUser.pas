unit UnitSuperUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  UDM, Vcl.Menus, Vcl.WinXCtrls, Data.Win.ADODB;

type
  TFormSuper = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheetReaders: TTabSheet;
    TabSheetWorker: TTabSheet;
    DBGridReader: TDBGrid;
    DBGridWorkers: TDBGrid;
    TabSheetCatalog: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGridCategory: TDBGrid;
    DBGridAuthor: TDBGrid;
    Panel2: TPanel;
    SpeedButtonAddAuthor: TSpeedButton;
    SpeedButtonEditAuthor: TSpeedButton;
    Panel3: TPanel;
    SpeedButtonAddCategory: TSpeedButton;
    GroupBox4: TGroupBox;
    DBGridPublishig: TDBGrid;
    Panel4: TPanel;
    SpeedButtonAddPublishig: TSpeedButton;
    SpeedButtonEditPublishig: TSpeedButton;
    GroupBox6: TGroupBox;
    GroupBox5: TGroupBox;
    Panel5: TPanel;
    SpeedButtonAddBook: TSpeedButton;
    SpeedButtonEditBook: TSpeedButton;
    SpeedButtonDeleteBook: TSpeedButton;
    DBGrid1: TDBGrid;
    GroupBox7: TGroupBox;
    Panel7: TPanel;
    SpeedButtonAddExemplar: TSpeedButton;
    SpeedButtonEditExemplar: TSpeedButton;
    SpeedButtonDeleteExemplar: TSpeedButton;
    DBGrid3: TDBGrid;
    ButtonCanselAuthor: TButton;
    ButtonOKBookAuthor: TButton;
    Panel8: TPanel;
    DBEdit3: TDBEdit;
    Panel9: TPanel;
    Label13: TLabel;
    DBEditPlace: TDBEdit;
    DBEditISBM: TDBEdit;
    ButtonOKExemplar: TButton;
    Panel10: TPanel;
    Label14: TLabel;
    DBEditAuthorFirstName: TDBEdit;
    DBEditAuthorMiddleName: TDBEdit;
    ButtonEditAuthor: TButton;
    Label12: TLabel;
    Label15: TLabel;
    Panel11: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    DBEditPublishingName: TDBEdit;
    DBEditPublishingCity: TDBEdit;
    ButtonEditPublishing: TButton;
    Panel12: TPanel;
    ButtonEditBookCategory: TButton;
    Label20: TLabel;
    DBEditAuthorLastName: TDBEdit;
    DBEditBookCategoryName: TDBEdit;
    Label18: TLabel;
    Label4: TLabel;
    DBEditBookName: TDBEdit;
    Label10: TLabel;
    DBLookupComboBoxBookCategory: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBoxBookPublishing: TDBLookupComboBox;
    Label11: TLabel;
    DBEditBookYear: TDBEdit;
    DBLookupComboBoxAuthor: TDBLookupComboBox;
    ButtonBookAddAuthor: TButton;
    DBGrid2: TDBGrid;
    Label19: TLabel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    ButtonDeleteUser: TButton;
    ButtonCreateUser: TButton;
    ButtonEditUser: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    SpeedButtonCansel: TSpeedButton;
    DBEditFirstName: TDBEdit;
    DBEditLastName: TDBEdit;
    DBEditMiddleName: TDBEdit;
    DBEditLogin: TDBEdit;
    DBEditPassword: TDBEdit;
    DBEditAddres: TDBEdit;
    DBEditPhone: TDBEdit;
    Panel6: TPanel;
    ButtonRetire: TButton;
    ButtonNewLibrarian: TButton;
    Button3: TButton;
    GroupBoxWorker: TGroupBox;
    ButtonOKUser: TButton;
    Button4: TButton;
    SearchBox1: TSearchBox;
    TabSheet3: TTabSheet;
    TBHCategory: TADOTable;
    DSTBHCategory: TDataSource;
    DSTBHBook: TDataSource;
    TBHBook: TADOTable;
    TBHExemplar: TADOTable;
    DSTBHExemplar: TDataSource;
    DSTBHHistory: TDataSource;
    TBHHistory: TADOTable;
    TBHHistoryExemplar_id: TIntegerField;
    TBHHistoryDateIssue: TWideStringField;
    TBHHistoryDateReturnExpected: TWideStringField;
    TBHHistoryDateReturnReal: TWideStringField;
    TBHHistoryReader: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    PageControl3: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    PageControl4: TPageControl;
    TabSheet6: TTabSheet;
    Panel13: TPanel;
    GroupBox9: TGroupBox;
    SearchBoxCatalog: TSearchBox;
    ComboBoxBookSearch: TComboBox;
    ButtonSearchBoxCatalogClear: TButton;
    GroupBox10: TGroupBox;
    DBGridCatalog: TDBGrid;
    TabSheet7: TTabSheet;
    Panel14: TPanel;
    GroupBox11: TGroupBox;
    SearchBoxAvailableBooks: TSearchBox;
    ComboBoxAvailableBooks: TComboBox;
    ButtonSearchBoxAvailableBooksClear: TButton;
    GroupBox12: TGroupBox;
    DBGridAvailableBooks: TDBGrid;
    TabSheet8: TTabSheet;
    GroupBox13: TGroupBox;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBGridBookHistory: TDBGrid;
    DBGridOrders: TDBGrid;
    Panel15: TPanel;
    GroupBoxCreateOrder: TGroupBox;
    ButtonCreateorder: TButton;
    ButtonBooksIncoming: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    ButtonSaveOrder: TButton;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    GroupBox15: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    EditLogin: TEdit;
    EditPass: TEdit;
    GroupBox16: TGroupBox;
    Label22: TLabel;
    Label24: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    publishing: TADOTable;
    DSPub: TDataSource;
    book: TADOTable;
    DSBook: TDataSource;
    orders: TADOTable;
    DSOrders: TDataSource;
    TOrdersid: TAutoIncField;
    TOrderspublishing_id: TIntegerField;
    TOrderspublishilg_LF: TStringField;
    TOrdersbook_id: TStringField;
    TOrdersbook_LF: TStringField;
    TOrderscount: TIntegerField;
    TOrdersprocessed: TBooleanField;
    ButtonWriteOffExemplar: TButton;
    TabSheet9: TTabSheet;
    Panel16: TPanel;
    ButtonReaderActivity: TButton;
    PageControlReports: TPageControl;
    TabSheet10: TTabSheet;
    DBGrid4: TDBGrid;
    Panel17: TPanel;
    Button1: TButton;
    GroupBox14: TGroupBox;
    Label21: TLabel;
    DateTimePickerStart: TDateTimePicker;
    Label25: TLabel;
    DateTimePickerEnd: TDateTimePicker;
    Label33: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Button2: TButton;
    Button5: TButton;
    TabSheet11: TTabSheet;
    ButtonOverdueBooks: TButton;
    DBGrid5: TDBGrid;
    Panel18: TPanel;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    SearchBoxWorker: TSearchBox;
    SpeedButtonSearchWorkerCancel: TSpeedButton;
    ButtonWorkerEditCancel: TButton;
    procedure ButtonCreateUserClick(Sender: TObject);
    procedure ButtonOKUserClick(Sender: TObject);
    procedure ButtonEditUserClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ButtonNewLibrarianClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ButtonRetireClick(Sender: TObject);
    procedure ButtonBookAddAuthorClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SpeedButtonEditBookClick(Sender: TObject);
    procedure SpeedButtonAddBookClick(Sender: TObject);
    procedure SpeedButtonDeleteBookClick(Sender: TObject);
    procedure ButtonOKBookAuthorClick(Sender: TObject);
    procedure ButtonCanselAuthorClick(Sender: TObject);
    procedure SpeedButtonAddExemplarClick(Sender: TObject);
    procedure ButtonOKExemplarClick(Sender: TObject);
    procedure SpeedButtonEditExemplarClick(Sender: TObject);
    procedure SpeedButtonDeleteExemplarClick(Sender: TObject);
    procedure ButtonDeleteUserClick(Sender: TObject);
    procedure ButtonEditAuthorClick(Sender: TObject);
    procedure SpeedButtonAddAuthorClick(Sender: TObject);
    procedure SpeedButtonEditAuthorClick(Sender: TObject);
    procedure ButtonEditPublishingClick(Sender: TObject);
    procedure SpeedButtonAddPublishigClick(Sender: TObject);
    procedure SpeedButtonEditPublishigClick(Sender: TObject);
    procedure ButtonEditBookCategoryClick(Sender: TObject);
    procedure SpeedButtonAddCategoryClick(Sender: TObject);
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure DBGridOrdersCellClick(Column: TColumn);
    procedure ButtonCreateorderClick(Sender: TObject);
    procedure ButtonSaveOrderClick(Sender: TObject);
    procedure ButtonBooksIncomingClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridWorkersCellClick(Column: TColumn);
    procedure ButtonWriteOffExemplarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ButtonReaderActivityClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure ButtonOverdueBooksClick(Sender: TObject);
    procedure SpeedButtonSearchWorkerCancelClick(Sender: TObject);
    procedure SearchBoxWorkerInvokeSearch(Sender: TObject);
    procedure SearchBoxWorkerKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonWorkerEditCancelClick(Sender: TObject);
    procedure SearchBoxCatalogInvokeSearch(Sender: TObject);
    procedure ButtonSearchBoxCatalogClearClick(Sender: TObject);
    procedure SearchBoxAvailableBooksInvokeSearch(Sender: TObject);
    procedure ButtonSearchBoxAvailableBooksClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSuper: TFormSuper;

implementation

{$R *.dfm}

uses UnitReportReaderActivity, UnitReportOverdueBooks;

procedure TFormSuper.ButtonReaderActivityClick(Sender: TObject);
begin
  PageControlReports.ActivePageIndex := 0;
end;

procedure TFormSuper.ButtonRetireClick(Sender: TObject);
begin
  dm.TWorker.Edit;
  dm.TWorker.FieldByName('IsDelete').Value := True;
  dm.TWorker.Post;
end;

procedure TFormSuper.ButtonNewLibrarianClick(Sender: TObject);
begin
  dm.TWorker.Insert;
  DBGridWorkers.Enabled := false;
  GroupBoxWorker.Enabled := True;
  EditLogin.Text := '';
  EditPass.Text := '';
end;

procedure TFormSuper.ButtonWorkerEditCancelClick(Sender: TObject);
begin
  dm.TWorker.Cancel;
  DBGridWorkers.Enabled := True;
  GroupBoxWorker.Enabled := false;
end;

procedure TFormSuper.ButtonWriteOffExemplarClick(Sender: TObject);
var
  id: integer; // код экземпл€ра на пометку - удаление
begin
  id := dm.DSAvailableBooks.DataSet.Fields[0].Value;

  if dm.TExemplar.Locate('id', id, [loCaseInsensitive, loPartialKey]) then
  begin
    dm.TExemplar.Edit;
    dm.TExemplar.FieldByName('IsDelete').Value := True;
    dm.TExemplar.Post;
  end;
end;

procedure TFormSuper.Button1Click(Sender: TObject);
begin
  Form1.QuickRep1.Preview;
end;

procedure TFormSuper.Button2Click(Sender: TObject);
begin
  Form1.QuickRep1.Print;
end;

procedure TFormSuper.Button3Click(Sender: TObject);
var
  sNewPass: string;
begin
  // выводим окно до тех пор пока не будет введн пароль
  while sNewPass.IsEmpty do
    sNewPass := InputBox('—мена парол€', '¬велите новый пароль: ', '');

  dm.TUsers.Edit;
  dm.TUsers.FieldByName('password').Value := sNewPass;
  dm.TUsers.Post;
  ShowMessage('ѕароль успешно сменен');
  // обновим пароль MD5
  dm.ADOQueryUpdatePassMD5.ExecSQL;
end;

procedure TFormSuper.Button4Click(Sender: TObject);
begin
  if dm.TWorker.State = dsEdit then
    dm.TUsers.Edit
  else if dm.TWorker.State = dsInsert then
  begin
    dm.TWorker.Post;
    dm.TUsers.Insert;
  end
  else
    exit;

  dm.TUsers.FieldByName('login').Value := EditLogin.Text;
  dm.TUsers.FieldByName('password').Value := EditPass.Text;

  dm.TUsers.FieldByName('user_id').Value := dm.TWorker.Fields[0].Value;

  dm.TUsers.Post;
  if dm.TWorker.State = dsEdit then
    dm.TWorker.Post;

  DBGridWorkers.Enabled := True;
  GroupBoxWorker.Enabled := false;

  // обновим пароль MD5
  dm.ADOQueryUpdatePassMD5.ExecSQL;
end;

procedure TFormSuper.Button5Click(Sender: TObject);
begin
  with dm do
  begin

    TRepReaderActivity.Close;
    TRepReaderActivity.Parameters.ParamByName('id').Value :=
      TReader.Fields[0].Value;
    TRepReaderActivity.Parameters.ParamByName('start').Value :=
      DateToStr(DateTimePickerStart.Date);
    TRepReaderActivity.Parameters.ParamByName('end').Value :=
      DateToStr(DateTimePickerEnd.Date);

    TRepReaderActivity.Open;

  end;
end;

procedure TFormSuper.Button6Click(Sender: TObject);
begin
  dm.ADOQueryReportOverdueBooks.Open;
end;

procedure TFormSuper.Button7Click(Sender: TObject);
begin
  FormReportOverdueBooks.QuickRep1.Preview;
end;

procedure TFormSuper.Button8Click(Sender: TObject);
begin
  FormReportOverdueBooks.QuickRep1.Print;
end;

procedure TFormSuper.ButtonSaveOrderClick(Sender: TObject);
begin
  orders.FieldByName('processed').Value := false;
  orders.Post;
  DBGridOrders.Enabled := True;
  GroupBoxCreateOrder.Enabled := false;
end;

procedure TFormSuper.ButtonSearchBoxAvailableBooksClearClick(Sender: TObject);
begin
  dm.ViewAvailableBooks.Filtered := false;
end;

procedure TFormSuper.ButtonSearchBoxCatalogClearClick(Sender: TObject);
begin
  dm.ViewCatalog.Filtered := false;
end;

procedure TFormSuper.ButtonBookAddAuthorClick(Sender: TObject);
begin
  dm.TAuthorBook.Insert;
  dm.TAuthorBook.Post;
end;

procedure TFormSuper.ButtonBooksIncomingClick(Sender: TObject);

var
  count: integer;
  I: integer;
begin
  count := DSOrders.DataSet.FieldByName('count').Value;

  for I := 1 to count do
  begin
    dm.TExemplar.Insert;
    dm.TExemplar.FieldByName('ISBN').Value :=
      DSOrders.DataSet.FieldByName('book_id').Value;
    dm.TExemplar.FieldByName('placement').Value := 'полка 1';
    dm.TExemplar.Post;
  end;

  DSOrders.DataSet.Edit;
  DSOrders.DataSet.FieldByName('processed').Value := True;
  DSOrders.DataSet.Post;
  ShowMessage('”спешно создан(ы) ' + count.ToString + ' экземпл€ров книг ');

  dm.ViewAvailableBooks.Close;
  dm.ViewAvailableBooks.OPEN;

  if MessageDlg('ѕерейти в каталог?', mtConfirmation, [mbYes, mbNO], 0) = mrYes
  then
  begin
    PageControl3.ActivePageIndex := 1;
    PageControl4.ActivePageIndex := 1;
  end;

end;

procedure TFormSuper.ButtonCanselAuthorClick(Sender: TObject);
begin
  dm.TAuthorBook.Cancel;
  dm.TBook.Cancel;
end;

procedure TFormSuper.ButtonCreateorderClick(Sender: TObject);
begin
  orders.Insert;
  DBGridOrders.Enabled := false;
  GroupBoxCreateOrder.Enabled := True;
end;

procedure TFormSuper.ButtonCreateUserClick(Sender: TObject);
begin
  dm.TReader.Insert;
  dm.TUsers.Insert;

end;

procedure TFormSuper.ButtonDeleteUserClick(Sender: TObject);
begin
  dm.TReader.Delete;
  dm.TUsers.Delete;
end;

procedure TFormSuper.ButtonEditAuthorClick(Sender: TObject);
begin
  dm.TAuthor.Post;

  DBEditAuthorFirstName.ReadOnly := True;
  DBEditAuthorLastName.ReadOnly := True;
  DBEditAuthorMiddleName.ReadOnly := True;
  ButtonEditAuthor.Enabled := false;
end;

procedure TFormSuper.ButtonEditBookCategoryClick(Sender: TObject);
begin
  dm.TBookCategory.Post;
  ButtonEditBookCategory.Enabled := false;
  DBEditBookCategoryName.ReadOnly := True;
end;

procedure TFormSuper.ButtonEditPublishingClick(Sender: TObject);
begin
  dm.TPublishing.Post;
  DBEditPublishingName.ReadOnly := True;
  DBEditPublishingCity.ReadOnly := True;
  ButtonEditPublishing.Enabled := false;
end;

procedure TFormSuper.ButtonEditUserClick(Sender: TObject);
begin
  dm.TReader.Edit;
  dm.TUsers.Edit;
end;

procedure TFormSuper.ButtonOKBookAuthorClick(Sender: TObject);
begin
  dm.TAuthorBook.Post;
  dm.TBook.Post;

end;

procedure TFormSuper.ButtonOKExemplarClick(Sender: TObject);
begin
  dm.TExemplar.Post;
  DBGrid3.ReadOnly := True;
  DBEditPlace.ReadOnly := True;
  DBEditISBM.ReadOnly := True;
  ButtonOKExemplar.Enabled := false;
end;

procedure TFormSuper.ButtonOKUserClick(Sender: TObject);
begin
  dm.TReader.Post;
  dm.TUsers.Post;

  DBEditBookName.ReadOnly := True;
  DBLookupComboBoxBookCategory.ReadOnly := True;
  DBLookupComboBoxBookPublishing.ReadOnly := True;
  DBEditBookYear.ReadOnly := True;
  DBLookupComboBoxAuthor.ReadOnly := True;
  DBGrid2.ReadOnly := True;
  ButtonBookAddAuthor.Enabled := false;
  ButtonCanselAuthor.Enabled := false;
  ButtonOKBookAuthor.Enabled := True;
end;

procedure TFormSuper.ButtonOverdueBooksClick(Sender: TObject);
begin
  PageControlReports.ActivePageIndex := 1;
end;

procedure TFormSuper.DBGridOrdersCellClick(Column: TColumn);
begin
  if orders.FieldByName('processed').Value = True then
    ButtonBooksIncoming.Enabled := false
  else
    ButtonBooksIncoming.Enabled := True;
end;

procedure TFormSuper.DBGridWorkersCellClick(Column: TColumn);
begin
  EditLogin.Text := dm.TUsers.FieldByName('login').Value;
  EditPass.Text := dm.TUsers.FieldByName('password').Value;
end;

procedure TFormSuper.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFormSuper.N1Click(Sender: TObject);
begin
  dm.TAuthorBook.Delete;
end;

procedure TFormSuper.SearchBox1InvokeSearch(Sender: TObject);
begin
  if not dm.TReader.Locate('LastName', SearchBox1.Text, [loPartialKey]) then
    if not dm.TReader.Locate('FirstName', SearchBox1.Text, [loPartialKey]) then
      if not dm.TReader.Locate('MiddleName', SearchBox1.Text, [loPartialKey])
      then
        if not dm.TReader.Locate('Addres', SearchBox1.Text, [loPartialKey]) then

          dm.TReader.Locate('Phone', SearchBox1.Text, [loPartialKey]);
end;

procedure TFormSuper.SearchBoxAvailableBooksInvokeSearch(Sender: TObject);
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
  dm.DoIncrementalFilter(dm.ViewAvailableBooks, FieldName, SearchTerm);
end;

procedure TFormSuper.SearchBoxCatalogInvokeSearch(Sender: TObject);
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
  dm.DoIncrementalFilter(dm.ViewCatalog, FieldName, SearchTerm);
end;

procedure TFormSuper.SearchBoxWorkerInvokeSearch(Sender: TObject);
var
  SearchTerm: string;
begin
  SearchTerm := SearchBoxWorker.Text;
  if SearchTerm = '' then
    dm.TWorker.Filtered := false
  else
  begin
    dm.TWorker.Filter := 'LastName' + ' LIKE ' + QuotedStr(SearchTerm + '*') +
      ' OR ' + 'FirstName' + ' LIKE ' + QuotedStr(SearchTerm + '*');
    dm.TWorker.Filtered := True;
  end;
end;

procedure TFormSuper.SearchBoxWorkerKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    SpeedButtonSearchWorkerCancelClick(Sender);
end;

procedure TFormSuper.SpeedButtonSearchWorkerCancelClick(Sender: TObject);
begin
  dm.TWorker.Filtered := false;
  SearchBoxWorker.Text := '';
end;

procedure TFormSuper.SpeedButtonAddAuthorClick(Sender: TObject);
begin
  dm.TAuthor.Insert;

  DBEditAuthorFirstName.ReadOnly := false;
  DBEditAuthorLastName.ReadOnly := false;
  DBEditAuthorMiddleName.ReadOnly := false;
  ButtonEditAuthor.Enabled := True;
end;

procedure TFormSuper.SpeedButtonAddBookClick(Sender: TObject);
begin
  dm.TBook.Insert;
  dm.TAuthorBook.Insert;
  dm.TAuthorBook.Edit;
  dm.TBook.Edit;
  DBEditBookName.ReadOnly := false;
  DBLookupComboBoxBookCategory.ReadOnly := false;
  DBLookupComboBoxBookPublishing.ReadOnly := false;
  DBEditBookYear.ReadOnly := false;
  DBLookupComboBoxAuthor.ReadOnly := false;
  DBGrid2.ReadOnly := false;
  ButtonBookAddAuthor.Enabled := True;
  ButtonCanselAuthor.Enabled := True;
  ButtonOKBookAuthor.Enabled := True;
end;

procedure TFormSuper.SpeedButtonAddCategoryClick(Sender: TObject);
begin
  dm.TBookCategory.Insert;
  ButtonEditBookCategory.Enabled := True;
  DBEditBookCategoryName.ReadOnly := false;
end;

procedure TFormSuper.SpeedButtonAddExemplarClick(Sender: TObject);
begin
  dm.TExemplar.Insert;
  DBEditPlace.ReadOnly := false;
  DBEditISBM.ReadOnly := false;
  ButtonOKExemplar.Enabled := True;
end;

procedure TFormSuper.SpeedButtonAddPublishigClick(Sender: TObject);
begin
  dm.TPublishing.Insert;
  DBEditPublishingName.ReadOnly := false;
  DBEditPublishingCity.ReadOnly := false;
  ButtonEditPublishing.Enabled := True;
end;

procedure TFormSuper.SpeedButtonDeleteBookClick(Sender: TObject);
begin
  dm.TBook.Delete;
end;

procedure TFormSuper.SpeedButtonDeleteExemplarClick(Sender: TObject);
begin
  dm.TExemplar.Delete;
end;

procedure TFormSuper.SpeedButtonEditAuthorClick(Sender: TObject);
begin
  dm.TAuthor.Edit;

  DBEditAuthorFirstName.ReadOnly := false;
  DBEditAuthorLastName.ReadOnly := false;
  DBEditAuthorMiddleName.ReadOnly := false;
  ButtonEditAuthor.Enabled := True;
end;

procedure TFormSuper.SpeedButtonEditBookClick(Sender: TObject);
begin
  dm.TAuthorBook.Edit;
  dm.TBook.Edit;
  DBEditBookName.ReadOnly := false;
  DBLookupComboBoxBookCategory.ReadOnly := false;
  DBLookupComboBoxBookPublishing.ReadOnly := false;
  DBEditBookYear.ReadOnly := false;
  DBLookupComboBoxAuthor.ReadOnly := false;
  DBGrid2.ReadOnly := false;
  ButtonBookAddAuthor.Enabled := True;
  ButtonCanselAuthor.Enabled := True;
  ButtonOKBookAuthor.Enabled := True;
end;

procedure TFormSuper.SpeedButtonEditExemplarClick(Sender: TObject);
begin
  dm.TExemplar.Edit;
  DBGrid3.ReadOnly := false;
  DBEditPlace.ReadOnly := false;
  DBEditISBM.ReadOnly := false;
  ButtonOKExemplar.Enabled := True;
end;

procedure TFormSuper.SpeedButtonEditPublishigClick(Sender: TObject);
begin
  dm.TPublishing.Edit;
  DBEditPublishingName.ReadOnly := false;
  DBEditPublishingCity.ReadOnly := false;
  ButtonEditPublishing.Enabled := True;
end;

end.
