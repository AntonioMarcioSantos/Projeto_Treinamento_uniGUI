unit UFramePlanoContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB, uniGUIBaseClasses,
  uniGUIClasses, uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit, uniDBText,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox;

type
  TFramePlanoContas = class(TFrameBase)
    FDQryCadID: TIntegerField;
    FDQryCadNOME_CONTA: TStringField;
    FDQryCadGRUPO_FK: TIntegerField;
    FDQryCadTIPO: TStringField;
    UniLabel2: TUniLabel;
    UniDBText1: TUniDBText;
    UniDBEdit2: TUniDBEdit;
    UniLabel4: TUniLabel;
    FDQryGrupoContas: TRESTDWClientSQL;
    dsGrupoContas: TDataSource;
    UniLabel3: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    FDQryGrupoContasID: TIntegerField;
    FDQryGrupoContasNOME_GRUPO: TStringField;
    FDQryGrupoContasTIPO: TStringField;
    FDQryFiltroID: TIntegerField;
    FDQryFiltroNOME_CONTA: TStringField;
    FDQryFiltroNOME_GRUPO: TStringField;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FramePlanoContas: TFramePlanoContas;

implementation

{$R *.dfm}

procedure TFramePlanoContas.UniFrameCreate(Sender: TObject);
begin
  inherited;
  FDQryGrupoContas.Open ;
end;

end.
