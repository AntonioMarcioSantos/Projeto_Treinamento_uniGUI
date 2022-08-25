unit UDmRelatorios;

interface

uses
  SysUtils, Classes, Data.DB, MemDS, DBAccess, Uni, frxClass, frxExportPDF,
  frxDBSet, frxGradient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDWConstsData,
  uRESTDWPoolerDB, frxExportBaseDialog;

type
  TDmRelatorio = class(TDataModule)
    frxRepFechamento: TfrxReport;
    frxDBDatasetMovimentoCaixa: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxReport_que_tava: TfrxReport;
    frxDBDatasetMontaTotais: TfrxDBDataset;
    QryMovimento_Caixa: TRESTDWClientSQL;
    QryContas: TRESTDWClientSQL;
    QryContasID: TIntegerField;
    QryContasNOME_CONTA: TStringField;
    QryContasSALDO_ANTERIOR: TFloatField;
    QryContasSALDO: TFloatField;
    QryContasBANCO_FK: TIntegerField;
    QryMovimento_CaixaID: TIntegerField;
    QryMovimento_CaixaEMPRESA_FK: TIntegerField;
    QryMovimento_CaixaDATA: TDateField;
    QryMovimento_CaixaCONTA: TIntegerField;
    QryMovimento_CaixaCONTA_PLANO: TIntegerField;
    QryMovimento_CaixaCENTRO_CUSTO: TIntegerField;
    QryMovimento_CaixaREFERENTE: TStringField;
    QryMovimento_CaixaDEBITO: TFloatField;
    QryMovimento_CaixaCREDITO: TFloatField;
    QryMovimento_CaixaDATA_MOVIMENTO: TDateField;
    QryMovimento_CaixaTIPO: TStringField;
    QryMovimento_CaixaDOCUMENTO: TStringField;
    QryMovimento_CaixaUSUARIO: TStringField;
    QryMovimento_CaixaORIGEM: TStringField;
    QryMovimento_CaixaNOME_CONTA: TStringField;
    QryMovimento_CaixaNOME_CONTA_PLANO: TStringField;
    QryMontaTotais: TRESTDWClientSQL;
    QryMontaTotaisCONTA: TIntegerField;
    QryMontaTotaisDEBITO: TFloatField;
    QryMontaTotaisCREDITO: TFloatField;
    QryMontaTotaisSALDO: TFloatField;
    QryRecDesp: TRESTDWClientSQL;
    QryRecDespCONTA_PLANO: TIntegerField;
    QryRecDespTIPO: TStringField;
    QryRecDespNOME_CONTA: TStringField;
    QryRecDespDEBITO: TFloatField;
    QryRecDespCREDITO: TFloatField;
    frxDBDatasetRecDesp: TfrxDBDataset;
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function DmRelatorio: TDmRelatorio;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function DmRelatorio: TDmRelatorio;
begin
  Result := TDmRelatorio(UniMainModule.GetModuleInstance(TDmRelatorio));
end;

initialization
  RegisterModuleClass(TDmRelatorio);

end.
