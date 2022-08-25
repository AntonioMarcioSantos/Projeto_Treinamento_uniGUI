unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniToolBar, uniGUIBaseClasses,
  uniTreeView, uniTreeMenu, uniImageList, Vcl.Menus, uniMainMenu, uniButton,
  uniStatusBar, uniTimer, uniPageControl, uniPanel, uniMemo, uniLabel, uniBitBtn,
  dxGDIPlusClasses, uniImage, uniGUIFrame, uniURLFrame, uniColorPalette,
  uniEdit, UniFSColorPicker, acPNG, uniHTMLFrame, uniScreenMask,
  uniSyntaxEditorBase, uniSyntaxEditor, Vcl.StdCtrls;

type

  TModeloGrafico = (tpBarra, tpPizza, tpNone);

  TMainForm = class(TUniForm)
    UniNativeImageList1: TUniNativeImageList;
    UniMenuItems1: TUniMenuItems;
    mnuCadastros: TUniMenuItem;
    mnuMovimentacao: TUniMenuItem;
    mnuRelatorios: TUniMenuItem;
    mnuRelatorioFechamentoCaixa: TUniMenuItem;
    mnuRelatorioExtratoContas: TUniMenuItem;
    mnuSair: TUniMenuItem;
    mnuGraficos: TUniMenuItem;
    mnuContas: TUniMenuItem;
    UniStatusBar1: TUniStatusBar;
    PagePrincipal: TUniPageControl;
    TabHome: TUniTabSheet;
    UniContainerPanel1: TUniContainerPanel;
    mnuGruposdeContas: TUniMenuItem;
    mnuPlanodeContas: TUniMenuItem;
    mnuCentrodeCusto: TUniMenuItem;
    mnuSuporte: TUniMenuItem;
    DashBoard: TUniMenuItem;
    mnubanco: TUniMenuItem;
    UniFSColorPicker1: TUniFSColorPicker;
    mnuPivot: TUniMenuItem;
    UniScreenMask1: TUniScreenMask;
    PanelTop: TUniPanel;
    UniLabel1: TUniLabel;
    UniLblButtoDrower: TUniLabel;
    UniTreeMenu1: TUniTreeMenu;
    UniURLFramePrincipal: TUniURLFrame;
    procedure mnuSairClick(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniTreeMenu1SelectionChange(Sender: TObject);
    procedure PagePrincipalChange(Sender: TObject);
    procedure NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean);
    procedure mnuContasClick(Sender: TObject);
    procedure mnubancoClick(Sender: TObject);
    procedure mnuCentrodeCustoClick(Sender: TObject);
    procedure mnuGruposdeContasClick(Sender: TObject);
    procedure mnuPlanodeContasClick(Sender: TObject);
    procedure mnuMovimentacaoClick(Sender: TObject);
    procedure mnuGraficosClick(Sender: TObject);
    procedure mnuRelatorioFechamentoCaixaClick(Sender: TObject);
    procedure UniFSColorPicker1Select(Sender: TObject);
    procedure DashBoardClick(Sender: TObject);
    procedure mnuPivotClick(Sender: TObject);
    procedure UniURLFramePrincipalAjaxEvent(Sender: TComponent;
      EventName: string; Params: TUniStrings);
    procedure UniURLFramePrincipalFrameLoaded(Sender: TObject);
    procedure mnuSuporteClick(Sender: TObject);
    procedure MontaDashBoardHome ;
    procedure UniLblButtoDrowerClick(Sender: TObject);
    procedure mnuRelatorioExtratoContasClick(Sender: TObject);
    procedure _click;

  private
    { Private declarations }
    procedure TabSheetClose(Sender: TObject; var AllowClose: Boolean);
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication,
  UFrameBase,
  UFrameBancos,
  UFrameContas,
  UFrameGrupoContas,
  UFramePlanoContas,
  UFrameMovimentacao,
  UFrameGraficos,
  URel_FechamentoCaixa,
  UFramePivot, ClassGraficos, UFrameCentroCusto, URel_Receitas_Despesas;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));

end;



procedure TMainForm.DashBoardClick(Sender: TObject);
begin
  MontaDashBoardHome;
end;

procedure TMainForm.mnubancoClick(Sender: TObject);
begin
   NovaAba(TFrame(TFrameBancos),'Bancos',True);
end;

procedure TMainForm.mnuCentrodeCustoClick(Sender: TObject);
begin
   NovaAba(TFrame(TFrameCentroCusto),'Centro de Custo',True);
end;

procedure TMainForm.mnuMovimentacaoClick(Sender: TObject);
begin
   NovaAba(TFrame(TFrameMovimentacao),'Movimentação',True);
end;

procedure TMainForm.mnuSairClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.mnuGraficosClick(Sender: TObject);
begin
   NovaAba(TFrame(TFrameGraficos),'Graficos',True);
end;

procedure TMainForm.mnuGruposdeContasClick(Sender: TObject);
begin
   NovaAba(TFrame(TFrameGrupoContas),'Grupos de Contas',True);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniTreeMenu1.Font.Size   := 60;
  UniTreeMenu1.Font.Height := 20 ;
//
  UniTimer1Timer(nil);

  MontaDashBoardHome ;
