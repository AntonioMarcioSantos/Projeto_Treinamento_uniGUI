object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 646
  ClientWidth = 1445
  Caption = 'MainForm'
  Color = clWhite
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 624
    Width = 1445
    Hint = ''
    Panels = <
      item
        Alignment = taCenter
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
    SizeGrip = False
    Align = alBottom
    ParentColor = False
    Color = clWindow
    ExplicitWidth = 1439
    object UniFSColorPicker1: TUniFSColorPicker
      Left = 1254
      Top = 0
      Width = 137
      Height = 22
      Hint = ''
      ColorValue = clWhite
      OnSelect = UniFSColorPicker1Select
      PickerHeight = 265
      PickerWidth = 195
    end
  end
  object PagePrincipal: TUniPageControl
    Left = 241
    Top = 49
    Width = 1204
    Height = 575
    Hint = ''
    ActivePage = TabHome
    Images = UniNativeImageList1
    Align = alClient
    TabOrder = 1
    OnChange = PagePrincipalChange
    ExplicitWidth = 1198
    object TabHome: TUniTabSheet
      Hint = ''
      Caption = 'Home'
      ExplicitWidth = 1190
      object UniURLFramePrincipal: TUniURLFrame
        Left = 0
        Top = 0
        Width = 1196
        Height = 547
        Hint = ''
        BodyRTL = False
        OnFrameLoaded = UniURLFramePrincipalFrameLoaded
        Align = alClient
        TabOrder = 0
        ParentColor = False
        Color = clWhite
        OnAjaxEvent = UniURLFramePrincipalAjaxEvent
        ExplicitHeight = 528
      end
    end
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1445
    Height = 49
    Hint = ''
    ParentColor = False
    Color = 6835774
    Align = alTop
    ParentAlignmentControl = False
    TabOrder = 2
    ExplicitWidth = 1439
    object PanelTop: TUniPanel
      Left = 0
      Top = 0
      Width = 1445
      Height = 49
      Hint = ''
      Align = alClient
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = 'WebCaixa'
      Collapsed = True
      Color = 16744448
      ExplicitWidth = 1439
      DesignSize = (
        1445
        49)
      object UniLabel1: TUniLabel
        Left = 1363
        Top = 5
        Width = 269
        Height = 112
        Hint = ''
        TextConversion = txtHTML
        Caption = 
          '<i class="fa fa-user-circle-o   '#13#10'fa-2x" '#13#10'aria-hidden="true"></' +
          'i>'#13#10'        '
        Anchors = [akTop, akRight]
        TabOrder = 1
        ExplicitLeft = 1357
      end
      object UniLblButtoDrower: TUniLabel
        Left = 16
        Top = 6
        Width = 494
        Height = 28
        Hint = ''
        TextConversion = txtHTML
        Caption = '<i class="fa fa-bars fa fa-2x" aria-hidden="true"></i>'
        TabOrder = 2
        OnClick = UniLblButtoDrowerClick
      end
    end
  end
  object UniTreeMenu1: TUniTreeMenu
    Left = 0
    Top = 49
    Width = 241
    Height = 575
    Hint = ''
    BodyRTL = True
    Items.FontData = {0100000000}
    SourceMenu = UniMenuItems1
    Color = 4340789
    OnSelectionChange = UniTreeMenu1SelectionChange
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 96
    Top = 128
    Images = {
      1100000000000000060B0000006E617669636F6E3B66613B00000000060B0000
      006465736B746F703B66613B00000000060C000000656E76656C6F70653B6661
      3B000000000608000000757365723B66613B00000000060E0000006C696E652D
      63686172743B66613B00000000061000000077696E646F772D636C6F73653B66
      613B000000000608000000736176653B66613B00000000060800000065646974
      3B66613B0000000006070000006375743B66613B00000000060D000000626172
      2D63686172743B66613B00000000060D0000007069652D63686172743B66613B
      00000000060C000000626F6F6B6D61726B3B66613B00000000060C0000006361
      6C656E6461723B66613B000000000608000000666565643B66613B0000000006
      070000006661783B66613B000000000609000000696D6167653B66613B000000
      000609000000696E626F783B66613B}
  end
  object UniMenuItems1: TUniMenuItems
    Images = UniNativeImageList1
    MenuAnimation = [maLeftToRight]
    Left = 96
    Top = 200
    object DashBoard: TUniMenuItem
      Caption = 'DashBoard'
      OnClick = DashBoardClick
    end
    object mnuCadastros: TUniMenuItem
      Caption = 'Cadastros'
      ImageIndex = 1
      object mnubanco: TUniMenuItem
        Caption = 'Bancos'
        ImageIndex = 11
        OnClick = mnubancoClick
      end
      object mnuContas: TUniMenuItem
        Caption = 'Contas'
        ImageIndex = 6
        OnClick = mnuContasClick
      end
      object mnuGruposdeContas: TUniMenuItem
        Caption = 'Grupos de Contas                              '
        Hint = 'Grupos de Contas'
        ImageIndex = 3
        OnClick = mnuGruposdeContasClick
      end
      object mnuPlanodeContas: TUniMenuItem
        Caption = 'Plano de Contas'
        ImageIndex = 11
        OnClick = mnuPlanodeContasClick
      end
      object mnuCentrodeCusto: TUniMenuItem
        Caption = 'Centro de Custo'
        ImageIndex = 1
        OnClick = mnuCentrodeCustoClick
      end
    end
    object mnuMovimentacao: TUniMenuItem
      Caption = 'Lan'#231'amentos'
      ImageIndex = 2
      OnClick = mnuMovimentacaoClick
    end
    object mnuRelatorios: TUniMenuItem
      Caption = 'Relat'#243'rio'
      ImageIndex = 3
      object mnuRelatorioFechamentoCaixa: TUniMenuItem
        Caption = 'Fechamento do Caixa'
        Hint = 'Fechamento do Caixa'
        ImageIndex = 7
        OnClick = mnuRelatorioFechamentoCaixaClick
      end
      object mnuRelatorioExtratoContas: TUniMenuItem
        Caption = 'Resumo Receitas e Despesas'
        Hint = 'Resumo Receitas e Despesas'
        ImageIndex = 8
        OnClick = mnuRelatorioExtratoContasClick
      end
    end
    object mnuGraficos: TUniMenuItem
      Caption = 'Gr'#225'ficos'
      ImageIndex = 9
      OnClick = mnuGraficosClick
    end
    object mnuPivot: TUniMenuItem
      Caption = 'Pivot'
      Enabled = False
      Visible = False
      OnClick = mnuPivotClick
    end
    object mnuSuporte: TUniMenuItem
      Caption = 'Suporte'
      OnClick = mnuSuporteClick
    end
    object mnuSair: TUniMenuItem
      Caption = 'Sair'
      ImageIndex = 5
      OnClick = mnuSairClick
    end
  end
  object UniScreenMask1: TUniScreenMask
    Enabled = False
    DisplayMessage = 'Aguarde Ajustes de Seguran'#231'a'
    TargetControl = TabHome
    Left = 344
    Top = 192
  end
end
