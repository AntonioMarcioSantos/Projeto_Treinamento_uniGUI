inherited FrmPesquisaCentroCusto: TFrmPesquisaCentroCusto
  ClientHeight = 589
  ClientWidth = 1064
  Font.Color = clBlack
  ExplicitWidth = 1080
  ExplicitHeight = 628
  PixelsPerInch = 96
  TextHeight = 13
  inherited UniContainerPanel2: TUniContainerPanel
    Top = 528
    Width = 1064
    Height = 50
    Color = clWhite
    ExplicitTop = 531
    ExplicitWidth = 897
    ExplicitHeight = 50
    DesignSize = (
      1064
      50)
    object UniBitBtn1: TUniBitBtn
      Left = 726
      Top = 7
      Width = 326
      Height = 35
      Hint = ''
      Caption = 'OK'
      ModalResult = 1
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = -1
      TabOrder = 1
      ImageIndex = 6
      ExplicitLeft = 559
    end
    object UniLabel1: TUniLabel
      Left = 48
      Top = 16
      Width = 338
      Height = 24
      Hint = ''
      Caption = 'Selection a registro e click em OK'
      ParentFont = False
      Font.Color = 12615680
      Font.Height = -20
      Font.Style = [fsBold]
      TabOrder = 2
    end
  end
  inherited UniPnlPesquisar: TUniPanel
    Width = 1064
    ExplicitTop = -6
    ExplicitWidth = 1064
    inherited EdPesquisar: TUniEdit
      Width = 862
      ParentFont = False
      Font.Color = clBlack
    end
    inherited LblPesquisa: TUniLabel
      Font.Color = clWhite
    end
    inherited BtFiltrar: TUniBitBtn
      Left = 933
      Top = 12
      OnClick = BtFiltrarClick
      ExplicitTop = 12
    end
  end
  inherited UniContainerPanel1: TUniContainerPanel
    Top = 578
    Width = 1064
    Color = 33023
  end
  inherited UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 57
    Width = 1064
    Height = 471
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
    Align = alClient
    Font.Color = clBlack
    Font.Height = -20
    Font.Name = 'Roboto'
    ParentFont = False
    ParentColor = False
    Color = clBlack
  end
  inherited dsPesquisa: TDataSource
    DataSet = DmPesquisas.FDQryCentroCusto
    Top = 104
  end
end
