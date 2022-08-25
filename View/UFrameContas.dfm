inherited FrameContas: TFrameContas
  inherited PageCadastro: TUniPageControl
    inherited Tab1: TUniTabSheet
      inherited UniPnlPesquisar: TUniPanel
        inherited EdPesquisar: TUniEdit
          Width = 758
          ExplicitWidth = 758
        end
      end
    end
    inherited Tab2: TUniTabSheet
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 166
          ScrollWidth = 536
          object UniLabel2: TUniLabel
            Left = 27
            Top = 24
            Width = 33
            Height = 13
            Hint = ''
            Caption = 'C'#243'digo'
            TabOrder = 0
          end
          object UniDBText1: TUniDBText
            Left = 68
            Top = 24
            Width = 56
            Height = 13
            Hint = ''
            DataField = 'ID'
            DataSource = dsCad
          end
          object UniLabel4: TUniLabel
            Left = 27
            Top = 62
            Width = 74
            Height = 13
            Hint = ''
            Caption = 'Nome da Conta'
            TabOrder = 2
          end
          object UniDBEdit2: TUniDBEdit
            Tag = 1
            Left = 27
            Top = 80
            Width = 509
            Height = 22
            Hint = ''
            DataField = 'NOME_CONTA'
            DataSource = dsCad
            TabOrder = 3
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 25
            Top = 144
            Width = 360
            Hint = ''
            ListField = 'NOME_BANCO'
            ListSource = dsBancos
            KeyField = 'ID'
            ListFieldIndex = 0
            DataField = 'BANCO_FK'
            DataSource = dsCad
            TabOrder = 4
            Color = clWindow
            ForceSelection = False
          end
          object UniLabel3: TUniLabel
            Left = 27
            Top = 125
            Width = 86
            Height = 13
            Hint = ''
            Caption = 'Selecione o Banco'
            TabOrder = 5
          end
        end
      end
    end
  end
  inherited UniNativeImageList1: TUniNativeImageList
    Left = 832
    Top = 408
  end
  inherited FDQryCad: TRESTDWClientSQL
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM CONTAS WHERE ID=:ID')
    UpdateTableName = 'CONTAS'
    ReflectChanges = False
    Top = 288
    object FDQryCadID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryCadNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 100
    end
    object FDQryCadSALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
    end
    object FDQryCadSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object FDQryCadBANCO_FK: TIntegerField
      FieldName = 'BANCO_FK'
    end
  end
  inherited dsFiltro: TDataSource
    Top = 360
  end
  inherited FDQryFiltro: TRESTDWClientSQL
    Params = <
      item
        DataType = ftString
        Name = 'NOME_CONTA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT CONTAS.ID,CONTAS.NOME_CONTA,BANCOS.NOME_BANCO,CONTAS.SALD' +
        'O FROM CONTAS, BANCOS'
      
        'WHERE NOME_CONTA LIKE :NOME_CONTA  || '#39'%'#39'  AND CONTAS.BANCO_FK =' +
        ' BANCOS.ID'
      'ORDER BY NOME_CONTA')
    Top = 360
    object FDQryFiltroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 100
    end
    object FDQryFiltroNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 60
    end
    object FDQryFiltroSALDO: TFloatField
      DisplayWidth = 20
      FieldName = 'SALDO'
      DisplayFormat = '#,###,##0.00'
    end
  end
  object FDQryBancos: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'SIGLA_FENABAN'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NOME_BANCO'
        DataType = ftString
        Size = 200
      end>
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
      'SELECT * FROM BANCOS ORDER BY NOME_BANCO')
    UpdateTableName = 'BANCOS'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 452
    Top = 376
    object FDQryBancosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryBancosNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 200
    end
  end
  object dsBancos: TDataSource
    DataSet = FDQryBancos
    Left = 521
    Top = 378
  end
end
