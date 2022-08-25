object DMLogin: TDMLogin
  OldCreateOrder = False
  Height = 345
  Width = 439
  object QryLogin: TRESTDWClientSQL
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
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SENHA'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.Conexao
    SQL.Strings = (
      'SELECT *  FROM USUARIOS WHERE NOME = :USUARIO AND SENHA=:SENHA ')
    UpdateTableName = 'USUARIOS'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 248
    Top = 40
    object QryLoginID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryLoginEMPRESA_FK: TIntegerField
      FieldName = 'EMPRESA_FK'
    end
    object QryLoginNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object QryLoginSENHA: TStringField
      FieldName = 'SENHA'
      Size = 15
    end
    object QryLoginEMAIL: TStringField
      FieldName = 'EMAIL'
      Required = True
      Size = 200
    end
    object QryLoginDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
    end
  end
  object QryCadUsuarioNovo: TRESTDWClientSQL
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
    SequenceName = 'GEN_USUARIOS_ID'
    SequenceField = 'ID'
    MasterCascadeDelete = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = UniMainModule.Conexao
    SQL.Strings = (
      'SELECT * FROM USUARIOS WHERE ID = -1')
    UpdateTableName = 'USUARIOS'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 88
    Top = 80
    object QryCadUsuarioNovoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QryCadUsuarioNovoEMPRESA_FK: TIntegerField
      FieldName = 'EMPRESA_FK'
    end
    object QryCadUsuarioNovoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object QryCadUsuarioNovoSENHA: TStringField
      FieldName = 'SENHA'
      Size = 15
    end
    object QryCadUsuarioNovoEMAIL: TStringField
      FieldName = 'EMAIL'
      Required = True
      Size = 200
    end
    object QryCadUsuarioNovoDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
    end
  end
  object ValidaUsuarioEmail: TRESTDWClientSQL
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
        Name = 'EMAIL'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.Conexao
    SQL.Strings = (
      'SELECT ID,NOME,SENHA FROM USUARIOS WHERE EMAIL=:EMAIL ')
    UpdateTableName = 'USUARIOS'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 88
    Top = 160
    object ValidaUsuarioEmailID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ValidaUsuarioEmailNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object ValidaUsuarioEmailSENHA: TStringField
      FieldName = 'SENHA'
      Size = 15
    end
  end
end
