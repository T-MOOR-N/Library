unit UnitSuperUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  UDM, Vcl.Menus, Vcl.WinXCtrls;

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
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
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
    procedure ButtonCreateUserClick(Sender: TObject);
    procedure ButtonOKUserClick(Sender: TObject);
    procedure ButtonEditUserClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

procedure TFormSuper.ButtonCreateUserClick(Sender: TObject);
begin
  dm.TReader.Insert;
  dm.TUsers.Insert;

end;

procedure TFormSuper.ButtonEditUserClick(Sender: TObject);
begin
  dm.TReader.Edit;
  dm.TUsers.Edit;
end;

procedure TFormSuper.ButtonOKUserClick(Sender: TObject);
begin
  dm.TReader.Post;
  dm.TUsers.Post;
end;

end.
