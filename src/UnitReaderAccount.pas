unit UnitReaderAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus, Vcl.Mask,
  Vcl.DBCtrls, Vcl.WinXCtrls;

type
  TFormReader = class(TForm)
    PopupMenu1: TPopupMenu;
    ButtonDelete: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    RadioButtonYear: TRadioButton;
    RadioButtonAuthor: TRadioButton;
    RadioButtonTitle: TRadioButton;
    GroupBox7: TGroupBox;
    Button1: TButton;
    GroupBox1: TGroupBox;
    DBGridCatalog: TDBGrid;
    TabSheet2: TTabSheet;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    TabSheet3: TTabSheet;
    Button2: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    ButtonOKUser: TButton;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    GroupBox6: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox5: TGroupBox;
    TabSheet5: TTabSheet;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    DBGrid1: TDBGrid;
    SearchBox1: TSearchBox;
    SearchBox2: TSearchBox;
    DBGrid2: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonSearchBookClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReader: TFormReader;

implementation

{$R *.dfm}

uses UDM;

procedure TFormReader.ButtonSearchBookClick(Sender: TObject);
begin
  if RadioButtonYear.Enabled then
  begin

  end;

end;

procedure TFormReader.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
