unit UFrameBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniScrollBox, uniBasicGrid, uniDBGrid, uniEdit,
  uniPageControl, uniLabel, uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel,
  uniImageList, UniFSButton, System.TypInfo, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB, uniDBEdit;

type

  TAcaoCrud = (tpIncluir, tpAlterar, tpExcluir, tpListaVazia,tpListacomRegistros);

  TFrameBase = class(TUniFrame)
    PnlCrud: TUniPanel;
    UniLabel1: TUniLabel;
    PageCadastro: TUniPageControl;
    Tab1: TUniTabSheet;
    UniPnlPesquisar: TUniPanel;
    EdPesquisar: TUniEdit;
    LblPesquisa: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    Tab2: TUniTabSheet;
    UniContainerPanel2: TUniContainerPanel;
    BtInc: TUniBitBtn;
    UniNativeImageList1: TUniNativeImageList;
    BtAlt: TUniBitBtn;
    BtExc: TUniBitBtn;
    BtCan: TUniBitBtn;
    BtGrv: TUniBitBtn;
    BtFiltrar: TUniBitBtn;
    FDQryCad: TRESTDWClientSQL;
    dsCad: TDataSource;
    dsFiltro: TDataSource;
    FDQryFiltro: TRESTDWClientSQL;
    UniPanel1: TUniPanel;
    UniScrollBox1: TUniScrollBox;
    function CamposValidados :Boolean;
    procedure PersonalizarButtom;
    procedure UniFrameCreate(Sender: TObject);
    procedure SetBut(Acao:TAcaoCrud) ;
    procedure BtIncClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
    procedure BtExcClick(Sender: TObject);
    procedure BtCanClick(Sender: TObject);
    procedure BtGrvClick(Sender: TObject);
    procedure DCallBack2(Sender: TComponent; Res: Integer);
    procedure DeletaRegistro  ;
    procedure PageCadastroChange(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure BtFiltrarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
uses
  MainModule, uniGUIApplication, ClassAuxiliar ,ClassAlert  ;



{ TFrameBase }

// Botão Alterar
procedure TFrameBase.BtAltClick(Sender: TObject);
var i : integer; Cmp:String;
begin

  PageCadastro.ActivePage := Tab2 ;

  SetBut(tpAlterar);

  Try
    FDQryCad.Close;
   for i := 0 to  FDQryCad.Params.Count - 1 do
   begin
      Cmp :=  FDQryCad.Params[i].Name;
      FDQryCad.Params[i].Value :=  FDQryFiltro.FieldbyName(Cmp).Value ;
   end;
    FDQryCad.Open;
  Except
   UniAlert.SwAlerta('ATENÇÃO' , 'Você precisa selecionar um registro para fazer manutenção do mesmo.' , Aviso , 3000);

   Abort ;
  End ;

  PageCadastro.Pages[0].TabVisible := False ;
  PageCadastro.Pages[1].TabVisible := True ;

end;

// Botão Cancelar
procedure TFrameBase.BtCanClick(Sender: TObject);
begin
//    If dsCad.DataSet.State in [dsinsert,dsedit] then
//       dsCad.DataSet.Cancel ;

    if  FDQryFiltro.IsEmpty then
        SetBut(tpListaVazia)
    else
        SetBut(tpListacomRegistros);

     FDQryCad.Close ;



  PageCadastro.Pages[0].TabVisible := True  ;
  PageCadastro.Pages[1].TabVisible := False ;

  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
end;

// Botão Excluir
procedure TFrameBase.BtExcClick(Sender: TObject);

var i : integer; Cmp:String;
begin

    SetBut(tpExcluir);

    Try
       FDQryCad.Close;

      for i := 0 to  FDQryCad.Params.Count - 1 do
      begin
        Cmp :=  FDQryCad.Params[i].Name;
         FDQryCad.Params[i].Value :=  FDQryFiltro.FieldByName(Cmp).Value ;
      end;
       FDQryCad.Open;
    Except
      UniAlert.SwAlerta('ATENÇÃO' , 'Você precisa selecionar um registro para fazer manutenção do mesmo.' , Aviso , 3000);

      abort;
    End;

    PageCadastro.ActivePage      :=  Tab2 ;

    MessageDlg('Confirma a Exclusão ?', mtConfirmation, mbYesNo,
          DCallBack2) ;

    PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta

end;

// Botão Gravar
procedure TFrameBase.BtGrvClick(Sender: TObject);
Var
 vError : String;
Begin
    if not (CamposValidados) then
       Abort
    else
      Begin

         if FDQryCad.State in [dsInsert,dsEdit] then
           Begin
             FDQryCad.Post;

             If Not  FDQryCad.ApplyUpdates(vError) Then
                Begin
//                  ShowMessage(vError);
                  UniAlert.SwAlerta('ERRO' , vError , Erro , 3000);

                  abort ;
                end
             Else
                FDQryCad.RebuildMassiveDataset ;
           End;

        if  FDQryFiltro.Active then
            FDQryFiltro.Refresh;

        PageCadastro.Pages[0].TabVisible := True  ;
        PageCadastro.Pages[1].TabVisible := False ;

        PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta

        if  FDQryFiltro.IsEmpty then
           SetBut(tpListaVazia)
        Else
           SetBut(tpListacomRegistros);

      End;


end;

// Botão Incluir
procedure TFrameBase.BtIncClick(Sender: TObject);
  var i : integer; Cmp:String;
  begin

    SetBut(tpIncluir);

  try
    FDQryCad.Close ;
    for i := 0 to  FDQryCad.Params.Count - 1 do
    begin
      Cmp :=  FDQryCad.Params[i].Name;
       FDQryCad.Params[i].Value :=  FDQryFiltro.FieldbyName(Cmp).Value;
    end;
     FDQryCad.Open;
  Except
     FDQryCad.Params[0].AsInteger := -1 ;
     FDQryCad.Open;
  End;

  if not( FDQryCad.Active) then
      FDQryCad.Open;

   FDQryCad.Insert ;

  PageCadastro.ActivePage := Tab2 ;
     // Visualizando a Tab2
  PageCadastro.Pages[0].TabVisible := False ;
  PageCadastro.Pages[1].TabVisible := True ;
     // Foco na segunda aba


end;

// Valida Campos
function TFrameBase.CamposValidados: Boolean;
  var
    i,e :Integer;
    Campos :TStrings;
  begin
  Try
      Campos := TStringList.Create;
      Campos.Clear ;
      e := 0 ;
      for I:= 0 to ComponentCount -1 do
         begin
  // Para DBEdit
           if ( Components[I] is TUniDBEdit )  then
              begin

                 If ( TUniDBEdit(Components[i]).Tag = 1 ) then
                   Begin
                     if TUniDBEdit(Components[i]).Text = '' then
                        begin
  //                        Campos.Add('-' + TDBEdit(Components[i]).DataBinding.Field.DisplayName ) ;
                          Campos.Add('-' + TUniDBEdit(Components[i]).Field.DisplayName ) ;
                          inc(e) ;
                        end;
                   End;
              end;
  //
         end;



       if e = 0  then
          result := true ;


       If e > 0 then
  //        if (AllTrim(Campos.Text)<>EmptyStr) then
          Begin
             Campos.Insert(0,'Preencha os campos obrigatórios:');
  //           Campos.Insert(1, EmptyStr);
             ShowMessage(Campos.Text);
            // Acoes.MenssagemPadrao(Campos.Text,'');
             FDQryCad.Fields[e].FocusControl ;
             result := false ;
          end
       Else
          result := true;

    finally
      Campos.Free;
    end;


end;

// CallBack para Deletar
procedure TFrameBase.DCallBack2(Sender: TComponent; Res: Integer);
begin
  case Res of
    mrYes :Begin
             DeletaRegistro ;
             SetBut(tpListacomRegistros);
           End;
    mrNo  :  BtCan.Click  ;
  end;
end;

// Deleta Registro
procedure TFrameBase.DeletaRegistro;
Var vError:String;
begin
     FDQryCad.Delete;

    If Not  FDQryCad.ApplyUpdates(vError) Then
       Begin
         UniAlert.SwAlerta('ERRO' , vError , Erro , 3000);
         abort ;
       end
    Else
        FDQryCad.RebuildMassiveDataset ;

    if  FDQryFiltro.Active then
        FDQryFiltro.Refresh;

end;

// Change do PagControl
procedure TFrameBase.PageCadastroChange(Sender: TObject);
begin
   If not (  FDQryCad.State in[dsInsert,dsEdit] ) then
      Begin
        If PageCadastro.ActivePage = Tab2 then
           BtAlt.Click ;
      End;
end;

// Personalizar Butão
procedure TFrameBase.PersonalizarButtom;
begin

//  BtSair.Caption      := '<i class="fa fa fa-reply-all      fa-2x" aria-hidden="true"></i><br>Voltar';
//                          <i class="fa fa-search-plus" aria-hidden="true"></i>
//  BtInc.Caption       := '<i class="fa fa fa-file-o         fa-2x" aria-hidden="true"></i><br>Inserir';
//  BtAlt.Caption       := '<i class="fa fa fa-file-text-o    fa-2x" aria-hidden="true"></i><br>Alterar';
//  BtCan.Caption       := '<i class="fa fa fa fa-rotate-left fa-2x" aria-hidden="true"></i><br>Cancelar';
//  BtExc.caption       := '<i class="fa fa fa-minus-square-o fa-2x" aria-hidden="true"></i><br>Excluir';
//  BtGrv.Caption       := '<i class="fa fa-check-square-o    fa-2x" aria-hidden="true"></i><br>Gravar';
//  BtFiltrar.Caption   := '<i class="fa fa fa-search-plus    fa-2x" aria-hidden="true"></i>Filtrar' ;//'<span class="glyphicon glyphicon-zoom-in btn btn-default btn-lg"> Filtrar</span>';

end;

// Setar Estado dos butões
procedure TFrameBase.SetBut(Acao: TAcaoCrud);

var s:string ;
begin
  s := GetEnumName(TypeInfo(TAcaoCrud),integer(Acao));
  UniLabel1.Caption := s ;
  UniLabel1.Refresh ;
  UniLabel1.Repaint ;

  // Controle dos botoes
  if acao in [tpIncluir,tpAlterar,tpExcluir] then
     begin
       BtInc.Enabled  := false;
       BtAlt.Enabled  := false;
       BtExc.Enabled  := false;
       BtCan.Enabled  := true;
       BtGrv.Enabled  := true;
     end
   else if acao in [tpListaVazia] then
      begin
        BtInc.Enabled  := true;
        BtAlt.Enabled  := false;
        BtExc.Enabled  := false;
        BtCan.Enabled  := false;
        BtGrv.Enabled  := false;
      end
    else if acao in [tpListacomRegistros] then
      begin
        BtInc.Enabled  := true;
        BtAlt.Enabled  := true;
        BtExc.Enabled  := true;
        BtCan.Enabled  := false;
        BtGrv.Enabled  := false;
       end;




end;

// Botão filtrar
procedure TFrameBase.BtFiltrarClick(Sender: TObject);
  var i : integer;
  begin

   if ( EdPesquisar.Text = EmptyStr ) then
       Begin
          FDQryFiltro.Close ;
         abort ;
       End;


    // Abre a query do filtro
    if  FDQryCad.State in [dsEdit,dsInsert] then
       begin
         UniAlert.SwAlerta('ATENÇÃO' , 'Registro está em modo de Edição ', Aviso , 3000);
         abort ;

       end;

     FDQryFiltro.Close;



    for i := 0 to  FDQryFiltro.Params.Count-1 do
        Begin
          If LblPesquisa.Tag = 1 then
              FDQryFiltro.Params[i].AsString := '%'+EdPesquisar.Text
          Else
              FDQryFiltro.Params[i].AsString := EdPesquisar.Text
        End;

     FDQryFiltro.Open;

    SetBut(tpListacomRegistros);

    UniDbGrid1.SetFocus ; // Joga o Foco para o Grid ;


end;

procedure TFrameBase.UniDBGrid1DblClick(Sender: TObject);
begin
  BtAlt.Click ;
end;

// Create do Frame
procedure TFrameBase.UniFrameCreate(Sender: TObject);
begin
  PersonalizarButtom ;
  PageCadastro.Pages[1].TabVisible := False ;
end;
  // $00684E3E  background quando usar o ari
end.
