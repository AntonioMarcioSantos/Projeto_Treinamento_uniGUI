unit UFrameMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB, uniGUIBaseClasses,
  uniGUIClasses, uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  uniDateTimePicker, uniDBDateTimePicker, UniFSiGrowl ;


type
  TFrameMovimentacao = class(TFrameBase)
    FDQryCadID: TIntegerField;
    FDQryCadEMPRESA_FK: TIntegerField;
    FDQryCadDATA: TDateField;
    FDQryCadCONTA: TIntegerField;
    FDQryCadCONTA_PLANO: TIntegerField;
    FDQryCadCENTRO_CUSTO: TIntegerField;
    FDQryCadREFERENTE: TStringField;
    FDQryCadDEBITO: TFloatField;
    FDQryCadCREDITO: TFloatField;
    FDQryCadDATA_MOVIMENTO: TDateField;
    FDQryCadTIPO: TStringField;
    FDQryCadDOCUMENTO: TStringField;
    FDQryCadUSUARIO: TStringField;
    FDQryCadORIGEM: TStringField;
    FDQryFiltroID: TIntegerField;
    FDQryFiltroEMPRESA_FK: TIntegerField;
    FDQryFiltroDATA: TDateField;
    FDQryFiltroCONTA: TIntegerField;
    FDQryFiltroCONTA_PLANO: TIntegerField;
    FDQryFiltroCENTRO_CUSTO: TIntegerField;
    FDQryFiltroREFERENTE: TStringField;
    FDQryFiltroDEBITO: TFloatField;
    FDQryFiltroCREDITO: TFloatField;
    FDQryFiltroDATA_MOVIMENTO: TDateField;
    FDQryFiltroTIPO: TStringField;
    FDQryFiltroDOCUMENTO: TStringField;
    FDQryFiltroUSUARIO: TStringField;
    FDQryFiltroORIGEM: TStringField;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniScrollBox2: TUniScrollBox;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    EdReferente: TUniDBEdit;
    EdContaPlano: TUniDBEdit;
    EdCentroCusto: TUniDBEdit;
    BtPesquisaPlanoContas: TUniBitBtn;
    BtPesquisaCentroCusto: TUniBitBtn;
    EdData: TUniDBDateTimePicker;
    EdCmbConta: TUniDBLookupComboBox;
    FDQryContas: TRESTDWClientSQL;
    FDQryContasID: TIntegerField;
    FDQryContasNOME_CONTA: TStringField;
    FDQryContasSALDO_ANTERIOR: TFloatField;
    FDQryContasSALDO: TFloatField;
    FDQryContasBANCO_FK: TIntegerField;
    dsContas: TDataSource;
    EdCmbTipo: TUniDBComboBox;
    EdValor: TUniNumberEdit;
    EdDocumento: TUniDBEdit;
    UniLabel7: TUniLabel;
    EdDtFim: TUniDateTimePicker;
    EdDtIni: TUniDateTimePicker;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    FDQryAtualizaSaldoConta: TRESTDWClientSQL;
    FDQryAtualizaSaldoContaID: TIntegerField;
    FDQryAtualizaSaldoContaNOME_CONTA: TStringField;
    FDQryAtualizaSaldoContaSALDO_ANTERIOR: TFloatField;
    FDQryAtualizaSaldoContaSALDO: TFloatField;
    FDQryAtualizaSaldoContaBANCO_FK: TIntegerField;
    procedure UniFrameCreate(Sender: TObject);
    procedure BtPesquisaCentroCustoClick(Sender: TObject);
    procedure BtIncClick(Sender: TObject);
    procedure BtPesquisaPlanoContasClick(Sender: TObject);
    procedure BtGrvClick(Sender: TObject);
    procedure BtExcClick(Sender: TObject);
  private
    function  ValidaCampos():boolean;
    procedure InsertMovimento;
    function  AtualizaSaldoConta(nId:Integer ; nValor:double ; cOperacao:String):Boolean;
    function  EstornarSaldoConta(nId:Integer ; nValor:double ; cOperacao:String):Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameMovimentacao: TFrameMovimentacao;

implementation

{$R *.dfm}

uses MainModule,  UPesquisaPlanoContas, UPesquisaCentroCusto , ClassAlert ;

procedure TFrameMovimentacao.BtExcClick(Sender: TObject);
Var cEstornaSaldo:string ;
    nConta:integer ;
    nValorEstorno:Double ;
begin
  nConta        := FDQryFiltroCONTA.Value ;
  cEstornaSaldo := FDQryFiltroTIPO.Value ;
  if cEstornaSaldo = 'C' then
     nValorEstorno := FDQryFiltroCREDITO.Value
  Else
     nValorEstorno := FDQryFiltroDEBITO.Value  ;

  inherited;

  EstornarSaldoConta(nConta,nValorEstorno,cEstornaSaldo) ;

end;

procedure TFrameMovimentacao.BtGrvClick(Sender: TObject);
begin

  if ValidaCampos then
     Begin
       InsertMovimento;
       inherited;
       EdValor.Value := 0.00 ;
     End ;


end;

