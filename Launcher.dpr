program Launcher;

uses
  Vcl.Forms,
  U_Launcher in 'U_Launcher.pas' {frmLauncher},
  U_Settings in 'Settings\U_Settings.pas' {frmOpcoes},
  U_Functions in 'Functions\U_Functions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLauncher, frmLauncher);
  Application.Run;
end.
