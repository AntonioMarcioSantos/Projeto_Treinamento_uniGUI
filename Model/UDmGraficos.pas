unit UDmGraficos;

interface

uses
  SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDWConstsData,
  uRESTDWPoolerDB, uDWAbout, uDWResponseTranslator;

type
  TDataModule1 = class(TDataModule)
    RDWQrySQL: TRESTDWClientSQL;
    DWResponseTranslator1: TDWResponseTranslator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function DataModule1: TDataModule1;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function DataModule1: TDataModule1;
begin
  Result := TDataModule1(UniMainModule.GetModuleInstance(TDataModule1));
end;

initialization
  RegisterModuleClass(TDataModule1);

end.
