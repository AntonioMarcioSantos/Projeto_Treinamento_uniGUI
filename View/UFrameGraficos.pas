unit UFrameGraficos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniButton, uniBitBtn, uniLabel, uniEdit,
  uniGUIBaseClasses, uniMultiItem, uniComboBox, uniURLFrame, uniMemo,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  uDWAbout, uRESTDWPoolerDB, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uDWConstsData, uDWResponseTranslator,
  System.JSON.Types,
  System.JSON.Writers, uDWJSONObject, uDWConsts, uniPageControl ;

type
  TFrameGraficos = class(TUniFrame)
    UniContainerPanel2: TUniContainerPanel;
    UniURLFrameGrafico: TUniURLFrame;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniPnlPesquisar: TUniPanel;
    memoJson: TUniMemo;
    memoHTMLBase: TUniMemo;
    memoHTMLFinal: TUniMemo;
    UniPanel1: TUniPanel;
    BtExibir: TUniBitBtn;
    UniLabel1: TUniLabel;
    CmbTipoGrafico: TUniComboBox;
    procedure BtExibirClick(Sender: TObject);
  private
    procedure MontaBarra(cJsonString: string);
    procedure MontaPizza(cJsonString: string);
   { Private declarations }

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ClassGraficos, MainModule;



procedure TFrameGraficos.BtExibirClick(Sender: TObject);
var Graficos : TGraficos ;
    cSQLTemp,cJsonString:string ;
    virgulaJson,virgula:string ;

begin

   virgulaJson := '\u002C' ;
   Virgula     :='.' ;

   cSqlTemp := '' ;
   cSQLTemp := ' SELECT SUBSTRING(plano_contas.nome_conta from 1 for 30) as CONTA_PLANO, '+
               ' Case '+
               ' When sum(CREDITO) > 0 then sum(CREDITO) '+
               ' When sum(DEBITO ) > 0 then sum(DEBITO) '+
               ' End AS TOTAL '+
               ' from movimento_contas m , PLANO_CONTAS '+
               ' where '+
               ' m.conta_plano = PLANO_CONTAS.id '+
               ' group by 1 '+
               ' order by 2 DESC ' ;

    cJsonString   := Graficos.RetornaDadosJsonRDW(cSQLTemp) ;

   //***  Memo Para exibir o Código  para Colegas
    MemoJson.Clear ;
    memoJson.Text := cJsonString;

    UniURLFrameGrafico.HTML.Clear ;

    ///

   case CmbTipoGrafico.ItemIndex of
     0:Begin
          Graficos.MontaGraficoindividual(cJsonString,
                                          '.\www\barraBlack.html',
                                          '.\www\barrraBlackTemp.HTML',
                                          UniURLFrameGrafico,
                                          Self);

 //         MontaBarra(cJsonString);

          UniURLFrameGrafico.HTML.LoadFromFile('.\www\barraBlackTemp.html' ) ;

       End;
     1:Begin
         Graficos.MontaGraficoindividual(cJsonString,
                              '.\www\pie.html',
                              '.\www\pieTemp.html',
                              UniURLFrameGrafico,
                              Self);
//         MontaPizza(cJsonString);
         UniURLFrameGrafico.HTML.LoadFromFile('.\www\pieTemp.html' ) ;
       End;
    end;


end;

procedure TFrameGraficos.MontaBarra(cJsonString: string);
begin
    // carregando o HTML BASE
    memoHTMLBase.Clear;
    memoHTMLBase.Lines.LoadFromFile('.\www\barraBlack.html');

    /// / Tratando o Novo HTML para Exibir
    memoHTMLFinal.Clear;
    memoHTMLFinal.Text := StringReplace(memoHTMLBase.Text, 'DADOS',cJsonString, [rfReplaceAll, rfIgnoreCase]);
    memoHTMLFinal.Lines.SaveToFile('.\www\barraBlackTemp.HTML');

end;

procedure TFrameGraficos.MontaPizza(cJsonString: string);
begin
    // carregando o HTML BASE
    memoHTMLBase.Clear;
    memoHTMLBase.Lines.LoadFromFile('.\www\pie.html');
    /// Tratando o Novo HTML para Exibir

    memoHTMLFinal.Clear;
    memoHTMLFinal.Text := StringReplace(memoHTMLBase.Text, 'DADOS',cJsonString, [rfReplaceAll, rfIgnoreCase]);
    memoHTMLFinal.Lines.SaveToFile('.\www\pieTemp.HTML');

end;

end.
