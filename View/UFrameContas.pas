unit UFrameContas;

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
  TFrameContas = class(TFrameBase)
    FDQryCadID: TIntegerField;
    FDQryCadNOME_CONTA: TStringField;
    FDQryCadSALDO_ANTERIOR: TFloatField;
    FDQryCadSALDO: TFloatField;
    FDQryCadBANCO_FK: TIntegerField;
    UniLabel2: TUniLabel;
    UniDBText1: TUniDBText;
    UniLabel4: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel3: TUniLabel;
    FDQryBancos: TRESTDWClientSQL;
    dsBancos: TDataSource;
    FDQryBancosID: TIntegerField;
    FDQryBancosNOME_BANCO: TStringField;
    FDQryFiltroID: TIntegerField;
    FDQryFiltroNOME_CONTA: TStringField;
    FDQryFiltroNOME_BANCO: TStringField;
    FDQryFiltroSALDO: TFloatField;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameContas: TFrameContas;

implementation

{$R *.dfm}

procedure TFrameContas.UniFrameCreate(Sender: TObject);
begin

  inherited;
  FDQryBancos.Open ;
end;

end.
