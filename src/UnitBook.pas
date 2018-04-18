unit UnitBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormAddBook = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddBook: TFormAddBook;

implementation

{$R *.dfm}

uses UDM;

end.
