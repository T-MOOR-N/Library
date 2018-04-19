unit UnitSuperUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB,
  UDM, Vcl.Menus;

type
  TFormSuper = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheetReaders: TTabSheet;
    TabSheetWorker: TTabSheet;
    Panel1: TPanel;
    SpeedButtonSearchUser: TSpeedButton;
    ButtonDeleteUser: TButton;
    ButtonCreateUser: TButton;
    ButtonEditUser: TButton;
    EditSearchUser: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEditFirstName: TDBEdit;
    DBEditLastName: TDBEdit;
    DBEditMiddleName: TDBEdit;
    Label9: TLabel;
    DBEditLogin: TDBEdit;
    Label8: TLabel;
    DBEditPassword: TDBEdit;
    DBEditAddres: TDBEdit;
    Label6: TLabel;
    Label5: TLabel;
    DBEditPhone: TDBEdit;
    ButtonOKUser: TButton;
    DBGridReader: TDBGrid;
    DBGridLibrary: TDBGrid;
    SpeedButtonCansel: TSpeedButton;
    TabSheetCatalog: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGridCategory: TDBGrid;
    DBGridAuthor: TDBGrid;
    Panel2: TPanel;
    SpeedButtonAddAuthor: TSpeedButton;
    SpeedButtonEditAuthor: TSpeedButton;
    SpeedButtonDeleteAuthor: TSpeedButton;
    Panel3: TPanel;
    SpeedButtonAddCategory: TSpeedButton;
    SpeedButtonDeleteCategory: TSpeedButton;
    GroupBox4: TGroupBox;
    DBGridPublishig: TDBGrid;
    Panel4: TPanel;
    SpeedButtonAddPublishig: TSpeedButton;
    SpeedButtonEditPublishig: TSpeedButton;
    SpeedButtonDeletePublishig: TSpeedButton;
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
    GroupBox8: TGroupBox;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    Label4: TLabel;
    DBEditBookName: TDBEdit;
    Label10: TLabel;
    DBLookupComboBoxBookCategory: TDBLookupComboBox;
    DBLookupComboBoxAuthor: TDBLookupComboBox;
    ButtonBookAddAuthor: TButton;
    Label7: TLabel;
    DBLookupComboBoxBookPublishing: TDBLookupComboBox;
    Label11: TLabel;
    DBEditBookYear: TDBEdit;
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
    Label21: TLabel;
    DBEditAuthorABR: TDBEdit;
    DBEditBookCategoryName: TDBEdit;
    Label18: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSuper: TFormSuper;

implementation

{$R *.dfm}

end.
