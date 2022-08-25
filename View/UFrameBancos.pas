unit UFrameBancos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB, uniGUIBaseClasses,
  uniGUIClasses, uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit, uniDBText,
  uniGUITypes;

type
  TFrameBancos = class(TFrameBase)
    UniDBEdit2: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniDBText1: TUniDBText;
    UniLabel2: TUniLabel;
    FDQryCadID: TIntegerField;
    FDQryCadSIGLA_FENABAN: TStringField;
    FDQryCadNOME_BANCO: TStringField;
    FDQryFiltroID: TIntegerField;
    FDQryFiltroSIGLA_FENABAN: TStringField;
    FDQryFiltroNOME_BANCO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameBancos: TFrameBancos;

implementation

{$R *.dfm}


end.
