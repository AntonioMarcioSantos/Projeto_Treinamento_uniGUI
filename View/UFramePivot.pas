unit UFramePivot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMultiItem, uniComboBox, uniLabel, uniButton,
  uniBitBtn, uniGUIBaseClasses, uniPanel, uniURLFrame;

type
  TFramePivot = class(TUniFrame)
    UniPanel1: TUniPanel;
    BtExibir: TUniBitBtn;
    UniLabel1: TUniLabel;
    CmbTipoGrafico: TUniComboBox;
    UniURLFrame1: TUniURLFrame;
    UniContainerPanel2: TUniContainerPanel;
    procedure BtExibirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TFramePivot.BtExibirClick(Sender: TObject);
begin
  UniURLFrame1.HTML.LoadFromFile('E:\ProjetosWEB\Pivot_unigui\index2.html');
end;

end.
