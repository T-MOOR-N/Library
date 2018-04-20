program Project1;

uses
  Forms,
  UnitAuth in 'UnitAuth.pas' {FormAuth},
  UnitBook in 'UnitBook.pas' {FormAddBook},
  UnitExemplar in 'UnitExemplar.pas' {FormAddExemplar},
  UnitLibrarianAccount in 'UnitLibrarianAccount.pas' {FormLibrary},
  UnitReader in 'UnitReader.pas' {FormAddReadTicket},
  UnitReaderAccount in 'UnitReaderAccount.pas' {FormReader},
  UDM in 'UDM.pas' {DM: TDataModule},
  UnitSuperUser in 'UnitSuperUser.pas' {FormSuper};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormAuth, FormAuth);
  Application.CreateForm(TFormAddBook, FormAddBook);
  Application.CreateForm(TFormAddExemplar, FormAddExemplar);
  Application.CreateForm(TFormLibrary, FormLibrary);
  Application.CreateForm(TFormAddReadTicket, FormAddReadTicket);
  Application.CreateForm(TFormReader, FormReader);
  Application.CreateForm(TFormSuper, FormSuper);
  Application.Run;
end.
