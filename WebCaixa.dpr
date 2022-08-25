{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  WebCaixa ;

uses
  uniGUIISAPI,
  Forms,
  MainModule in 'Model\MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'View\Main.pas' {MainForm: TUniForm},
  ServerModule in 'Model\ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  UFrameBase in 'View\UFrameBase.pas' {FrameBase: TUniFrame},
  ClassAuxiliar in 'Controller\ClassAuxiliar.pas',
  UFrameContas in 'View\UFrameContas.pas' {FrameContas: TUniFrame},
  UFrameBancos in 'View\UFrameBancos.pas' {FrameBancos: TUniFrame},
  UFrameGrupoContas in 'View\UFrameGrupoContas.pas' {FrameGrupoContas: TUniFrame},
  UFramePlanoContas in 'View\UFramePlanoContas.pas' {FramePlanoContas: TUniFrame},
  UFrameMovimentacao in 'View\UFrameMovimentacao.pas' {FrameMovimentacao: TUniFrame},
  UFrmLogin in 'View\UFrmLogin.pas' {UniLoginForm1: TUniLoginForm},
  ClassLogin in 'Controller\ClassLogin.pas',
  UfrmPesquisa in 'View\UfrmPesquisa.pas' {FrmPesquisaBase: TUniForm},
  UFrmNovoUsuario in 'View\UFrmNovoUsuario.pas' {FrmNovoUsuario: TUniForm},
  UDmLogin in 'Model\UDmLogin.pas' {DMLogin: TDataModule},
  Unit_Captcha in 'Controller\Unit_Captcha.pas',
  ClassAlert in 'Controller\ClassAlert.pas',
  uniSweetAlert in 'Controller\uniSweetAlert.pas',
  UFrmRecuperarSenha in 'View\UFrmRecuperarSenha.pas' {FrmRecuperarSenha: TUniForm},
  UDmPesquisas in 'Model\UDmPesquisas.pas' {DmPesquisas: TDataModule},
  UPesquisaCentroCusto in 'View\UPesquisaCentroCusto.pas' {FrmPesquisaCentroCusto: TUniForm},
  UPesquisaPlanoContas in 'View\UPesquisaPlanoContas.pas' {FrmPesquisaPlanoContas: TUniForm},
  UFrameGraficos in 'View\UFrameGraficos.pas' {FrameGraficos: TUniFrame},
  ClassGraficos in 'Controller\ClassGraficos.pas',
  ClassRelatorios in 'Controller\ClassRelatorios.pas',
  UDmRelatorios in 'Model\UDmRelatorios.pas' {DmRelatorio: TDataModule},
  URel_FechamentoCaixa in 'View\Relatorios\URel_FechamentoCaixa.pas' {FrmRelFechamentoCaixa: TUniForm},
  UFrameRelatorioBase in 'View\Relatorios\Frames\UFrameRelatorioBase.pas' {FrmRelatorioBase: TUniForm},
  UFramePivot in 'View\UFramePivot.pas' {FramePivot: TUniFrame},
  UDmGraficos in 'Model\UDmGraficos.pas' {DataModule1: TDataModule},
  UFrameCentroCusto in 'View\UFrameCentroCusto.pas' {FrameCentroCusto: TUniFrame},
  URel_Receitas_Despesas in 'View\Relatorios\URel_Receitas_Despesas.pas' {FrmRelReceitasDespesas: TUniForm};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
