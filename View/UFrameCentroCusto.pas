unit UFrameCentroCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UFrameBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB, uniGUIBaseClasses,
  uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniEdit,
  uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit, uniDBText;

type
  TFrameCentroCusto = class(TFrameBase)
    FDQryCadID: TIntegerField;
    FDQryCadNOME: TStringField;
    UniDBText1: TUniDBText;
    UniDBEdit1: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



end.
