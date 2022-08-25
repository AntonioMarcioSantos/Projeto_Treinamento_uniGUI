program Servidor;

uses
  Vcl.Forms,
  uFrmMain in 'Source\uFrmMain.pas' {FrmMain},
  uDmDados in 'Source\uDmDados.pas' {DmDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDmDados, DmDados);
  Application.Run;
end.
