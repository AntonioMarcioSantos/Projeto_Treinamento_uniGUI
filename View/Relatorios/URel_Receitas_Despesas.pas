unit URel_Receitas_Despesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniPanel, uniButton, uniBitBtn, uniLabel,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  uniDateTimePicker, uniGroupBox, uniGUIBaseClasses, Data.DB;

type
  TFrmRelReceitasDespesas = class(TUniForm)
    UniPanel1: TUniPanel;
    UniGroupBox1: TUniGroupBox;
    EdDtIni: TUniDateTimePicker;
    EdDtFim: TUniDateTimePicker;
    UniDBLkupCaixa: TUniDBLookupComboBox;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel4: TUniLabel;
    BtImprimir: TUniBitBtn;
    BtSair: TUniBitBtn;
    UniContainerPanel2: TUniContainerPanel;
    DsContas: TDataSource;
    procedure BtImprimirClick(Sender: TObject);
    procedure ValidaContaEmpty;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtSairClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmRelReceitasDespesas: TFrmRelReceitasDespesas;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UFrameRelatorioBase, ClassRelatorios, UDmRelatorios,
  ClassAlert, ServerModule;

function FrmRelReceitasDespesas: TFrmRelReceitasDespesas;
begin
  Result := TFrmRelReceitasDespesas(UniMainModule.GetFormInstance(TFrmRelReceitasDespesas));
end;

procedure TFrmRelReceitasDespesas.BtImprimirClick(Sender: TObject);
var
  AUrl : string;
  oDadosFechamentoCX : TDadosFechamentoCX ;
  oProcessaRel       : TProcessaRel ;
begin

  ValidaContaEmpty;


  UniMainModule.cNomeRelatorio := 'RelReceitasDespesas' ;

  oProcessaRel       := TProcessaRel.Create();
  oDadosFechamentoCX := TDadosFechamentoCX.Create();
//
  Try
    oDadosFechamentoCX.BuscaDadosMovimentoReceitasDespesas(EdDtIni.DateTime,EdDtFim.DateTime,UniMainModule.nFilial,DmRelatorio.QryContasID.AsInteger) ;

//    oDadosFechamentoCX.MontaTotaisFechamento(EdDtIni.DateTime,EdDtFim.DateTime,UniMainModule.nFilial,DmRelatorio.QryContasID.AsInteger) ;

    oDadosFechamentoCX.NomeUsuario := UniMainModule.cNomeUsuario ;
//    showmessage(UniServerModule.FilesFolderPath ) ;
    AUrl := oProcessaRel.GeraReport(EdDtIni.DateTime,EdDtFim.DateTime)  ;

    With FrmRelatorioBase do
      Begin
        UniURLFrame1.URL := AUrl ;
        Show();
      End;

  Finally
    oDadosFechamentoCX.FechaDadosMovimentoReceitasDespesas();
    oDadosFechamentoCX.Free ;
    oProcessaRel.Free ;
//
   End;

//
end;

procedure TFrmRelReceitasDespesas.BtSairClick(Sender: TObject);
begin
 close;
end;

procedure TFrmRelReceitasDespesas.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmRelatorio.QryContas.Close  ;
  Action := caFree ;
end;

procedure TFrmRelReceitasDespesas.UniFormCreate(Sender: TObject);
begin
  with DmRelatorio do
     begin
       QryContas.Close ;
//       QryContas.ParamByName('id_Filial').AsInteger := MainModule.UniMainModule.nFilial ;
       QryContas.Open ;
     end;
end;

procedure TFrmRelReceitasDespesas.UniFormShow(Sender: TObject);
begin
 EdDtIni.DateTime := Now ;
 EdDtFim.DateTime := Now ;

end;

procedure TFrmRelReceitasDespesas.ValidaContaEmpty;
begin
  if UniDBLkupCaixa.Text = '' then
  begin
    UniAlert.SwAlerta('ATENÇÃO', 'Você precisa selecionar uma Conta', Aviso, 3000);
    abort;
  end;
end;

end.
