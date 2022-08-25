object DmPesquisas: TDmPesquisas
  OldCreateOrder = False
  Height = 347
  Width = 676
  object FDQryPlanoContas: TRESTDWClientSQL
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    Datapacks = -1
    DataCache = False
    Params = <
      item
        DataType = ftString
        Name = 'NOME_CONTA'
        ParamType = ptInput
        Size = 150
      end>
    DataBase = UniMainModule.Conexao
    SQL.Strings = (
      
        'SELECT PLANO_CONTAS.ID,PLANO_CONTAS.NOME_CONTA,GRUPO_CONTAS.NOME' +
        '_GRUPO FROM PLANO_CONTAS, GRUPO_CONTAS'
      
        'WHERE NOME_CONTA LIKE :NOME_CONTA  || '#39'%'#39'  AND PLANO_CONTAS.GRUP' +
        'O_FK = GRUPO_CONTAS.ID'
      'ORDER BY NOME_CONTA')
    UpdateTableName = 'PLANO_CONTAS'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 120
    Top = 64
    object FDQryPlanoContasID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryPlanoContasNOME_CONTA: TStringField
      DisplayWidth = 88
      FieldName = 'NOME_CONTA'
      Size = 80
    end
    object FDQryPlanoContasNOME_GRUPO: TStringField
      DisplayWidth = 46
      FieldName = 'NOME_GRUPO'
      Size = 70
    end
  end
  object FDQryCentroCusto: TRESTDWClientSQL
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    Datapacks = -1
    DataCache = False
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.Conexao
    SQL.Strings = (
      'SELECT *  FROM CENTRO_CUSTO'
      'WHERE NOME LIKE :NOME  || '#39'%'#39'  '
      'ORDER BY NOME')
    UpdateTableName = 'CENTRO_CUSTO'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 248
    Top = 64
    object FDQryCentroCustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryCentroCustoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
end
