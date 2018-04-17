unit UnitBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TFormAddBook = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBImage1: TDBImage;
    DBComboBox2: TDBComboBox;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddBook: TFormAddBook;

implementation

{$R *.dfm}

end.
