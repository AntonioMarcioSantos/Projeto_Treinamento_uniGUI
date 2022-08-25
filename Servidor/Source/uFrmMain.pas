unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDmDados, uRESTDWBase, uDWAbout,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus, Vcl.AppEvnts;

type
  TFrmMain = class(TForm)
    RESTServicePooler: TRESTServicePooler;
    RESTDWServiceNotification: TRESTDWServiceNotification;
    PageControl1: TPageControl;
    TsConfigs: TTabSheet;
    TsLogs: TTabSheet;
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    tupdatelogs: TTimer;
    ButtonStart: TButton;
    ButtonStop: TButton;
    memoReq: TMemo;
    Label19: TLabel;
    memoResp: TMemo;
    pmMenu: TPopupMenu;
    RestaurarAplicao1: TMenuItem;
    N5: TMenuItem;
    SairdaAplicao1: TMenuItem;
    ctiPrincipal: TTrayIcon;
    GroStatus: TGroupBox;
    LblStatus: TLabel;
    Label2: TLabel;
    ApplicationEvents1: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure tupdatelogsTimer(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure RestaurarAplicao1Click(Sender: TObject);
    procedure SairdaAplicao1Click(Sender: TObject);
    procedure RESTServicePoolerLastRequest(Value: string);
    procedure RESTServicePoolerLastResponse(Value: string);
    procedure ButtonStartClick(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    VLastRequest,VLastRequestB : string;

    procedure StartServer;
    procedure ShowApplication;

    Function  GetHandleOnTaskBar: THandle;
    procedure ChangeStatusWindow;
    procedure HideApplication;
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

// Aqui para ficar verificanado quando um Botão estiver Ativo o outro tem que Ficar False
procedure TFrmMain.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  ButtonStart.Enabled   := Not RESTServicePooler.Active;
  ButtonStop.Enabled    := RESTServicePooler.Active;
end;

// Botão Iniciar
procedure TFrmMain.ButtonStartClick(Sender: TObject);
begin
  StartServer;
end;

// Botão Parar
procedure TFrmMain.ButtonStopClick(Sender: TObject);
begin
  Tupdatelogs.Enabled      := False;
  RESTServicePooler.Active := False;
  PageControl1.ActivePage  := TsConfigs;
  LblStatus.Caption        := 'Parado' ;
  ShowApplication;
end;

// Controle PopMenu
procedure TFrmMain.ChangeStatusWindow;
begin
  If Self.Visible Then
    SairdaAplicao1.Caption := 'Minimizar para a bandeja'
  Else
    SairdaAplicao1.Caption := 'Sair da Aplicação';

  Application.ProcessMessages;
end;

// Aqui Testa a Saida da Aplicação
procedure TFrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Not RESTServicePooler.Active;
  If Not CanClose Then
  Begin
    CanClose := Not Self.Visible;
    If CanClose Then
       CanClose := Application.MessageBox('Você deseja realmente sair do SERVIDOR ?', 'Pergunta ?', Mb_IconQuestion + Mb_YesNo) = MrYes
    Else
      HideApplication;
  End;
end;

// Form Create
procedure TFrmMain.FormCreate(Sender: TObject);
begin
   RESTServicePooler.ServerMethodClass := TDmDados;
end;

// Controle  para TaskBar ( minimizado )
function TFrmMain.GetHandleOnTaskBar: THandle;
begin
   Result := Application.Handle;
end;

// Controme quando para esconder / minimizar
procedure TFrmMain.HideApplication;
begin
  CtiPrincipal.Visible     := True;
  Application.ShowMainForm := False;
  If Self <> Nil Then
    Self.Visible := False;
  Application.Minimize;
  ShowWindow(GetHandleOnTaskBar, SW_HIDE);
  ChangeStatusWindow;
end;

// Quando for Restaurar
procedure TFrmMain.RestaurarAplicao1Click(Sender: TObject);
begin
  ShowApplication;
end;

// aqui o Evento do Pooler para pegar a Resquisição
procedure TFrmMain.RESTServicePoolerLastRequest(Value: string);
begin
  VLastRequest := Value;
end;

// aqui o Evento do Pooler para pegar a Resposta
procedure TFrmMain.RESTServicePoolerLastResponse(Value: string);
begin
  VLastRequestB := Value;
end;

procedure TFrmMain.SairdaAplicao1Click(Sender: TObject);
begin
  Close ;
end;

// Quando Restaurar
procedure TFrmMain.ShowApplication;
begin
  CtiPrincipal.Visible     := False;
  Application.ShowMainForm := True;
  If Self <> Nil Then
  Begin
    Self.Visible     := True;
    Self.WindowState := WsNormal;
  End;
  LblStatus.Caption := 'Ativo' ;
  ShowWindow(GetHandleOnTaskBar, SW_SHOW);
  ChangeStatusWindow;
end;
//Quando Iniciar o Server chama a Procedure abaixo
procedure TFrmMain.StartServer;
begin
  If Not RESTServicePooler.Active Then
  Begin
    RESTServicePooler.Active   := True;
    If Not RESTServicePooler.Active Then
      Exit;
    PageControl1.ActivePage := TsLogs;
    HideApplication;
    Tupdatelogs.Enabled := True;
  End;
end;

// Controle do Time para ficar escrevendo nos Memos de Requisição e Respostas
procedure TFrmMain.tupdatelogsTimer(Sender: TObject);
var
  VTempLastRequest, VTempLastRequestB: string;
Begin
  Tupdatelogs.Enabled := False;
  Try
    VTempLastRequest  := VLastRequest  ;
    VTempLastRequestB := VLastRequestB ;
    If (VTempLastRequest <> '') Then
    Begin

    // aqui é a Parte requisição
      If MemoReq.Lines.Count > 0 Then
        If MemoReq.Lines[MemoReq.Lines.Count - 1] = VTempLastRequest Then
           Exit;

      If MemoReq.Lines.Count = 0 Then
        MemoReq.Lines.Add(Copy(VTempLastRequest, 1, 100))
      Else
        MemoReq.Lines[MemoReq.Lines.Count - 1] := Copy(VTempLastRequest, 1, 100);

      If Length(VTempLastRequest) > 1000 Then
        MemoReq.Lines[MemoReq.Lines.Count - 1] := MemoReq.Lines[MemoReq.Lines.Count - 1] + '...';

      If MemoResp.Lines.Count > 0 Then
        If MemoResp.Lines[MemoResp.Lines.Count - 1] = VTempLastRequestB Then
          Exit;

     // aqui é a Parte resposta
      If MemoResp.Lines.Count = 0 Then
        MemoResp.Lines.Add(Copy(VTempLastRequestB, 1, 100))
      Else
        MemoResp.Lines[MemoResp.Lines.Count - 1] := Copy(VTempLastRequestB, 1, 100);

      If Length(VTempLastRequest) > 1000 Then
         MemoResp.Lines[MemoResp.Lines.Count - 1] := MemoResp.Lines[MemoResp.Lines.Count - 1] + '...';
    End;
  Finally
    Tupdatelogs.Enabled := True;
  End;

end;

end.
