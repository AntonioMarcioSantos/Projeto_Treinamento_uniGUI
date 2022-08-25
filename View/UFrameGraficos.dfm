object FrameGraficos: TFrameGraficos
  Left = 0
  Top = 0
  Width = 1029
  Height = 490
  TabOrder = 0
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 479
    Width = 1029
    Height = 11
    Hint = ''
    ParentColor = False
    Color = 33023
    Align = alBottom
    TabOrder = 0
  end
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 1029
    Height = 479
    Hint = ''
    ActivePage = UniTabSheet1
    Align = alClient
    TabOrder = 1
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Gr'#225'ficos'
      object UniURLFrameGrafico: TUniURLFrame
        Left = 0
        Top = 0
        Width = 1021
        Height = 451
        Hint = ''
        Align = alClient
        TabOrder = 0
        ParentColor = False
        Color = clWhite
        object UniPanel1: TUniPanel
          Left = 0
          Top = 0
          Width = 1021
          Height = 57
          Hint = ''
          ParentRTL = False
          Align = alTop
          ParentFont = False
          TabOrder = 1
          BorderStyle = ubsSolid
          Caption = ''
          Color = clWhite
          DesignSize = (
            1021
            57)
          object BtExibir: TUniBitBtn
            Left = 876
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
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Exemplo'
      object UniPnlPesquisar: TUniPanel
        Left = 0
        Top = 0
        Width = 1021
        Height = 451
        Hint = ''
        ParentRTL = False
        Align = alClient
        ParentFont = False
        TabOrder = 0
        BorderStyle = ubsSolid
        Caption = ''
        Color = clWhite
        object memoJson: TUniMemo
          Left = 0
          Top = 0
          Width = 473
          Height = 176
          Hint = ''
          Lines.Strings = (
            'memoJson')
          Align = alLeft
          TabOrder = 1
        end
        object memoHTMLBase: TUniMemo
          Left = 473
          Top = 0
          Width = 548
          Height = 176
          Hint = ''
          Lines.Strings = (
            'memoHTMLBase')
          Align = alClient
          TabOrder = 2
        end
        object memoHTMLFinal: TUniMemo
          Left = 0
          Top = 176
          Width = 1021
          Height = 275
          Hint = ''
          Lines.Strings = (
            'memoHTMLFinal')
          Align = alBottom
          TabOrder = 3
        end
      end
    end
  end
end
