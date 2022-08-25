unit Unit_Captcha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniCanvas;

procedure CretedCaptcha(aImage: TUniCanvas; TextCaptcha: string;
  SetLinetoCaptcha: Integer);

implementation

procedure letrasAnguladas(aImage: TUniCanvas; c: string; angulo: Integer;
  nextPos: Integer);
var
  logfont: TLogFont;
  font: Thandle;
  i: Integer;
begin
  logfont.lfheight := 30;  // esse aqui diminui a letra
  logfont.lfwidth  := 10;
  logfont.lfweight := 900;

  logfont.lfEscapement      := angulo;
  logfont.lfcharset        := 1;
  logfont.lfoutprecision   := OUT_TT_ONLY_PRECIS;
  logfont.lfquality        := DEFAULT_QUALITY;
  logfont.lfpitchandfamily := FF_SCRIPT;
  logfont.lfUnderline      := 0;
  logfont.lfStrikeOut      := 0;

  font := createfontindirect(logfont);

  Selectobject(aImage.BitmapCanvas.handle, font);

//  SetTextColor(aImage.BitmapCanvas.handle, rgb(Random(255), Random(255),
//    Random(255)));
//  SetBKmode(aImage.BitmapCanvas.handle, transparent);

  aImage.BitmapCanvas.textout(nextPos, aImage.Height div 3, c);
  SetTextColor(aImage.BitmapCanvas.handle, rgb(Random(155), Random(155),
    Random(155)));
  deleteobject(font);
end;

procedure SetLine(aImage: TUniCanvas; Count: Integer);
var
  i: Integer;
begin
//  for i := 0 to Count do
//  begin
//    aImage.BitmapCanvas.Pen.Color := Random(300000);
//    aImage.BitmapCanvas.MoveTo(Random(aImage.Width), Random(aImage.Height));
//    aImage.BitmapCanvas.LineTo(Random(aImage.Width), Random(aImage.Height));
//  end;
end;

procedure CretedCaptcha(aImage: TUniCanvas; TextCaptcha: string;
  SetLinetoCaptcha: Integer);
var
  i: Integer;
begin
  for i := 1 to Length(TextCaptcha) do
    letrasAnguladas(aImage, TextCaptcha[i], Random(600) + 1, 25 * i - 15);

  SetLine(aImage, SetLinetoCaptcha);
end;

end.
