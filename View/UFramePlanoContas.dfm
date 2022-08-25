inherited FramePlanoContas: TFramePlanoContas
  inherited PageCadastro: TUniPageControl
    inherited Tab1: TUniTabSheet
      inherited UniPnlPesquisar: TUniPanel
        inherited EdPesquisar: TUniEdit
          Width = 743
          ExplicitWidth = 743
        end
      end
    end
    inherited Tab2: TUniTabSheet
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 166
          ScrollWidth = 536
          object UniLabel2: TUniLabel
            Left = 25
            Top = 24
            Width = 37
            Height = 13
            Hint = ''
            Caption = 'C'#243'digo:'
            TabOrder = 0
          end
          object UniDBText1: TUniDBText
            Left = 75
            Top = 24
            Width = 56
            Height = 13
            Hint = ''
            DataField = 'ID'
            DataSource = dsCad
          end
          object UniDBEdit2: TUniDBEdit
            Tag = 1
            Left = 25
            Top = 80
            Width = 511
            Height = 22
            Hint = ''
            DataField = 'NOME_CONTA'
            DataSource = dsCad
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  sender.inpu' +
                'tCls='#39'CorPadraoBotao'#39' ;'#13#10'}')
          end
          object UniLabel4: TUniLabel
            Left = 25
            Top = 62
            Width = 122
            Height = 13
            Hint = ''
            Caption = 'Descri'#231#227'o da Conta Plano'
            TabOrder = 3
          end
          object UniLabel3: TUniLabel
            Left = 27
            Top = 125
            Width = 133
            Height = 13
            Hint = ''
            Caption = 'Selecione o Grupo da Conta'
            TabOrder = 4
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 24
            Top = 144
            Width = 360
            Hint = ''
            ListField = 'NOME_GRUPO'
            ListSource = dsGrupoContas
            KeyField = 'ID'
            ListFieldIndex = 0
            DataField = 'GRUPO_FK'
            DataSource = dsCad
            TabOrder = 5
            Color = clWindow
            ForceSelection = False
          end
        end
      end
    end
  end
  inherited UniNativeImageList1: TUniNativeImageList
    Left = 752
    Top = 176
  end
  inherited FDQryCad: TRESTDWClientSQL
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PLANO_CONTAS WHERE ID=:ID')
    UpdateTableName = 'PLANO_CONTAS'
    ReflectChanges = False
    object FDQryCadID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryCadNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 150
    end
    object FDQryCadGRUPO_FK: TIntegerField
      FieldName = 'GRUPO_FK'
    end
    object FDQryCadTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  inherited FDQryFiltro: TRESTDWClientSQL
    Params = <
      item
        DataType = ftString
        Name = 'NOME_CONTA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      ''
      ''
      
        'SELECT PLANO_CONTAS.ID,PLANO_CONTAS.NOME_CONTA,GRUPO_CONTAS.NOME' +
        '_GRUPO FROM PLANO_CONTAS, GRUPO_CONTAS'
      
        'WHERE NOME_CONTA LIKE :NOME_CONTA  || '#39'%'#39'  AND PLANO_CONTAS.GRUP' +
        'O_FK = GRUPO_CONTAS.ID'
      'ORDER BY NOME_CONTA')
    UpdateTableName = 'PLANO_CONTAS'
    object FDQryFiltroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 150
    end
    object FDQryFiltroNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 100
    end
  end
  object FDQryGrupoContas: TRESTDWClientSQL
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
    SQL.Strings = (
      'SELECT * FROM GRUPO_CONTAS ORDER BY NOME_GRUPO')
    UpdateTableName = 'BANCOS'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 372
    Top = 376
    object FDQryGrupoContasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryGrupoContasNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 100
    end
    object FDQryGrupoContasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object dsGrupoContas: TDataSource
    DataSet = FDQryGrupoContas
    Left = 473
    Top = 378
  end
end
