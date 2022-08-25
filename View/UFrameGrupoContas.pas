unit UFrameGrupoContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB, uniGUIBaseClasses,
  uniGUIClasses, uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit, uniDBText,
  uniRadioGroup, uniDBRadioGroup;

type
  TFrameGrupoContas = class(TFrameBase)
    FDQryFiltroID: TIntegerField;
    FDQryFiltroNOME_GRUPO: TStringField;
    FDQryFiltroTIPO: TStringField;
    UniLabel2: TUniLabel;
    UniDBText1: TUniDBText;
    UniLabel4: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    FDQryCadID: TIntegerField;
    FDQryCadNOME_GRUPO: TStringField;
    FDQryCadTIPO: TStringField;
    UniDBRadioGroup1: TUniDBRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameGrupoContas: TFrameGrupoContas;
  //
  //
  //
  //

implementation

{$R *.dfm}

end.
