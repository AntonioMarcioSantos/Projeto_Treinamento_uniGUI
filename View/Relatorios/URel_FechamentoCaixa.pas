unit URel_FechamentoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniDateTimePicker, uniProgressBar, uniPanel,
  uniGroupBox, uniStatusBar, uniGUIBaseClasses, uniGenericControl, uniBitBtn,
  uniButton, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  uniLabel, uniScreenMask, Data.DB, uniMemo, uniURLFrame;

type
  TFrmRelFechamentoCaixa = class(TUniForm)
    UniGroupBox1: TUniGroupBox;
    UniPanel1: TUniPanel;
    EdDtIni: TUniDateTimePicker;
    EdDtFim: TUniDateTimePicker;
    UniDBLkupCaixa: TUniDBLookupComboBox;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel4: TUniLabel;
    UniScreenMask1: TUniScreenMask;
    DsContas: TDataSource;
    UniContainerPanel2: TUniContainerPanel;
    BtImprimir: TUniBitBtn;
    BtSair: TUniBitBtn;
    procedure BtSairClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormCreate(Sender: TObject);
  private
    procedure ValidaContaEmpty;
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmRelFechamentoCaixa: TFrmRelFechamentoCaixa;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UFrameRelatorioBase, ClassRelatorios, UDmRelatorios,
  ClassAlert, ServerModule;

function FrmRelFechamentoCaixa: TFrmRelFechamentoCaixa;
begin
  Result := TFrmRelFechamentoCaixa(UniMainModule.GetFormInstance(TFrmRelFechamentoCaixa));
end;

procedure TFrmRelFechamentoCaixa.BtImprimirClick(Sender: TObject);
var
  AUrl : string;
  oDadosFechamentoCX : TDadosFechamentoCX ;
  oProcessaRel       : TProcessaRel ;
begin

  ValidaContaEmpty;


  UniMainModule.cNomeRelatorio := 'RelatorioFechamentoCaixa' ;

  oProcessaRel       := TProcessaRel.Create();
  oDadosFechamentoCX := TDadosFechamentoCX.Create();

//
  Try
    oDadosFechamentoCX.BuscaDadosMovimento(EdDtIni.DateTime,
                                           EdDtFim.DateTime,
                                           UniMainModule.nFilial,
                                           DmRelatorio.QryContasID.AsInteger) ;

    oDadosFechamentoCX.MontaTotaisFechamento(EdDtIni.DateTime,
                                             EdDtFim.DateTime,
                                             UniMainModule.nFilial,
                                             DmRelatorio.QryContasID.AsInteger) ;

    oDadosFechamentoCX.NomeUsuario := UniMainModule.cNomeUsuario ;

    AUrl := oProcessaRel.GeraReport(EdDtIni.DateTime,EdDtFim.DateTime)  ;

    With FrmRelatorioBase do
      Begin
        UniURLFrame1.URL := AUrl ;
        Show();
      End;

  Finally
    oDadosFechamentoCX.FechaDadosMovimento();
    oDadosFechamentoCX.Free ;
    oProcessaRel.Free ;

   End;

//
end;

procedure TFrmRelFechamentoCaixa.BtSairClick(Sender: TObject);
begin
//   DmRelatorio.QryContas.Open ;
//   DmRelatorio.QryContas.First ;
//   Begin
//     MemoTxt.Clear    ;
//     while not DmRelatorio.QryContas.Eof do
//      Begin
//        MemoTxt.Lines.Add( Copy(DmRelatorio.QryContasNOME_CONTA.AsString,1,30) );
//        DmRelatorio.QryContas.Next ;
//      End;
//   End;
//
//   MemoTxt.Lines.SaveToFile('.\www\Lista.txt');

 Close ;
end;

procedure TFrmRelFechamentoCaixa.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DmRelatorio.QryContas.Close  ;
  Action := caFree ;
end;

procedure TFrmRelFechamentoCaixa.UniFormCreate(Sender: TObject);
begin
  with DmRelatorio do
     begin
       QryContas.Close ;
//       QryContas.ParamByName('id_Filial').AsInteger := MainModule.UniMainModule.nFilial ;
       QryContas.Open ;
     end;
end;

procedure TFrmRelFechamentoCaixa.ValidaContaEmpty;
begin
  if UniDBLkupCaixa.Text = '' then
  begin
    UniAlert.SwAlerta('ATENÇÃO', 'Você precisa selecionar uma Conta', Aviso, 3000);
    abort;
  end;
end;

procedure TFrmRelFechamentoCaixa.UniFormShow(Sender: TObject);
begin

 EdDtIni.DateTime := Now ;
 EdDtFim.DateTime := Now ;

end;

end.