procedure TFrameMovimentacao.InsertMovimento;
begin
  if FDQryCad.State in [dsInsert] then
  begin
    FDQryCadDATA.AsDateTime           := EdData.DateTime;
    FDQryCadDATA_MOVIMENTO.AsDateTime := Date;
    FDQryCadDOCUMENTO.Value           := EdDocumento.Text;
    FDQryCadUSUARIO.Value             := 'MARCIO';
    FDQryCadORIGEM.Value              := 'CX';
    if FDQryCadTIPO.Value = 'C' then
    begin
      FDQryCadCREDITO.Value := EdValor.Value;
      FDQryCadDEBITO.Value  := 0;
      AtualizaSaldoConta(FDQryCadCONTA.AsInteger,FDQryCadCREDITO.Value,'C') ;
    end
    else
    begin
      FDQryCadCREDITO.Value := 0;
      FDQryCadDEBITO.Value  := EdValor.Value;
      AtualizaSaldoConta(FDQryCadCONTA.AsInteger,FDQryCadCREDITO.Value,'D') ;
    end;



  end;
end;

function TFrameMovimentacao.AtualizaSaldoConta(nId:Integer ; nValor:double ; cOperacao:String):Boolean;
var
  vError: string;
begin
  with FDQryAtualizaSaldoConta do
  begin
    FDQryAtualizaSaldoConta.Close ;
    FDQryAtualizaSaldoConta.ParamByName('ID').Value := nId ;
    FDQryAtualizaSaldoConta.Open ;
    FDQryAtualizaSaldoConta.Edit;
    if cOperacao='C' then
       FDQryAtualizaSaldoContaSALDO.Value :=FDQryAtualizaSaldoContaSALDO.Value + nValor
    Else
       FDQryAtualizaSaldoContaSALDO.Value :=FDQryAtualizaSaldoContaSALDO.Value - nValor   ;

    FDQryAtualizaSaldoConta.Post;

    FDQryAtualizaSaldoConta.ApplyUpdates(vError)  ;
    FDQryAtualizaSaldoConta.RebuildMassiveDataset ;
    Result := true ;
  end;
end;


function TFrameMovimentacao.EstornarSaldoConta(nId:Integer ; nValor:double ; cOperacao:String):Boolean;
var
  vError: string;
begin
  with FDQryAtualizaSaldoConta do
  begin
    FDQryAtualizaSaldoConta.Close ;
    FDQryAtualizaSaldoConta.ParamByName('ID').Value := nId ;
    FDQryAtualizaSaldoConta.Open ;
    FDQryAtualizaSaldoConta.Edit;
    if cOperacao='C' then
       FDQryAtualizaSaldoContaSALDO.Value :=FDQryAtualizaSaldoContaSALDO.Value - nValor
    Else
       FDQryAtualizaSaldoContaSALDO.Value :=FDQryAtualizaSaldoContaSALDO.Value + nValor   ;

    FDQryAtualizaSaldoConta.Post;

    FDQryAtualizaSaldoConta.ApplyUpdates(vError)  ;
    FDQryAtualizaSaldoConta.RebuildMassiveDataset ;
    Result := true ;
  end;
end;


procedure TFrameMovimentacao.BtIncClick(Sender: TObject);
begin
  inherited;

  FDQryCadCONTA.Value := 1 ;

  EdData.DateTime     := now ;
  EdCmbConta.SetFocus ;

end;

procedure TFrameMovimentacao.BtPesquisaPlanoContasClick(Sender: TObject);
begin
     FrmPesquisaPlanoContas.ShowModal ;
     Begin
      With FrmPesquisaPlanoContas do
         If ModalResult = mrOk then
            begin
              EdContaPlano.Text := dsPesquisa.DataSet.FieldByName('ID').AsString;
//              EdContaPlanoExit(Sender);
             EdContaPlano.SetFocus;
            end;
      End;

end;

procedure TFrameMovimentacao.BtPesquisaCentroCustoClick(Sender: TObject);
begin

     FrmPesquisaCentroCusto.ShowModal ;

     Begin
      With FrmPesquisaCentroCusto do
         If ModalResult = mrOk then
            begin
              EdCentroCusto.Text := dsPesquisa.DataSet.FieldByName('ID').AsString;
            end;
      End;

end;


procedure TFrameMovimentacao.UniFrameCreate(Sender: TObject);
begin

  inherited;
  FDQryContas.Open ;

end;

function TFrameMovimentacao.ValidaCampos: boolean;
begin
   result := true ;

   if FDQryCadCONTA.Value <=0  then
      Begin
        UniAlert.SwAlerta('ERRO' , 'Conta deve ser Informada.' , Erro , 3000);
        Result := False ;
        abort ;
      End;

   if EdDocumento.Text = '' then
      Begin
        UniAlert.SwAlerta('ERRO' , 'Documento deve ser Informado.' , Erro , 5000);
        Result := False ;
        abort ;
      End;

   if EdReferente.Text = '' then
      Begin
        UniAlert.SwAlerta('ERRO' , 'Referência deve ser Informada.' , Erro , 5000);
        Result := False ;
        abort ;
      End;

   if EdContaPlano.Text = '' then
      Begin
        UniAlert.SwAlerta('ERRO' , 'Conta Plano Deve ser Informada.' , Erro , 5000);
        Result := False ;
        abort ;
      End;

   if EdCentroCusto.Text = '' then
      Begin
        UniAlert.SwAlerta('ERRO' , 'Centro de Custo Deve ser Informado.' , Erro , 5000);
        Result := False ;
        abort ;
      End;

   if EdCmbTipo.ItemIndex < 0  then
      Begin
        UniAlert.SwAlerta('ATENÇÃO' , 'Tipo de Lançamento deve ser Informado.' , Aviso , 5000);
        Result := False ;
        abort;
      End;

   if EdValor.Value <=0  then
      Begin
        UniAlert.SwAlerta('ERRO' , 'Valor deve ser Informado.' , Erro , 3000);
        Result := False ;
        abort;
      End;

end;

end.
