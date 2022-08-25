object FrameBase: TFrameBase
  Left = 0
  Top = 0
  Width = 949
  Height = 510
  OnCreate = UniFrameCreate
  TabOrder = 0
  object PnlCrud: TUniPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 42
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = clRed
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = 14211288
    object UniLabel1: TUniLabel
      Left = 784
      Top = 24
      Width = 4
      Height = 13
      Hint = ''
      Visible = False
      Caption = '.'
      TabOrder = 1
    end
    object BtInc: TUniBitBtn
      Left = 6
      Top = 4
      Width = 103
      Height = 35
      Hint = ''
      Caption = 'Novo'
      ParentFont = False
      Font.Color = -1
      TabOrder = 2
      Images = UniNativeImageList1
      ImageIndex = 6
      OnClick = BtIncClick
    end
    object BtAlt: TUniBitBtn
      Left = 114
      Top = 4
      Width = 103
      Height = 35
      Hint = ''
      Caption = 'Editar'
      ParentFont = False
      Font.Color = -1
      TabOrder = 3
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.ba' +
          'seCls = "btn" ;'#13#10'    config.cls     = "btn-dark"   '#13#10'}')
      Images = UniNativeImageList1
      ImageIndex = 7
      OnClick = BtAltClick
    end
    object BtExc: TUniBitBtn
      Left = 222
      Top = 4
      Width = 103
      Height = 35
      Hint = ''
      Caption = 'Deletar'
      ParentFont = False
      Font.Color = -1
      TabOrder = 4
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.ba' +
          'seCls = "btn" ;'#13#10'    config.cls     = "btn-danger"'#13#10'}')
      Images = UniNativeImageList1
      ImageIndex = 8
      OnClick = BtExcClick
    end
    object BtCan: TUniBitBtn
      Left = 330
      Top = 4
      Width = 103
      Height = 35
      Hint = ''
      Caption = 'Desfazer'
      ParentFont = False
      Font.Color = -1
      TabOrder = 5
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.ba' +
          'seCls = "btn" ;'#13#10'    config.cls     = "btn-warning"'#13#10'}')
      Images = UniNativeImageList1
      ImageIndex = 13
      OnClick = BtCanClick
    end
    object BtGrv: TUniBitBtn
      Left = 438
      Top = 4
      Width = 103
      Height = 35
      Hint = ''
      Caption = 'Salvar'
      ParentFont = False
      Font.Color = -1
      TabOrder = 6
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.ba' +
          'seCls = "btn" ;'#13#10'    config.cls     = "btn-success"'#13#10'}')
      Images = UniNativeImageList1
      ImageIndex = 6
      OnClick = BtGrvClick
    end
  end
  object PageCadastro: TUniPageControl
    Left = 0
    Top = 42
    Width = 949
    Height = 457
    Hint = ''
    ActivePage = Tab1
    Align = alClient
    TabOrder = 1
    OnChange = PageCadastroChange
    object Tab1: TUniTabSheet
      Hint = ''
      Caption = 'Consulta'
      object UniPnlPesquisar: TUniPanel
        Left = 0
        Top = 0
        Width = 941
        Height = 53
        Hint = ''
        ParentRTL = False
        Align = alTop
        ParentFont = False
        TabOrder = 0
        BorderStyle = ubsSolid
        Caption = ''
        Color = 6835774
        DesignSize = (
          941
          53)
        object EdPesquisar: TUniEdit
          Left = 26
          Top = 22
          Width = 509
          Hint = ''
          CharCase = ecUpperCase
          Text = '%'
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
        end
        object LblPesquisa: TUniLabel
          Left = 26
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
          Left = 810
          Top = 9
          Width = 119
          Height = 35
          Hint = ''
          Caption = 'Filtrar'
          Anchors = [akTop, akRight]
          ParentFont = False
          Font.Color = -1
          TabOrder = 3
          Images = UniNativeImageList1
          ImageIndex = 6
          OnClick = BtFiltrarClick
        end
      end
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 53
        Width = 941
        Height = 376
        Hint = ''
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's="mGridCliente";'#13#10'    config.itemHeight = 20;'#13#10'    config.heade' +
            'rContainer = {height: 20};'#13#10'}')
        DataSource = dsFiltro
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        LoadMask.Message = 'Loading data...'
        BorderStyle = ubsNone
        Align = alClient
        TabOrder = 1
        ParentColor = False
        Color = clWindow
        OnDblClick = UniDBGrid1DblClick
      end
    end
    object Tab2: TUniTabSheet
      Hint = ''
      Caption = 'Ficha'
      object UniPanel1: TUniPanel
        Left = 0
        Top = 0
        Width = 941
        Height = 429
        Hint = ''
        Align = alClient
        TabOrder = 0
        BorderStyle = ubsNone
        Caption = ''
        object UniScrollBox1: TUniScrollBox
          Left = 0
          Top = 0
          Width = 941
          Height = 429
          Hint = ''
          Align = alClient
          Color = clBtnHighlight
          TabOrder = 1
        end
      end
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 499
    Width = 949
    Height = 11
    Hint = ''
    ParentColor = False
    Color = 33023
    Align = alBottom
    TabOrder = 2
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 664
    Top = 224
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
      0A0000007365617263683B66613B000000000609000000696D6167653B66613B
      000000000609000000696E626F783B66613B}
  end
  object FDQryCad: TRESTDWClientSQL
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvEDelete, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.KeyFields = 'ID'
    StoreDefs = True
    MasterCascadeDelete = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = UniMainModule.Conexao
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 660
    Top = 296
  end
  object dsCad: TDataSource
    DataSet = FDQryCad
    Left = 753
    Top = 298
  end
  object dsFiltro: TDataSource
    DataSet = FDQryFiltro
    Left = 753
    Top = 368
  end
  object FDQryFiltro: TRESTDWClientSQL
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CLIENTES'
    UpdateOptions.KeyFields = 'ID'
    StoreDefs = True
    MasterCascadeDelete = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = UniMainModule.Conexao
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 660
    Top = 368
  end
end
