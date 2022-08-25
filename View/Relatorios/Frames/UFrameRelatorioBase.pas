unit UFrameRelatorioBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniURLFrame,
  frxClass, frxExportPDF, frxGradient, frxDBSet, ServerModule, uniPanel;

type
  TFrmRelatorioBase = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    UniPanel1: TUniPanel;
    UniButton2: TUniButton;
    frxGradientObject1: TfrxGradientObject;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
//
//    procedure PrepareAndShow(Report: TfrxReport; Exp: TfrxPDFExport);

  public
    { Public declarations }
    NomeRelatorio, SQLTable: string;
  end;

function FrmRelatorioBase: TFrmRelatorioBase;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UDmRelatorios;

function FrmRelatorioBase: TFrmRelatorioBase;
begin
  Result := TFrmRelatorioBase(UniMainModule.GetFormInstance(TFrmRelatorioBase));
end;



procedure TFrmRelatorioBase.UniButton1Click(Sender: TObject);
begin
  Close;
end;

end.
