unit UnitLibrarianAccount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, ComCtrls, Data.DB, Vcl.WinXCtrls;

type
  TFormLibrary = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox1: TGroupBox;
    DBGridCatalog: TDBGrid;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button7: TButton;
    GroupBox8: TGroupBox;
    DBGridReader: TDBGrid;
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
    SpeedButton1: TSpeedButton;
    GroupBox9: TGroupBox;
    DBGrid3: TDBGrid;
    SearchBox1: TSearchBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLibrary: TFormLibrary;

implementation

{$R *.dfm}

uses UDM, UnitBook, UnitReader;

procedure TFormLibrary.Button1Click(Sender: TObject);
begin
  DM.TReader.Insert;

  case FormAddReadTicket.ShowModal of
    mrOk:
      begin
        DM.TReader.Post;
        // DM.TUsers.Locate('user_id;type', VarArrayOf([DM.TReader.Fields[0].Value, 'reader']), [loPartialKey]);

        DM.TUsers.Insert;
        DM.TUsers.FieldByName('type').Value := 'reader';
        DM.TUsers.FieldByName('user_id').Value := DM.TReader.Fields[0].Value;
        DM.TUsers.FieldByName('login').Value :=
          FormAddReadTicket.EditLogin.Text;
        DM.TUsers.FieldByName('password').Value :=
          FormAddReadTicket.EditPass.Text;
        DM.TUsers.Post;
        // обновим пароль MD5
        DM.ADOQueryUpdatePassMD5.ExecSQL;
      end;
    mrCancel:
      begin
        DM.TReader.Cancel;
        DM.TUsers.Cancel;
      end;
  end;
end;

procedure TFormLibrary.Button2Click(Sender: TObject);
begin
  DM.TReader.Edit;
  DM.TUsers.Locate('user_id;type', VarArrayOf([DM.TReader.Fields[0].Value,
    'reader']), [loPartialKey]);

  DM.TUsers.Edit;
  FormAddReadTicket.EditLogin.Text := DM.TUsers.FieldByName('login').Value;
  FormAddReadTicket.EditPass.Text := DM.TUsers.FieldByName('password').Value;

  case FormAddReadTicket.ShowModal of
    mrOk:
      begin
        DM.TReader.Post;
        DM.TUsers.FieldByName('type').Value := 'reader';
        DM.TUsers.FieldByName('user_id').Value := DM.TReader.Fields[0].Value;
        DM.TUsers.FieldByName('login').Value :=
          FormAddReadTicket.EditLogin.Text;
        DM.TUsers.FieldByName('password').Value :=
          FormAddReadTicket.EditPass.Text;
        DM.TUsers.Post;
      end;
    mrCancel:
      begin
        DM.TReader.Cancel;
        DM.TUsers.Cancel;
      end;
  end;
end;

procedure TFormLibrary.Button3Click(Sender: TObject);
begin
  FormAddBook.Show;
end;

procedure TFormLibrary.Button7Click(Sender: TObject);
begin
  if DM.TUsers.Locate('user_id', DM.TReader.Fields[0].AsInteger,
    [loCaseInsensitive, loPartialKey]) then
  begin
    DM.TUsers.Delete;
    DM.TReader.Delete;
  end;
end;

procedure TFormLibrary.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFormLibrary.SearchBox1InvokeSearch(Sender: TObject);
begin
  // здесь будет поиск
  if not DM.TReader.Locate('LastName', SearchBox1.Text, [loPartialKey]) then
    if not DM.TReader.Locate('FirstName', SearchBox1.Text, [loPartialKey]) then
      if not DM.TReader.Locate('MiddleName', SearchBox1.Text, [loPartialKey])
      then
        DM.TReader.Locate('Phone', SearchBox1.Text, [loPartialKey]);
end;

end.
