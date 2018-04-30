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
    RadioButtonCategory: TRadioButton;
    RadioButtonAuthor: TRadioButton;
    RadioButtonTitle: TRadioButton;
    GroupBox7: TGroupBox;
    Button1: TButton;
    GroupBox1: TGroupBox;
    DBGridCatalog: TDBGrid;
    TabSheet2: TTabSheet;
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
    DBGrid1: TDBGrid;
    SearchBox1: TSearchBox;
    SearchBox2: TSearchBox;
    DBGrid2: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure SearchBox2InvokeSearch(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ButtonOKUserClick(Sender: TObject);
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

procedure TFormReader.Button1Click(Sender: TObject);
begin
  dm.TReservation.Insert;
  dm.TReservation.Post;
end;

procedure TFormReader.Button2Click(Sender: TObject);
begin
DBEdit1.ReadOnly:=false;
DBEdit2.ReadOnly:=false;
DBEdit3.ReadOnly:=false;
DBEdit4.ReadOnly:=false;
DBEdit5.ReadOnly:=false;
DBEdit6.ReadOnly:=false;
DBEdit7.ReadOnly:=false;
ButtonOKUser.Enabled:=true;
end;

procedure TFormReader.ButtonOKUserClick(Sender: TObject);
begin
DBEdit1.ReadOnly:=true;
DBEdit2.ReadOnly:=true;
DBEdit3.ReadOnly:=true;
DBEdit4.ReadOnly:=true;
DBEdit5.ReadOnly:=true;
DBEdit6.ReadOnly:=true;
DBEdit7.ReadOnly:=true;
ButtonOKUser.Enabled:=false;
end;

procedure TFormReader.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFormReader.SearchBox1InvokeSearch(Sender: TObject);
begin
  if RadioButtonCategory.Checked then
    DM.ViewCatalog.Locate('category', SearchBox1.Text, [loPartialKey]);
  if RadioButtonAuthor.Checked then
    DM.ViewCatalog.Locate('Author', SearchBox1.Text, [loPartialKey]);
  if RadioButtonTitle.Checked then
    DM.ViewCatalog.Locate('Title', SearchBox1.Text, [loPartialKey]);

end;

procedure TFormReader.SearchBox2InvokeSearch(Sender: TObject);
begin

  DM.TReader.Locate('book_LF', SearchBox1.Text, [loPartialKey]);
end;

end.
