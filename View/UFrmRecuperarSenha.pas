unit UFrmRecuperarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniGenericControl, uniLabel,
  uniPanel, uniEdit, uniDBEdit, uniButton, uniCheckBox, Data.DB, uniSyntaxEditor,
  IdBaseComponent, IdMessage, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  uniMemo, UniHTMLMemo, Vcl.Imaging.pngimage, uniImage, uniCanvas, uniScreenMask;

type
  TFrmRecuperarSenha = class(TUniForm)
    UniGenericControl1: TUniGenericControl;
    UniLabel1: TUniLabel;
    BtRecuperar: TUniButton;
    UniPnlTop: TUniPanel;
    EdEmail: TUniEdit;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage: TIdMessage;
    IdSMTP: TIdSMTP;
    UniImageBoxCaptcha: TUniImage;
    EdCheckCaptcha: TUniEdit;
    UniCanvas1: TUniCanvas;
    UniPnlBottom: TUniPanel;
    UniImageBoxCicle: TUniImage;
    UniLblCaptcha: TUniLabel;
    UniLblCaptchaCicle: TUniLabel;
    UniLblInformacao: TUniLabel;
    UniScreenMask1: TUniScreenMask;
    UniHTMLMemo: TUniHTMLMemo;
    procedure UniFormShow(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtRecuperarClick(Sender: TObject);
    function  ValidaCamposEspecificos: Boolean;
    procedure EnviarEmail;
    procedure UniImageBoxCicleClick(Sender: TObject);
    procedure UniLblCaptchaClick(Sender: TObject);
    procedure UniLblCaptchaCicleClick(Sender: TObject);
    procedure EdEmailEnter(Sender: TObject);
  private
    procedure MontaCaptcha;
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmRecuperarSenha: TFrmRecuperarSenha;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UDmLogin, ClassAuxiliar,
  IdText, Unit_Captcha,ClassAlert;

var i:Integer;

function FrmRecuperarSenha: TFrmRecuperarSenha;
begin
  Result := TFrmRecuperarSenha(UniMainModule.GetFormInstance(TFrmRecuperarSenha));
end;

procedure TFrmRecuperarSenha.BtRecuperarClick(Sender: TObject);
var nCodigo_Chave:Integer ;
begin
  if not Acoes.ValidarEMail(EdEmail.Text) then
     Begin
        UniAlert.SwAlerta('ATENÇÃO' , 'Email Inválido para envio da senha !' ,  Aviso , 3000);
        EdEmail.SetFocus ;
        Abort ;
     End;

  if EdCheckCaptcha.Text <> Caption then
     Begin
       UniAlert.SwAlerta('ATENÇÃO' , 'Imagem difere da digitada do CAPTCHA' ,  Aviso , 3000);
       EdCheckCaptcha.SetFocus ;
       Abort ;
     End;

  With DMLogin do
     Begin
       if not (ValidaCamposEspecificos) then
          Begin
            UniAlert.SwAlerta('ATENÇÃO' , 'Email não Registrado no Sistema.!' ,  Aviso , 3000);
            ValidaUsuarioEmail.Close  ;
            EdEmail.SetFocus ;
            Abort ;
          End;
     End;

  Try
     EnviarEmail ;
  Except
    UniAlert.SwAlerta('ATENÇÃO' , 'Problema ao tentar enviar email.Favor Tente Mais Tarde!' ,  Aviso , 3000);
  End;


end;

procedure TFrmRecuperarSenha.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMLogin.ValidaUsuarioEmail.Close  ;
end;

procedure TFrmRecuperarSenha.UniFormShow(Sender: TObject);
begin
  EdEmail.SetFocus ;
end;

procedure TFrmRecuperarSenha.UniImageBoxCicleClick(Sender: TObject);
begin
  MontaCaptcha ;
end;

procedure TFrmRecuperarSenha.UniLblCaptchaClick(Sender: TObject);
begin
  MontaCaptcha ;
end;

procedure TFrmRecuperarSenha.UniLblCaptchaCicleClick(Sender: TObject);
begin
  MontaCaptcha ;
end;

function TFrmRecuperarSenha.ValidaCamposEspecificos: Boolean;
begin
   Result := True ;
   With DmLogin.ValidaUsuarioEmail do
        Begin
           Close ;
           ParamByName('email').AsString := EdEmail.Text ;
           Open ;
           if DmLogin.ValidaUsuarioEmail.RecordCount <= 0  then
              Begin
                UniAlert.SwAlerta('ERRO' , 'Email não Registrado no Sistema.!' ,  Erro , 3000);
                EdEmail.SetFocus ;
                Result := False ;
              End;
        End;
end;

procedure TFrmRecuperarSenha.EdEmailEnter(Sender: TObject);
begin
  MontaCaptcha ;
end;

procedure TFrmRecuperarSenha.MontaCaptcha;
begin
  i:=random(5000000);
  UniCanvas1.Bitmap.LoadFromFile('.\img\Captcha.bmp') ; // nil;
  CretedCaptcha(UniCanvas1, inttostr(i), 35);
  // Pega o  I  e transforma em string e passa para o caption
  Caption  := IntToStr(i) ;

  EdCheckCaptcha.Clear ;

end;


procedure TFrmRecuperarSenha.EnviarEmail;
var
  HtmPart : TIdText ;
begin
 try

      idSMTP.Username := 'suporte.amconect@gmail.com';
      idSMTP.Password := 'Am37212835';
      idSMTP.Host     := 'smtp.gmail.com';
      idSMTP.Port     := 587 ; // 465;
      idSMTP.AuthType := satDefault ;

      IdMessage.From.address              := EdEmail.Text ; // 'suporte.amconect@gmail.com';
      IdMessage.Recipients.EMailAddresses := EdEmail.Text ; //'suporte.amconect@gmail.com';
      IdMessage.Subject                   := 'Recuperação de Senha do Sistema Pégasus';
      IdMessage.Priority                  := mpHighest ;
      IdMessage.ContentType               := 'multipart/mixed';

       // corpo

      IdMessage.Body.Clear;
      IdMessage.Body.Add('<html>');
      IdMessage.Body.Add('    <body>');
      IdMessage.Body.Add('        <h4>Prezado(a)</h4>');
      IdMessage.Body.Add('        <h4>'+DmLogin.ValidaUsuarioEmailNome.Value+'</h4>');
      IdMessage.Body.Add('        <h4>Sua Senha Foi Recuperada com Sucesso.</h4>');
      IdMessage.Body.Add('        <h4>Sua senha é: '+DmLogin.ValidaUsuarioEmailsenha.Value+'</h4>');
      IdMessage.Body.Add('        <font>');
      IdMessage.Body.Add('        Para eventuais esclarecimentos, estamos em plena disposição.');
      IdMessage.Body.Add('        <hr>');
      IdMessage.Body.Add('        <font>');
      IdMessage.Body.Add('        '+'');
      IdMessage.Body.Add('        </font>');
      IdMessage.Body.Add('        <b><font>');
      IdMessage.Body.Add('        <hr>');
      IdMessage.Body.Add('        '+'Equipe Pégasus'+'<BR>');
      IdMessage.Body.Add('        '+'desde já agradece'+'<BR>');
      IdMessage.Body.Add('        <font>');
      IdMessage.Body.Add('        '+'Marcio Santos - ME'+'<BR>');
      IdMessage.Body.Add('        </font>');
      IdMessage.Body.Add('        </font></b>');
      IdMessage.Body.Add('    </body>');
      IdMessage.Body.Add('</html>');
      UniHTMLMemo.Lines.Add('.');

      if UniHTMLMemo.Lines.Text <> '' then
         begin
           HtmPart := TIdText.Create(IdMessage.MessageParts, nil);
           HtmPart.ContentType := 'text/html';
           HtmPart.Body := IdMessage.Body; // UniHTMLMemo.Lines ;
         end;

      try
        IdSMTP.Connect();
        IdSMTP.Send(IdMessage);
        UniAlert.SwAlerta('Usuário.' , 'Sua Senha Foi Enviada para o seu Email!' , Sucesso , 3000);
      except
        on e: Exception do
          ShowMessage('Message Error -> ' + e.message);
      end;
 finally
      if IdSMTP.Connected then
        IdSMTP.Disconnect();

      HtmPart.Free;

 end;

  // close;

end;

end.
