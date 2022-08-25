unit uDmDados;

interface

uses
  System.SysUtils, System.Classes,uDWDatamodule, Data.DB, DBAccess,
  uRESTDWPoolerDB, uDWAbout, UniProvider,
  InterBaseUniProvider, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBDef,
  FireDAC.Phys.IBBase, FireDAC.Phys.IB, FireDAC.Comp.UI,
  FireDAC.Comp.Client, uRestDWDriverFD;

type
  TDmDados = class(TServerMethodDataModule)
    RESTDWPoolerDB: TRESTDWPoolerDB;
    FireDacCon: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    RESTDWDriverFD1: TRESTDWDriverFD;
    RESTDWDriverFD2: TRESTDWDriverFD;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDados: TDmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
