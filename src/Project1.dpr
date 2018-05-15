program Project1;

uses
  Forms,
  UnitAuth in 'UnitAuth.pas' {FormAuth},
  UnitBook in 'UnitBook.pas' {FormAddBook},
  UnitExemplar in 'UnitExemplar.pas' {FormAddExemplar},
  UnitLibrarianAccount in 'UnitLibrarianAccount.pas' {FormLibrary},
  UnitReader in 'UnitReader.pas' {FormAddReadTicket},
  UDM in 'UDM.pas' {DM: TDataModule},
  UnitSuperUser in 'UnitSuperUser.pas' {FormSuper},
  UnitReportReaderActivity in 'UnitReportReaderActivity.pas' {Form1},
  UnitReportOverdueBooks in 'UnitReportOverdueBooks.pas' {FormReportOverdueBooks};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormAuth, FormAuth);
  Application.CreateForm(TFormAddBook, FormAddBook);
  Application.CreateForm(TFormAddExemplar, FormAddExemplar);
  Application.CreateForm(TFormLibrary, FormLibrary);
  Application.CreateForm(TFormAddReadTicket, FormAddReadTicket);
  Application.CreateForm(TFormSuper, FormSuper);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormReportOverdueBooks, FormReportOverdueBooks);
  Application.Run;
end.
