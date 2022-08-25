object FrmRelReceitasDespesas: TFrmRelReceitasDespesas
  Left = 0
  Top = 0
  ClientHeight = 431
  ClientWidth = 575
  Caption = 'FrmRelReceitasDespesas'
  OnShow = UniFormShow
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 575
    Height = 59
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -25
    Font.Name = 'Segoe UI Light'
    Font.Style = [fsBold]
    TabOrder = 0
    Caption = 'Relatorio do Receitas e Despesas'
    Color = 16744448
  end
  object UniGroupBox1: TUniGroupBox
    Left = 0
    Top = 59
    Width = 575
    Height = 361
    Hint = ''
    Caption = 'Filtros'
    Align = alClient
    TabOrder = 1
    ParentFont = False
    Font.Height = -13
    ExplicitLeft = -20
    ExplicitTop = 17
    ExplicitWidth = 595
    ExplicitHeight = 376
    DesignSize = (
      575
      361)
    object EdDtIni: TUniDateTimePicker
      Left = 24
      Top = 79
      Width = 137
      Height = 24
      Hint = ''
      DateTime = 42566.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 1
      ParentFont = False
      Font.Height = -16
    end
    object EdDtFim: TUniDateTimePicker
      Left = 226
      Top = 79
      Width = 137
      Height = 24
      Hint = ''
      DateTime = 42566.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 2
      ParentFont = False
      Font.Height = -16
    end
    object UniDBLkupCaixa: TUniDBLookupComboBox
      Left = 24
      Top = 160
      Width = 339
      Height = 27
      Hint = ''
      ListField = 'NOME_CONTA'
      ListSource = DsContas
      KeyField = 'id'
      ListFieldIndex = 1
      DataSource = DsContas
      ParentFont = False
      Font.Height = -16
      Font.Style = [fsBold]
      TabOrder = 3
      Color = clWindow
      ForceSelection = False
    end
    object UniLabel2: TUniLabel
      Left = 185
      Top = 85
      Width = 10
      Height = 19
      Hint = ''
      Caption = #224
      ParentFont = False
      Font.Height = -16
      Font.Style = [fsBold]
      TabOrder = 4
    end
    object UniLabel3: TUniLabel
      Left = 24
      Top = 56
      Width = 79
      Height = 19
      Hint = ''
      Caption = 'Data Inicial'
      ParentFont = False
      Font.Height = -16
      TabOrder = 5
    end
    object UniLabel1: TUniLabel
      Left = 226
      Top = 54
      Width = 70
      Height = 19
      Hint = ''
      Caption = 'Data Final'
      ParentFont = False
      Font.Height = -16
      TabOrder = 6
    end
    object UniLabel4: TUniLabel
      Left = 24
      Top = 133
      Width = 130
      Height = 19
      Hint = ''
      Caption = 'Selecione a Conta '
      ParentFont = False
      Font.Height = -16
      TabOrder = 7
    end
    object BtImprimir: TUniBitBtn
      Left = 378
      Top = 191
      Width = 161
      Height = 41
      Hint = ''
      Caption = 'Imprimir'
      Anchors = [akTop, akRight]
      TabOrder = 8
      OnClick = BtImprimirClick
    end
    object BtSair: TUniBitBtn
      Left = 378
      Top = 238
      Width = 161
      Height = 41
      Hint = ''
      Caption = 'Sair'
      Anchors = [akTop, akRight]
      TabOrder = 9
      OnClick = BtSairClick
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 420
    Width = 575
    Height = 11
    Hint = ''
    ParentColor = False
    Color = 33023
    Align = alBottom
    TabOrder = 2
  end
  object DsContas: TDataSource
    DataSet = DmRelatorio.QryContas
    Left = 88
    Top = 282
  end
end
