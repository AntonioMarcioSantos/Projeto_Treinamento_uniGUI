unit UDmLogin;

interface

uses
  SysUtils, Classes, Data.DB, MemDS, DBAccess, Uni, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB;

type
  TDMLogin = class(TDataModule)
    QryLogin: TRESTDWClientSQL;
    QryCadUsuarioNovo: TRESTDWClientSQL;
    ValidaUsuarioEmail: TRESTDWClientSQL;
    ValidaUsuarioEmailID: TIntegerField;
    ValidaUsuarioEmailNOME: TStringField;
    ValidaUsuarioEmailSENHA: TStringField;
    QryLoginID: TIntegerField;
    QryLoginEMPRESA_FK: TIntegerField;
    QryLoginNOME: TStringField;
    QryLoginSENHA: TStringField;
    QryLoginEMAIL: TStringField;
    QryLoginDATA_CADASTRO: TSQLTimeStampField;
    QryCadUsuarioNovoID: TIntegerField;
    QryCadUsuarioNovoEMPRESA_FK: TIntegerField;
    QryCadUsuarioNovoNOME: TStringField;
    QryCadUsuarioNovoSENHA: TStringField;
    QryCadUsuarioNovoEMAIL: TStringField;
    QryCadUsuarioNovoDATA_CADASTRO: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function DMLogin: TDMLogin;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function DMLogin: TDMLogin;
begin
  Result := TDMLogin(UniMainModule.GetModuleInstance(TDMLogin));
end;

initialization
  RegisterModuleClass(TDMLogin);

end.
