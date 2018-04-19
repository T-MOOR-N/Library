unit UnitAuth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Data.DB, Data.Win.ADODB;

type
  TFormAuth = class(TForm)
    GroupBox1: TGroupBox;
    EditLogin: TEdit;
    EditPass: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    ADOQuery1: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAuth: TFormAuth;

implementation

{$R *.dfm}

uses UDM, UnitLibrarianAccount, UnitReaderAccount;

procedure TFormAuth.BitBtn1Click(Sender: TObject);
begin
  ADOQuery1.Close;
  // передача в параметры sql запроса данных введенных пользователем
  ADOQuery1.Parameters.ParamByName('l').Value := EditLogin.Text;
  ADOQuery1.Parameters.ParamByName('p').Value := EditPass.Text;
  // выполнение запроса
  ADOQuery1.Open;
  if (ADOQuery1.RecordCount > 0) then
  begin
    if ADOQuery1.Fields[1].AsString = 'reader' then
    begin
      dm.TReader.Locate('id', ADOQuery1.Fields[0].AsInteger,
        [loCaseInsensitive, loPartialKey]);
      FormReader.Show;
    end;
    if ADOQuery1.Fields[1].AsString = 'librarian' then
    begin
      dm.TWorker.Locate('id', ADOQuery1.Fields[0].AsInteger,
        [loCaseInsensitive, loPartialKey]);
      FormLibrary.Show;
    end;
    hide;
  end
  else
    ShowMessage('Неверный логин или пароль');
end;

procedure TFormAuth.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    BitBtn1Click(Sender);
end;

end.
