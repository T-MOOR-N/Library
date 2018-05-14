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
    DBGridLibrary: TDBGrid;
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
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    GroupBox8: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    SpeedButton4: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
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
    DBGrid4: TDBGrid;
    Panel15: TPanel;
    GroupBox14: TGroupBox;
    ButtonCreateorder: TButton;
    ButtonBooksIncoming: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    ButtonSaveOrder: TButton;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    procedure ButtonCreateUserClick(Sender: TObject);
    procedure ButtonOKUserClick(Sender: TObject);
    procedure ButtonEditUserClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
    procedure DBGrid4CellClick(Column: TColumn);
    procedure ButtonCreateorderClick(Sender: TObject);
    procedure ButtonSaveOrderClick(Sender: TObject);
    procedure ButtonBooksIncomingClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSuper: TFormSuper;

implementation

{$R *.dfm}

procedure TFormSuper.Button1Click(Sender: TObject);
begin
  dm.TReader.Delete;
  dm.TUsers.Delete;
end;

procedure TFormSuper.Button2Click(Sender: TObject);
begin
  dm.TWorker.Insert;
  dm.TUsers.Insert;
end;

procedure TFormSuper.Button3Click(Sender: TObject);
begin
  dm.TWorker.Edit;
  dm.TUsers.Edit;
end;

procedure TFormSuper.Button4Click(Sender: TObject);
begin
  dm.TWorker.Post;
  dm.TUsers.Post;
end;

procedure TFormSuper.ButtonSaveOrderClick(Sender: TObject);
begin
  dm.TOrders.Post;
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
  count := dm.TOrders.FieldByName('count').Value;

  for I := 1 to count do
  begin
    dm.TExemplar.Insert;
    dm.TExemplar.FieldByName('ISBN').Value :=
      dm.TOrders.FieldByName('book_id').Value;
    dm.TExemplar.FieldByName('placement').Value := 'полка 1';
    dm.TExemplar.Post;
  end;

  dm.TOrders.FieldByName('proceded').Value := true;

end;

procedure TFormSuper.ButtonCanselAuthorClick(Sender: TObject);
begin
  dm.TAuthorBook.Cancel;
  dm.TBook.Cancel;
end;

procedure TFormSuper.ButtonCreateorderClick(Sender: TObject);
begin
  dm.TOrders.Insert;
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

  DBEditAuthorFirstName.ReadOnly := true;
  DBEditAuthorLastName.ReadOnly := true;
  DBEditAuthorMiddleName.ReadOnly := true;
  ButtonEditAuthor.Enabled := false;
end;

procedure TFormSuper.ButtonEditBookCategoryClick(Sender: TObject);
begin
  dm.TBookCategory.Post;
  ButtonEditBookCategory.Enabled := false;
  DBEditBookCategoryName.ReadOnly := true;
end;

procedure TFormSuper.ButtonEditPublishingClick(Sender: TObject);
begin
  dm.TPublishing.Post;
  DBEditPublishingName.ReadOnly := true;
  DBEditPublishingCity.ReadOnly := true;
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
  DBGrid3.ReadOnly := true;
  DBEditPlace.ReadOnly := true;
  DBEditISBM.ReadOnly := true;
  ButtonOKExemplar.Enabled := false;
end;

procedure TFormSuper.ButtonOKUserClick(Sender: TObject);
begin
  dm.TReader.Post;
  dm.TUsers.Post;

  DBEditBookName.ReadOnly := true;
  DBLookupComboBoxBookCategory.ReadOnly := true;
  DBLookupComboBoxBookPublishing.ReadOnly := true;
  DBEditBookYear.ReadOnly := true;
  DBLookupComboBoxAuthor.ReadOnly := true;
  DBGrid2.ReadOnly := true;
  ButtonBookAddAuthor.Enabled := false;
  ButtonCanselAuthor.Enabled := false;
  ButtonOKBookAuthor.Enabled := true;
end;

procedure TFormSuper.DBGrid4CellClick(Column: TColumn);
begin
  if dm.TOrders.FieldByName('processed').Value = true then
    ButtonBooksIncoming.Enabled := false
  else
    ButtonBooksIncoming.Enabled := true;
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

procedure TFormSuper.SpeedButtonAddAuthorClick(Sender: TObject);
begin
  dm.TAuthor.Insert;

  DBEditAuthorFirstName.ReadOnly := false;
  DBEditAuthorLastName.ReadOnly := false;
  DBEditAuthorMiddleName.ReadOnly := false;
  ButtonEditAuthor.Enabled := true;
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
  ButtonBookAddAuthor.Enabled := true;
  ButtonCanselAuthor.Enabled := true;
  ButtonOKBookAuthor.Enabled := true;
end;

procedure TFormSuper.SpeedButtonAddCategoryClick(Sender: TObject);
begin
  dm.TBookCategory.Insert;
  ButtonEditBookCategory.Enabled := true;
  DBEditBookCategoryName.ReadOnly := false;
end;

procedure TFormSuper.SpeedButtonAddExemplarClick(Sender: TObject);
begin
  dm.TExemplar.Insert;
  DBEditPlace.ReadOnly := false;
  DBEditISBM.ReadOnly := false;
  ButtonOKExemplar.Enabled := true;
end;

procedure TFormSuper.SpeedButtonAddPublishigClick(Sender: TObject);
begin
  dm.TPublishing.Insert;
  DBEditPublishingName.ReadOnly := false;
  DBEditPublishingCity.ReadOnly := false;
  ButtonEditPublishing.Enabled := true;
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
  ButtonEditAuthor.Enabled := true;
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
  ButtonBookAddAuthor.Enabled := true;
  ButtonCanselAuthor.Enabled := true;
  ButtonOKBookAuthor.Enabled := true;
end;

procedure TFormSuper.SpeedButtonEditExemplarClick(Sender: TObject);
begin
  dm.TExemplar.Edit;
  DBGrid3.ReadOnly := false;
  DBEditPlace.ReadOnly := false;
  DBEditISBM.ReadOnly := false;
  ButtonOKExemplar.Enabled := true;
end;

procedure TFormSuper.SpeedButtonEditPublishigClick(Sender: TObject);
begin
  dm.TPublishing.Edit;
  DBEditPublishingName.ReadOnly := false;
  DBEditPublishingCity.ReadOnly := false;
  ButtonEditPublishing.Enabled := true;
end;

end.
