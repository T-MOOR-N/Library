unit UnitReader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, Grids, DBGrids, ExtCtrls, Vcl.ComCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TFormAddReadTicket = class(TForm)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    Label10: TLabel;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddReadTicket: TFormAddReadTicket;

implementation

{$R *.dfm}

end.
