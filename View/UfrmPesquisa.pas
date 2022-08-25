unit UfrmPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, Data.DB, uniButton,
  uniBitBtn, uniLabel, uniEdit, uniPanel, uniGUIBaseClasses, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB;

type
  TFrmPesquisaBase = class(TUniForm)
    UniContainerPanel2: TUniContainerPanel;
    UniPnlPesquisar: TUniPanel;
    EdPesquisar: TUniEdit;
    LblPesquisa: TUniLabel;
    BtFiltrar: TUniBitBtn;
    dsPesquisa: TDataSource;
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmPesquisaBase: TFrmPesquisaBase;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FrmPesquisaBase: TFrmPesquisaBase;
begin
  Result := TFrmPesquisaBase(UniMainModule.GetFormInstance(TFrmPesquisaBase));
end;

end.
