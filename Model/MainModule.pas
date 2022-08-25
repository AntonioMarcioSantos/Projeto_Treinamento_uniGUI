unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, uDWAbout, uRESTDWPoolerDB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Stan.StorageJSON, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client;

type
  TUniMainModule = class(TUniGUIMainModule)
    Conexao: TRESTDWDataBase;

    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    nFilial,nUsuario:Integer ;
    cNomeRelatorio,cNomeUsuario,cNomeEmpresa:String ;

  end;

function UniMainModule: TUniMainModule;


implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication,UniGuiTheme;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
begin
 nFilial      := 1 ;
 cNomeUsuario := 'MARCIO' ;
 cNomeEmpresa := 'SUA EMPRESA' ;
end;


initialization
  RegisterMainModuleClass(TUniMainModule);
end.
