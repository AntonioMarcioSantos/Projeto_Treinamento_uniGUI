unit UDmPesquisas;

interface

uses
  SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDWConstsData,
  uRESTDWPoolerDB;

type
  TDmPesquisas = class(TDataModule)
    FDQryPlanoContas: TRESTDWClientSQL;
    FDQryPlanoContasID: TIntegerField;
    FDQryPlanoContasNOME_CONTA: TStringField;
    FDQryPlanoContasNOME_GRUPO: TStringField;
    FDQryCentroCusto: TRESTDWClientSQL;
    FDQryCentroCustoID: TIntegerField;
    FDQryCentroCustoNOME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function DmPesquisas: TDmPesquisas;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function DmPesquisas: TDmPesquisas;
begin
  Result := TDmPesquisas(UniMainModule.GetModuleInstance(TDmPesquisas));
end;

initialization
  RegisterModuleClass(TDmPesquisas);

end.