end;

procedure TMainForm.UniFSColorPicker1Select(Sender: TObject);
begin
 PanelTop.Color      := UniFSColorPicker1.ColorValue ;
end;

procedure TMainForm.UniLblButtoDrowerClick(Sender: TObject);
begin
  UniTreeMenu1.Micro := not UniTreeMenu1.Micro;
end;

// Chama Novo Frame
procedure TMainForm.NovaAba(nomeFormFrame: TFrame; descFormFrame: string;
  Fechar: Boolean);
var TabSheet      :TUniTabSheet;
    FCurrentFrame :TUniFrame;
    I             :Integer;
begin
   //   UniTreeMenu1.Micro    := true ; /// fecha o lateral
      pagePrincipal.Visible := True;

      {Verificando se a tela já está aberto e redireciona a ela}
      for I := 0 to pagePrincipal.PageCount - 1 do
        with pagePrincipal do
          if Pages[I].Caption = descFormFrame  then
            begin
              pagePrincipal.ActivePageIndex := I;
              Exit;
            end;

      TabSheet              := TUniTabSheet.Create(Self);
      TabSheet.PageControl  := pagePrincipal;
      TabSheet.Caption      := descFormFrame;
      TabSheet.Closable     := Fechar;

      UniScreenMask1.Enabled := true ;

      FCurrentFrame:= TUniFrameClass(nomeFormFrame).Create(Self);

      with FCurrentFrame do
        begin
          Align               := alClient;
          Parent              := TabSheet;
        end;

      Refresh;

      pagePrincipal.ActivePage := TabSheet;
end;

procedure TMainForm.mnuPivotClick(Sender: TObject);
begin
 // NovaAba(TFrame(TFramePivot),'Pivot',True);
end;

// Change do PageControl Principal
procedure TMainForm.PagePrincipalChange(Sender: TObject);
var
  T : TUniTabSheet;
  N : TUniTreeNode;
begin
  T := PagePrincipal.ActivePage;
  if Assigned(T) then
  begin
    N := T.Data;
    UniTreeMenu1.Selected := N;
  end;
end;

procedure TMainForm.mnuPlanodeContasClick(Sender: TObject);
begin
       NovaAba(TFrame(TFramePlanoContas),'Plano de Contas',True);
end;

procedure TMainForm.mnuRelatorioExtratoContasClick(Sender: TObject);
begin
  FrmRelReceitasDespesas.ShowModal ;
end;

procedure TMainForm.mnuRelatorioFechamentoCaixaClick(Sender: TObject);
begin
   FrmRelFechamentoCaixa.ShowModal ;
end;

procedure TMainForm.mnuContasClick(Sender: TObject);
begin
  NovaAba(TFrame(TFrameContas),'Contas',True);
end;

// Aqui Controla a Tab quando Fechar
procedure TMainForm.TabSheetClose(Sender: TObject; var AllowClose: Boolean);
var
  N : TUniTreeNode;
begin
  N := (Sender as TUniTabSheet).Data;
  if N is TUniTreeNode then
    (N as TUniTreeNode).Data := nil;

  if PagePrincipal.PageCount = 1 then
    UniTreeMenu1.Selected := nil;
end;

procedure TMainForm.UniTimer1Timer(Sender: TObject);
begin
  UniStatusBar1.Panels[0].Text := FormatDateTime('hh:nn', Time);
end;


procedure TMainForm.UniTreeMenu1SelectionChange(Sender: TObject);
var
  N : TUniTreeNode;
  T : TUniTabSheet;
begin
//  N := UniTreeMenu1.Selected;
//  if Assigned(N) and N.IsLeaf then
//  begin
//    if N.Data = nil then
//    begin
//      T := TUniTabSheet.Create(Self);
//      T.PageControl := PagePrincipal;
//      T.Caption     := N.Text;
//      T.ImageIndex  := N.ImageIndex;
//      T.Closable    := True;
//      T.OnClose     := TabSheetClose;
//      N.Data        := T;
//      T.Data        := N;
//    end
//    else
//    begin
//      T := N.Data;
//    end;
//    PagePrincipal.ActivePage := T;
//  end;
end;

procedure TMainForm.UniURLFramePrincipalAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
  var nome,HTML:string ;
begin
//  if EventName = 'call' then
//  begin
//    _click
//  end;

end;
procedure TMainForm.mnuSuporteClick(Sender: TObject);
begin
   UniSession.AddJS('document.getElementById("teste").innerHTML="test text" ;')   ;

end;

procedure TMainForm.MontaDashBoardHome;
var
Graficos : TGraficos ;


begin
    //***  Memo Para exibir o Código  para Colegas
    UniURLFramePrincipal.HTML.Clear ;

    Graficos.MontaGraficoHome('.\www\Dashboard_home.html',
                              '.\www\Dashboard_homeTemp.HTML',
                              UniURLFramePrincipal,
                              Self);



end;

procedure TMainForm.UniURLFramePrincipalFrameLoaded(Sender: TObject);
begin
   UniScreenMask1.Enabled := true ;
end;

procedure TMainForm._click;
begin
  showMessage('teste');
  UniSession.AddJS('document.getElementById("teste").innerHTML = "123,00";')   ;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
