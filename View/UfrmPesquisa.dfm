object FrmPesquisaBase: TFrmPesquisaBase
  Left = 0
  Top = 0
  ClientHeight = 581
  ClientWidth = 899
  Caption = ''
  Color = clSilver
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Font.Color = clWhite
  PixelsPerInch = 96
  TextHeight = 13
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 519
    Width = 899
    Height = 51
    Hint = ''
    ParentColor = False
    Color = clSilver
    Align = alBottom
    TabOrder = 0
  end
  object UniPnlPesquisar: TUniPanel
    Left = 0
    Top = 0
    Width = 899
    Height = 57
    Hint = ''
    ParentRTL = False
    Align = alTop
    ParentFont = False
    Font.Color = clWhite
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    Color = 6835774
    DesignSize = (
      899
      57)
    object EdPesquisar: TUniEdit
      Left = 10
      Top = 23
      Width = 697
      Hint = ''
      CharCase = ecUpperCase
      Text = '%'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
    object LblPesquisa: TUniLabel
      Left = 10
      Top = 4
      Width = 134
      Height = 13
      Hint = ''
      Caption = 'Informa'#231#227'o a Pesquisar'
      ParentFont = False
      Font.Color = clSilver
      Font.Style = [fsBold]
      ParentColor = False
      Color = 15461355
      TabOrder = 2
    end
    object BtFiltrar: TUniBitBtn
      Left = 768
      Top = 9
      Width = 119
      Height = 35
      Hint = ''
      Caption = 'Filtrar'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = -1
      TabOrder = 3
      ImageIndex = 6
    end
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 570
    Width = 899
    Height = 11
    Hint = ''
    ParentColor = False
    Color = 4370903
    Align = alBottom
    TabOrder = 2
  end
  object UniDBGrid1: TUniDBGrid
    Left = 264
    Top = 112
    Width = 627
    Height = 321
    Hint = ''
    DataSource = dsPesquisa
    LoadMask.Message = 'Loading data...'
    TabOrder = 3
  end
  object dsPesquisa: TDataSource
    Left = 168
    Top = 152
  end
end
