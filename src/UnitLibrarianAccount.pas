unit UnitLibrarianAccount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, ComCtrls, Data.DB;

type
  TFormLibrary = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBImage1: TDBImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox1: TGroupBox;
    DBGridCatalog: TDBGrid;
    GroupBox4: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    GroupBox5: TGroupBox;
    Button5: TButton;
    Button6: TButton;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    GroupBox6: TGroupBox;
    Edit2: TEdit;
    SpeedButton2: TSpeedButton;
    GroupBox7: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button7: TButton;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    DBGridReader: TDBGrid;
    DBGrid3: TDBGrid;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    GroupBox12: TGroupBox;
    SpeedButton4: TSpeedButton;
    Edit4: TEdit;
    GroupBox13: TGroupBox;
    Button11: TButton;
    Button13: TButton;
    DBGridBookIssuing: TDBGrid;
    GroupBox14: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label7: TLabel;
    Button12: TButton;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBGrid5: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLibrary: TFormLibrary;

implementation

{$R *.dfm}

uses UDM, UnitBook;

procedure TFormLibrary.Button3Click(Sender: TObject);
begin
  FormAddBook.Show;
end;

procedure TFormLibrary.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
