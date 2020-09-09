program Cronometro;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmCronometro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCronometro, frmCronometro);
  Application.Run;
end.
