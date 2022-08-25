unit ClassGraficos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs,StdCtrls,System.UITypes,
  uniGUITypes,
  uniGUIAbstractClasses,
  uniGUIClasses,
  uniGUIForm,
  uniGUIBaseClasses,
  uniURLFrame,
  Data.DB, MemDS, DBAccess, Uni,
  uniMultiItem, uniComboBox, uniDBComboBox,uniMemo,IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP ,
  FireDAC.Comp.Client,
  uDWAbout,
  uRESTDWPoolerDB,
  uDWConstsData,
  uDWConsts,
  uDWJSONInterface,
  uDWJSON, uDWJSONObject, uDWResponseTranslator,
  System.JSON.Types,
  System.JSON.Writers,uniHTMLFrame, uniSyntaxEditor  ;


  type
    TGraficos = class

    private

    public

        function  RetornaDadosJsonRDW(cSQL:string):string ;
        procedure MontaGraficoindividual(cJsonString,cArqHTMLBase,cArqHTMLFinal:string; cURLFrame: TUniURLFrame ; Frame: TWinControl);
//        function CriarQuery: TRESTDWClientSQL;

///*****   GRAFICOS DA HOME ( DASHBOARD  ) ********
        procedure MontaGraficoHome(cArqHTMLBase,
                  cArqHTMLFinal: string; cURLFrame: TUniURLFrame; Frame: TWinControl);
         function BuscaDadosBarraHome():string ;
         function BuscaDadosPizzaHome():string ;

  end;
//var
//   Graficos : TGraficos ;

implementation

{ TGraficos }

uses MainModule,uniGUIApplication  ;

//function TGraficos.CriarQuery: TRESTDWClientSQL;
//var
//  VQuery: TRESTDWClientSQL;
//begin
//
//  VQuery := TFDQuery.Create(nil);
//
//  VQuery.DataBase := MainModule.UniMainModule.Conexao ;
//
//  Result := VQuery;
//end;

procedure TGraficos.MontaGraficoindividual(cJsonString,cArqHTMLBase,cArqHTMLFinal:string; cURLFrame: TUniURLFrame ;
 Frame: TWinControl );
var memoHTMLBaseTemp,memoHTMLFinalTemp:TUniMemo  ;

begin
Try

    memoHTMLBaseTemp  := TUniMemo.Create(Frame.GetParentComponent);
    memoHTMLFinalTemp := TUniMemo.Create(Frame.GetParentComponent);


    // carregando o HTML BASE
    memoHTMLBaseTemp.Clear;
    memoHTMLBaseTemp.Lines.LoadFromFile(cArqHTMLBase);


    /// / Tratando o Novo HTML para Exibir

    memoHTMLFinalTemp.Clear;
    memoHTMLFinalTemp.Text := StringReplace(memoHTMLBaseTemp.Text, 'DADOS',cJsonString, [rfReplaceAll, rfIgnoreCase]);

    memoHTMLFinalTemp.Lines.SaveToFile(cArqHTMLFinal);
//
    cURLFrame.HTML.LoadFromFile(cArqHTMLBase )
  Finally
    memoHTMLBaseTemp.Free;
    memoHTMLFinalTemp.Free
  End;

end;

function TGraficos.RetornaDadosJsonRDW(cSQL: string): string;
Var
   FDQuery,FDQueryParse  : TRESTDWClientSQL ;
   RdwResponse   : TDWResponseTranslator ;
   JSONValue     : TJSONValue;
   JsonTemp      :   String ;
   virgulaJson,ponto:string ;
begin
   virgulaJson := '\u002C' ;
   ponto       :='.' ;
   JSONValue := TJSONValue.Create ;

   FDQuery      := TRESTDWClientSQL.Create(nil);
   FDQueryParse := TRESTDWClientSQL.Create(nil);

   RdwResponse  := TDWResponseTranslator.Create(nil);

   Try

      FDQuery.DataBase        := UniMainModule.Conexao;
      FDQuery.SQL.Text        := cSQL;
      FDQuery.Active          := True;

      JSONValue.LoadFromDataset('dados', FDQuery, false,jmPureJSON) ;
      JsonTemp := JSONValue.ToJSON  ;
    //  result   := JsonTemp ;

      FDQueryParse.OpenJson(JsonTemp);

      result := StringReplace(FDQueryParse.FieldByName('dados').AsString,virgulaJson, ponto,[rfReplaceAll, rfIgnoreCase])  ;

    Finally
      RdwResponse.Free ;
      FDQueryParse.Free ;
      FDQuery.Free ;
      JSONValue.Free ;
   End;
end;

// Busca Dados no RDW para Montar o Grafico de Barra  HOME
function TGraficos.BuscaDadosBarraHome: string;
var
    cSQLTemp:string ;
    virgulaJson,virgula:string ;
