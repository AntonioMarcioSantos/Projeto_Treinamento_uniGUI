object FramePivot: TFramePivot
  Left = 0
  Top = 0
  Width = 864
  Height = 502
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 864
    Height = 57
    Hint = ''
    ParentRTL = False
    Align = alTop
    ParentFont = False
    TabOrder = 0
    BorderStyle = ubsSolid
    Caption = ''
    Color = 2954752
    ExplicitLeft = -157
    ExplicitWidth = 1021
    DesignSize = (
      864
      57)
    object BtExibir: TUniBitBtn
      Left = 719
      Top = 9
      Width = 119
      Height = 35
      Hint = ''
      Caption = 'Filtrar'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = -1
      TabOrder = 1
      ImageIndex = 6
      OnClick = BtExibirClick
      ExplicitLeft = 876
    end
    object UniLabel1: TUniLabel
      Left = 18
      Top = 3
      Width = 90
      Height = 13
      Hint = ''
      Caption = 'Tipo de Gr'#225'ficos'
      ParentFont = False
      Font.Color = clSilver
      Font.Style = [fsBold]
      ParentColor = False
      Color = 15461355
      TabOrder = 2
    end
    object CmbTipoGrafico: TUniComboBox
      Left = 18
      Top = 18
      Width = 207
      Height = 32
      Hint = ''
      Style = csDropDownList
      Text = 'Barra'
      Items.Strings = (
        'Barra'
        'Pizza')
      ItemIndex = 0
      ParentFont = False
      Font.Color = 12615680
      Font.Height = -16
      Font.Name = 'Roboto'
      TabOrder = 3
      ForceSelection = True
    end
  end
  object UniURLFrame1: TUniURLFrame
    Left = 0
    Top = 57
    Width = 864
    Height = 434
    Hint = ''
    URL = 'E:\ProjetosWEB\Pivot_unigui\index.html'
    Align = alClient
    TabOrder = 1
    ParentColor = False
    Color = clBtnFace
    ExplicitLeft = 96
    ExplicitTop = 112
    ExplicitWidth = 320
    ExplicitHeight = 240
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 491
    Width = 864
    Height = 11
    Hint = ''
    ParentColor = False
    Color = 33023
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = -165
    ExplicitTop = 479
    ExplicitWidth = 1029
  end
end
