unit UnitReader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, Grids, DBGrids, ExtCtrls, Vcl.ComCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.WinXCtrls;

type
  TFormAddReadTicket = class(TForm)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    Button1: TButton;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddReadTicket: TFormAddReadTicket;

implementation

{$R *.dfm}

uses UDM;

end.
