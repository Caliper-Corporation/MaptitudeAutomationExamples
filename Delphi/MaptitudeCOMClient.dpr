program MaptitudeCOMClient;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FrmMain},
  MaptitudeTypeLibrary_TLB in 'MaptitudeTypeLibrary_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
