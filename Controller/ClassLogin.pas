unit ClassLogin;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniPanel, uniGUIBaseClasses, uniGroupBox,
  uniBasicGrid, uniDBGrid, Vcl.Imaging.pngimage, uniImage, uniPageControl,
  uniSplitter, uniBitBtn, uniSpeedButton, uniEdit, uniLabel, uniToolBar,
  Data.DB, MemDS, DBAccess, Uni, uniDBText, uniDBEdit, uniScrollBox,
  uniMultiItem, uniComboBox, uniDBComboBox, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, uniMemo;

// Quando for usar injeção usando a class Helper, HABILITAR a Linha abaixo
  type
    TLogin = class // TAcoes = class Helper for TForm
    private

    public

      function ValidaUsuarioSenha(cUsuario,cSenha:String ) : boolean ;

  end;

// Quando for usar injeção usando a class Helper, DESABILITAR a Linha abaixo
//var
//   oLogin : TLogin ;

implementation

uses  UDmLogin, MainModule;

{ TLogin }

function TLogin.ValidaUsuarioSenha(cUsuario, cSenha: String): boolean;

begin
    result := true ;
    try
    With DMLogin do
      Begin
          With QryLogin do
          begin
            Close ;
            Sql.Clear ;
            SQl.Add('SELECT *  FROM USUARIOS WHERE EMAIL = :EMAIL AND SENHA=:SENHA') ;
            ParamByName('EMAIL').AsString   := cUsuario ;
            ParamByName('SENHA').AsString   := cSenha ;
            Open;
            if QryLogin.RecordCount <= 0  then
               Result := false ;
          End;
      End;
    Except
      on E: Exception do
         ShowMessage('Erro:' + E.Message );

    end;

end;
//            Else
//              begin
//                 UniMainModule.nFilial      := QryLoginid_filial.AsInteger ;
//                 UniMainModule.nUsuario     := QryLogincodigo.AsInteger ;
//                 UniMainModule.cNomeUsuario := Copy(QryLoginnome.AsString ,1,15) ;
//              end;
//          end;
end.
