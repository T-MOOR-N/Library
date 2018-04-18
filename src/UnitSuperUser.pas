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
    SpeedButton2: TSpeedButton;
    Button7: TButton;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
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
    ButtonEditLK: TButton;
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
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBGrid1: TDBGrid;
    GroupBox7: TGroupBox;
    Panel7: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBGrid3: TDBGrid;
    GroupBox8: TGroupBox;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Button5: TButton;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    Button4: TButton;
    Button3: TButton;
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
