unit UnitReaderAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus;

type
  TFormReader = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    ButtonSearchBook: TSpeedButton;
    EditSearchBook: TEdit;
    RadioButtonYear: TRadioButton;
    RadioButtonAuthor: TRadioButton;
    RadioButtonTitle: TRadioButton;
    GroupBox1: TGroupBox;
    DBGridCatalog: TDBGrid;
    GroupBox7: TGroupBox;
    Button1: TButton;
    Бронь: TTabSheet;
    DBGridBooking: TDBGrid;
    PopupMenu1: TPopupMenu;
    ButtonDelete: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFormReader.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
