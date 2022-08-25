unit UPesquisaCentroCusto;

interface

uses
  UfrmPesquisa, Data.DB, uniBasicGrid, uniDBGrid, uniLabel, uniGUIClasses,
  uniEdit, uniPanel, uniButton, uniBitBtn, System.Classes, Vcl.Controls,
  Vcl.Forms, uniGUIBaseClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDWConstsData,
  uRESTDWPoolerDB;




type
  TFrmPesquisaCentroCusto = class(TFrmPesquisaBase)
    UniBitBtn1: TUniBitBtn;
    UniLabel1: TUniLabel;
    procedure BtFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
    function FrmPesquisaCentroCusto: TFrmPesquisaCentroCusto;

implementation

uses MainModule , UDmPesquisas;

{$R *.dfm}

function FrmPesquisaCentroCusto: TFrmPesquisaCentroCusto;
begin
  Result := TFrmPesquisaCentroCusto(UniMainModule.GetFormInstance(TFrmPesquisaCentroCusto));
end;




procedure TFrmPesquisaCentroCusto.BtFiltrarClick(Sender: TObject);
begin
  With DmPesquisas do
    Begin
      FDQryCentroCusto.Close ;
      FDQryCentroCusto.ParamByName('NOME').Value := '%'+EdPesquisar.Text ;
      FDQryCentroCusto.Open ;
    End;

end;

end.
