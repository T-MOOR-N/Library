unit UnitLibrarianAccount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, ComCtrls, Data.DB, Vcl.WinXCtrls;

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
    GroupBox14: TGroupBox;
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
    RadioButtonCategory: TRadioButton;
    RadioButtonAuthor: TRadioButton;
    RadioButtonTitle: TRadioButton;
    GroupBox1: TGroupBox;
    DBGridCatalog: TDBGrid;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    SearchBoxAvailableBooks: TSearchBox;
    RadioButton1: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox4: TGroupBox;
    DBGridAvailableBooks: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SearchBoxReaderInvokeSearch(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure SearchBoxCatalogInvokeSearch(Sender: TObject);
    procedure SearchBoxAvailableBooksInvokeSearch(Sender: TObject);
    procedure ButtonIssueBookClick(Sender: TObject);
    procedure ButtonBookIssueSaveClick(Sender: TObject);
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
      DateTimePicker2.DateTime;;
    DM.TBookIssuing.Post;
  end;
end;

procedure TFormLibrary.Button1Click(Sender: TObject);
begin
  DM.TReader.Insert;

  case FormAddReadTicket.ShowModal of
    mrOk:
      begin
        DM.TReader.Post;
        // DM.TUsers.Locate('user_id;type', VarArrayOf([DM.TReader.Fields[0].Value, 'reader']), [loPartialKey]);

        DM.TUsers.Insert;
        DM.TUsers.FieldByName('type').Value := 'reader';
        DM.TUsers.FieldByName('user_id').Value := DM.TReader.Fields[0].Value;
        DM.TUsers.FieldByName('login').Value :=
          FormAddReadTicket.EditLogin.Text;
        DM.TUsers.FieldByName('password').Value :=
          FormAddReadTicket.EditPass.Text;
        DM.TUsers.Post;
        // обновим пароль MD5
        DM.ADOQueryUpdatePassMD5.ExecSQL;
      end;
    mrCancel:
      begin
        DM.TReader.Cancel;
        DM.TUsers.Cancel;
      end;
  end;
end;

procedure TFormLibrary.Button2Click(Sender: TObject);
begin
  DM.TReader.Edit;
  DM.TUsers.Locate('user_id;type', VarArrayOf([DM.TReader.Fields[0].Value,
    'reader']), [loPartialKey]);

  DM.TUsers.Edit;
  FormAddReadTicket.EditLogin.Text := DM.TUsers.FieldByName('login').Value;
  FormAddReadTicket.EditPass.Text := DM.TUsers.FieldByName('password').Value;

  case FormAddReadTicket.ShowModal of
    mrOk:
      begin
        DM.TReader.Post;
        DM.TUsers.FieldByName('type').Value := 'reader';
        DM.TUsers.FieldByName('user_id').Value := DM.TReader.Fields[0].Value;
        DM.TUsers.FieldByName('login').Value :=
          FormAddReadTicket.EditLogin.Text;
        DM.TUsers.FieldByName('password').Value :=
          FormAddReadTicket.EditPass.Text;
        DM.TUsers.Post;
      end;
    mrCancel:
      begin
        DM.TReader.Cancel;
        DM.TUsers.Cancel;
      end;
  end;
end;

procedure TFormLibrary.Button3Click(Sender: TObject);
begin
  FormAddBook.Show;
end;

procedure TFormLibrary.Button7Click(Sender: TObject);
begin
  if DM.TUsers.Locate('user_id', DM.TReader.Fields[0].AsInteger,
    [loCaseInsensitive, loPartialKey]) then
  begin
    DM.TUsers.Delete;
    DM.TReader.Delete;
  end;
end;

procedure TFormLibrary.ButtonIssueBookClick(Sender: TObject);
begin
  DM.TBookIssuing.Insert;
end;

procedure TFormLibrary.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFormLibrary.SearchBoxReaderInvokeSearch(Sender: TObject);
begin
  // здесь будет поиск
  if not DM.TReader.Locate('LastName', SearchBoxReader.Text, [loPartialKey])
  then
    if not DM.TReader.Locate('FirstName', SearchBoxReader.Text, [loPartialKey])
    then
      if not DM.TReader.Locate('MiddleName', SearchBoxReader.Text,
        [loPartialKey]) then
        DM.TReader.Locate('Phone', SearchBoxReader.Text, [loPartialKey]);
end;

procedure TFormLibrary.SearchBoxAvailableBooksInvokeSearch(Sender: TObject);
begin
  // AvailableBooks
  if RadioButtonCategory.Checked then
    DM.ViewCatalog.Locate('category', SearchBoxAvailableBooks.Text,
      [loPartialKey]);
  if RadioButtonTitle.Checked then
    DM.ViewCatalog.Locate('Title', SearchBoxAvailableBooks.Text,
      [loPartialKey]);
end;

procedure TFormLibrary.SearchBoxCatalogInvokeSearch(Sender: TObject);
begin
  if RadioButtonCategory.Checked then
    DM.ViewCatalog.Locate('category', SearchBoxCatalog.Text, [loPartialKey]);
  if RadioButtonAuthor.Checked then
    DM.ViewCatalog.Locate('Author', SearchBoxCatalog.Text, [loPartialKey]);
  if RadioButtonTitle.Checked then
    DM.ViewCatalog.Locate('Title', SearchBoxCatalog.Text, [loPartialKey]);
end;

end.
