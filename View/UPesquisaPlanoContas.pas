unit UPesquisaPlanoContas;

interface

uses
  UfrmPesquisa, Data.DB, uniBasicGrid, uniDBGrid, uniLabel, uniGUIClasses,
  uniEdit, uniPanel, uniButton, uniBitBtn, System.Classes, Vcl.Controls,
  Vcl.Forms, uniGUIBaseClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDWConstsData,
  uRESTDWPoolerDB;




type
  TFrmPesquisaPlanoContas = class(TFrmPesquisaBase)
    UniBitBtn1: TUniBitBtn;
    UniLabel1: TUniLabel;
    procedure BtFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
    function FrmPesquisaPlanoContas: TFrmPesquisaPlanoContas;

implementation

uses MainModule , UDmPesquisas;

{$R *.dfm}

function FrmPesquisaPlanoContas: TFrmPesquisaPlanoContas;
begin
  Result := TFrmPesquisaPlanoContas(UniMainModule.GetFormInstance(TFrmPesquisaPlanoContas));
end;




procedure TFrmPesquisaPlanoContas.BtFiltrarClick(Sender: TObject);
begin
  With DmPesquisas do
    Begin
      FDQryPlanoContas.Close ;
      FDQryPlanoContas.ParamByName('NOME_CONTA').Value := '%'+EdPesquisar.Text ;
      FDQryPlanoContas.Open ;
    End;

end;

end.
