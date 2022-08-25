object FrmNovoUsuario: TFrmNovoUsuario
  Left = 0
  Top = 0
  ClientHeight = 446
  ClientWidth = 616
  Caption = ''
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniGenericControl1: TUniGenericControl
    Left = 0
    Top = 49
    Width = 616
    Height = 353
    Hint = ''
    Align = alClient
    Color = clWhite
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 402
    Width = 616
    Height = 44
    Hint = ''
    Align = alBottom
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 1
    Caption = 'Suporte: suporte.amconect@gmail.com'
    Color = 12615680
  end
  object UniLabel1: TUniLabel
    Left = 17
    Top = 78
    Width = 84
    Height = 21
    Hint = ''
    Caption = 'Seu e-mail:'
    ParentFont = False
    Font.Height = -17
    ParentColor = False
    Color = clWhite
    TabOrder = 2
  end
  object UniLabel2: TUniLabel
    Left = 17
    Top = 122
    Width = 124
    Height = 21
    Hint = ''
    Caption = 'Nome Completo:'
    ParentFont = False
    Font.Height = -17
    ParentColor = False
    Color = clWhite
    TabOrder = 3
  end
  object UniLabel3: TUniLabel
    Left = 17
    Top = 164
    Width = 51
    Height = 21
    Hint = ''
    Caption = 'Senha:'
    ParentFont = False
    Font.Height = -17
    ParentColor = False
    Color = clWhite
    TabOrder = 4
  end
  object EdEmail: TUniDBEdit
    Tag = 1
    Left = 159
    Top = 73
    Width = 369
    Height = 30
    Hint = ''
    DataField = 'email'
    DataSource = dsCadUsuarioNovo
    ParentFont = False
    Font.Height = -16
    TabOrder = 5
    ClearButton = True
    BorderStyle = ubsFrameLowered
  end
  object EdNome: TUniDBEdit
    Tag = 1
    Left = 159
    Top = 117
    Width = 369
    Height = 30
    Hint = ''
    DataField = 'nome'
    DataSource = dsCadUsuarioNovo
    ParentFont = False
    Font.Height = -16
    TabOrder = 6
    ClearButton = True
    BorderStyle = ubsFrameLowered
  end
  object EdSenha: TUniDBEdit
    Tag = 1
    Left = 159
    Top = 157
    Width = 369
    Height = 30
    Hint = ''
    DataField = 'senha'
    DataSource = dsCadUsuarioNovo
    PasswordChar = '#'
    CharEOL = '#'
    ParentFont = False
    Font.Height = -16
    TabOrder = 7
    ClearButton = True
    BorderStyle = ubsFrameLowered
  end
  object BtRegistrar: TUniButton
    Left = 376
    Top = 315
    Width = 152
    Height = 46
    Hint = ''
    Enabled = False
    Caption = 'Registrar'
    ParentFont = False
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 8
    Scale = bbsLarge
    IconCls = 'user'
    OnClick = BtRegistrarClick
  end
  object CheckTermos: TUniCheckBox
    Left = 168
    Top = 264
    Width = 193
    Height = 17
    Hint = ''
    Caption = 'Sim, eu concordo com os '
    ParentFont = False
    Font.Color = 11556864
    Font.Height = -13
    Font.Style = [fsBold]
    TabOrder = 9
    Color = clWhite
    OnChange = CheckTermosChange
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 616
    Height = 49
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    TabOrder = 10
    Caption = 'Registro de Novo Usu'#225'rio'
    Color = 12615680
  end
  object LblEsqueciisenha: TUniLabel
    Left = 353
    Top = 264
    Width = 94
    Height = 16
    Hint = ''
    Caption = 'Termos de Uso'
    ParentFont = False
    Font.Color = clGreen
    Font.Height = -13
    Font.Style = [fsBold, fsUnderline]
    ParentColor = False
    Color = clWhite
    TabOrder = 11
  end
  object UniLabel4: TUniLabel
    Left = 17
    Top = 207
    Width = 118
    Height = 21
    Hint = ''
    Caption = 'Repita a Senha:'
    ParentFont = False
    Font.Height = -17
    ParentColor = False
    Color = clWhite
    TabOrder = 12
  end
  object EdRepetirSenha: TUniEdit
    Left = 159
    Top = 198
    Width = 369
    Height = 30
    Hint = ''
    PasswordChar = '#'
    CharEOL = '#'
    BorderStyle = ubsFrameLowered
    Text = ''
    ParentFont = False
    Font.Height = -16
    TabOrder = 13
    EmptyText = 'Repita a Senha'
    ClearButton = True
  end
  object dsCadUsuarioNovo: TDataSource
    DataSet = DMLogin.QryCadUsuarioNovo
    Left = 64
    Top = 272
  end
end