begin
    virgulaJson := '\u002C' ;
    Virgula     :='.' ;

    cSqlTemp := '' ;
    cSqlTemp :=  ' SELECT extract(month from DATA ) AS MES,Extract(year from DATA ) AS ANO,'+
                 '   Case '+
                 '     When extract(month from DATA ) = 1 then '+QuotedStr('Jan/')+'|| extract(YEAR from DATA )'+
                 '     When extract(month from DATA ) = 2 then '+QuotedStr('Fev/')+'|| extract(YEAR from DATA )'+
                 '     When extract(month from DATA ) = 3 then '+QuotedStr('Mar/')+'|| extract(YEAR from DATA )'+
                 '     When extract(month from DATA ) = 4 then '+QuotedStr('Abr/')+'|| extract(YEAR from DATA )'+
                 '     When extract(month from DATA ) = 5 then '+QuotedStr('Mai/')+'|| extract(YEAR from DATA )'+
                 '     When extract(month from DATA ) = 6 then '+QuotedStr('Jun/')+'|| extract(YEAR from DATA )'+
                 '     When extract(month from DATA ) = 7 then '+QuotedStr('Jul/')+'|| extract(YEAR from DATA )'+
                 '     When extract(month from DATA ) = 8 then '+QuotedStr('Ago/')+'|| extract(YEAR from DATA )'+
                 '     When extract(month from DATA ) = 9 then '+QuotedStr('Set/')+'|| extract(YEAR from DATA )'+
                 '     When extract(month from DATA ) =10 then '+QuotedStr('Out/')+'|| extract(YEAR from DATA )'+
                 '     When extract(month from DATA ) =11 then '+QuotedStr('Nov/')+'|| extract(YEAR from DATA )'+
                 '     When extract(month from DATA ) =12 then '+QuotedStr('Dez/')+'|| extract(YEAR from DATA )'+
                 '   End AS MES_ANO,'+
                 '   sum(case when tipo='+QuotedStr('D')+' then DEBITO else  0 end) as debito,'+
                 '   sum(case when tipo='+QuotedStr('C')+' then CREDITO else 0 end) as credito'+
                 ' FROM movimento_contas  a'+
                 ' GROUP BY 1,2,3'+
                 ' ORDER BY 1' ;

     result   := RetornaDadosJsonRDW(cSQLTemp) ;


end;

// Busca Dados no RDW para Montar o Grafico de Pizza  HOME
function TGraficos.BuscaDadosPizzaHome: string;
var
    cSQLTemp:string ;
    virgulaJson,virgula:string ;
begin
    virgulaJson := '\u002C' ;
    Virgula     :='.' ;

    cSqlTemp := '' ;
    cSqlTemp :=  ' SELECT g.NOME_GRUPO ,'+
                 ' Case '+
                 '   When sum(a.CREDITO) > 0 then sum(a.CREDITO)'+
                 '   When sum(a.DEBITO ) > 0 then sum(a.DEBITO)'+
                 ' End AS TOTAL'+
                 ' FROM movimento_contas  a '+
                 '   inner join plano_contas   p on a.conta_plano = p.id '+
                 '   inner join grupo_contas   g on g.id = p.grupo_fk '+
                 '   GROUP BY 1 '+
                 '   order by 2 ' ;

    result        := RetornaDadosJsonRDW(cSQLTemp) ;


end;

procedure TGraficos.MontaGraficoHome(cArqHTMLBase,
  cArqHTMLFinal: string; cURLFrame: TUniURLFrame; Frame: TWinControl);

var HTMLBaseTemp,HTMLFinalTemp:TUniSyntaxEdit  ;

begin
Try
    HTMLBaseTemp  := TUniSyntaxEdit.Create(cURLFrame) ; //(self);


    // carregando o HTML BASE
    HTMLBaseTemp.Text := '' ;
    HTMLBaseTemp.Lines.LoadFromFile(cArqHTMLBase);

    /// / Tratando o Novo HTML para Exibir
    HTMLFinalTemp := TUniSyntaxEdit.Create(cURLFrame);
    HTMLFinalTemp.Text := '' ;

    // trocando as String no Arquivo
    HTMLFinalTemp.Text := StringReplace(HTMLBaseTemp.Text,  'DADOS_BARRA',BuscaDadosBarraHome, [rfReplaceAll, rfIgnoreCase]);
    HTMLFinalTemp.Text := StringReplace(HTMLFinalTemp.Text, 'DADOS_PIZZA',BuscaDadosPizzaHome, [rfReplaceAll, rfIgnoreCase]);


    HTMLFinalTemp.Lines.SaveToFile(cArqHTMLFinal);

    cURLFrame.HTML.Text := '' ;

    cURLFrame.HTML.LoadFromFile(cArqHTMLFinal ) ;

  Finally
    HTMLBaseTemp.Free;
    HTMLFinalTemp.Free
  End;

end;

end.
