program Project1;

uses
  Forms,
  Grafic in 'Grafic.pas' {TMSForm2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTMSForm2, TMSForm2);
  Application.Run;
end.