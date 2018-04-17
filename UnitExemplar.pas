unit UnitExemplar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TFormAddExemplar = class(TForm)
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    Label3: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddExemplar: TFormAddExemplar;

implementation

{$R *.dfm}

end.
