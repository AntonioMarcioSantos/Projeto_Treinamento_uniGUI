unit UFrmNovoUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniGenericControl, uniLabel,
  uniPanel, uniEdit, uniDBEdit, uniButton, uniCheckBox, Data.DB, uniSyntaxEditor;

type
  TFrmNovoUsuario = class(TUniForm)
    UniGenericControl1: TUniGenericControl;
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    EdEmail: TUniDBEdit;
    EdNome: TUniDBEdit;
    EdSenha: TUniDBEdit;
    BtRegistrar: TUniButton;
    CheckTermos: TUniCheckBox;
    dsCadUsuarioNovo: TDataSource;
    UniPanel2: TUniPanel;
    LblEsqueciisenha: TUniLabel;
    UniLabel4: TUniLabel;
    EdRepetirSenha: TUniEdit;
    procedure UniFormShow(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtRegistrarClick(Sender: TObject);
    function  ValidaCamposEspecificos: Boolean;
    function  CamposValidados :Boolean;
    procedure CheckTermosChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmNovoUsuario: TFrmNovoUsuario;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UDmLogin, ClassAuxiliar, ClassAlert;

function FrmNovoUsuario: TFrmNovoUsuario;
begin
  Result := TFrmNovoUsuario(UniMainModule.GetFormInstance(TFrmNovoUsuario));
end;

procedure TFrmNovoUsuario.BtRegistrarClick(Sender: TObject);
var nCodigo_Chave:Integer ;
    vError : String;
begin

  if not Acoes.ValidarEMail(EdEmail.Text) then
     Begin
        UniAlert.SwAlerta('ERRO' , 'Email Inválido para cadastro !' ,  Erro , 3000);

        EdEmail.SetFocus ;
        Abort ;
     End;

  if EdSenha.Field.Value <> EdRepetirSenha.Text then
     Begin
        UniAlert.SwAlerta('ERRO' , 'Senhas informadas estão divergentes.' ,  Erro , 3000);
        EdSenha.SetFocus ;
        Abort ;
     End;

Try

  With DMLogin do
    Begin
      if QryCadUsuarioNovo.State in [dsInsert] then
         Begin
           if not (ValidaCamposEspecificos) then
              Begin
                Abort ;
              End;
           if not (CamposValidados) then
              Begin
               Abort ;
              End;

       //    QryCadUsuarioNovoCODIGO.Asinteger          := -1;
           QryCadUsuarioNovoEMPRESA_FK.Asinteger       := 1 ;   //UniMainModule.nFilial ;
//           QryCadUsuarioNovotipo.AsString             := 'O' ; Operador ou Admin
           QryCadUsuarioNovodata_cadastro.AsDateTime  := Date ;
           QryCadUsuarioNovo.Post;
           If Not QryCadUsuarioNovo.ApplyUpdates(vError) Then
                Begin
               // MessageDlg(vError, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
                  ShowMessage(vError);
                  abort ;
                end
           Else
              QryCadUsuarioNovo.RebuildMassiveDataset ;
         End;
      UniAlert.SwAlerta('ATENÇÃO' , 'Usuário Registrado com Sucesso.' ,  Sucesso , 3000);
      QryCadUsuarioNovo.Close  ;

    End;
  Close ;
Except
  ShowMessage('');
  UniAlert.SwAlerta('ERRO' , 'Problema ao fazer Resgitro, Tente Mais Tarde.' ,  Erro , 3000);
  Close ;
End;


end;

function TFrmNovoUsuario.CamposValidados: Boolean;
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
       end;



     if e = 0  then
        result := true ;


     If e > 0 then
//        if (AllTrim(Campos.Text)<>EmptyStr) then
        Begin
           Campos.Insert(0,'Preencha os campos obrigatórios:');
//           Campos.Insert(1, EmptyStr);
//           ShowMessage(Campos.Text);
           ShowMessage(Campos.Text);
           DmLogin.QryCadUsuarioNovo.Fields[e].FocusControl ;
           result := false ;
        end
     Else
        result := true;

  finally
    Campos.Free;
  end;


end;

procedure TFrmNovoUsuario.CheckTermosChange(Sender: TObject);
begin
  BtRegistrar.Enabled := CheckTermos.Checked ;
end;

procedure TFrmNovoUsuario.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  With DMLogin do
    Begin
      if QryCadUsuarioNovo.State in [dsInsert] then
         QryCadUsuarioNovo.Cancel ;
      QryCadUsuarioNovo.Close  ;
    End;
end;

procedure TFrmNovoUsuario.UniFormShow(Sender: TObject);
begin
  With DMLogin do
    Begin
      QryCadUsuarioNovo.Open ;
      QryCadUsuarioNovo.Insert ;
    End;
end;

function TFrmNovoUsuario.ValidaCamposEspecificos: Boolean;
begin
   Result := True ;
   With DmLogin.ValidaUsuarioEmail do
        Begin
           Close ;
           ParamByName('email').AsString := EdEmail.Text ;
           Open ;
           if DmLogin.ValidaUsuarioEmail.RecordCount > 0  then
              Begin
                UniAlert.SwAlerta('Aviso' , 'Email já Registrado no Sistema.!' ,  Aviso , 3000);
                EdEmail.SetFocus ;
                Result := False ;
              End;
        End;

end;

end.
