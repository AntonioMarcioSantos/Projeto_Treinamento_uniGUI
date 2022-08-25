unit UFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniEdit, uniImage, uniBitBtn, uniSpeedButton, uniGenericControl, uniLabel,
  uniMultiItem, uniComboBox, uniPanel, Vcl.Imaging.pngimage, uniDBComboBox,
  uniDBLookupComboBox, dxGDIPlusClasses, acPNG;

type
  TFrmLogin = class(TUniLoginForm)
    UniBitBtn1: TUniBitBtn;
    PnlCenter: TUniPanel;
    BtConectar: TUniButton;
    EdUsuario: TUniEdit;
    EdSenha: TUniEdit;
    LblEsqueciisenha: TUniLabel;
    UniLabel1: TUniLabel;
    PnlBottom: TUniPanel;
    UniImage2: TUniImage;
    UniLabel2: TUniLabel;
    procedure LblEsqueciisenhaClick(Sender: TObject);
    procedure BtConectarClick(Sender: TObject);
    procedure UniLoginFormCreate(Sender: TObject);
    procedure UniLabel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Main, ClassLogin, UFrmNovoUsuario,
  UFrmRecuperarSenha, ClassAlert , ServerModule;

function FrmLogin: TFrmLogin;
begin
  Result := TFrmLogin(UniMainModule.GetFormInstance(TFrmLogin));

end;

procedure TFrmLogin.LblEsqueciisenhaClick(Sender: TObject);
begin
    FrmRecuperarSenha.ShowModal ;
end;

procedure TFrmLogin.UniLabel1Click(Sender: TObject);
begin
    FrmNovoUsuario.ShowModal ;
end;

procedure TFrmLogin.UniLoginFormCreate(Sender: TObject);
begin
// LblLogin.Left     := EdUsuario.left ;
// LblLogin.Repaint ;
// LblLogin.Refresh ;
end;

procedure TFrmLogin.BtConectarClick(Sender: TObject);
var
   oLogin   : TLogin ;
begin

  try
    oLogin := TLogin.Create;
    if not ( oLogin.ValidaUsuarioSenha(EdUsuario.Text,EdSenha.Text) ) then
       begin
          UniAlert.SwAlerta('LOGIN' , 'Usuário ou Senha Inválido.' ,  Erro , 3000);
          EdUsuario.SetFocus ;
          ModalResult := mrNone;
          abort;
       end
    Else
      Begin
         ModalResult := mrOK;
      End;

  finally
    oLogin.Free ;
  end;
end;

initialization
  RegisterAppFormClass(TFrmLogin);

end.
