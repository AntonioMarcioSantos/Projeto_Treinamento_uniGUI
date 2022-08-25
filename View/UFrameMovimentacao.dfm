inherited FrameMovimentacao: TFrameMovimentacao
  inherited PnlCrud: TUniPanel
    inherited BtAlt: TUniBitBtn
      Left = 438
      Enabled = False
      Visible = False
      ExplicitLeft = 438
    end
    inherited BtExc: TUniBitBtn
      Left = 115
      ExplicitLeft = 115
    end
    inherited BtCan: TUniBitBtn
      Left = 223
      ExplicitLeft = 223
    end
    inherited BtGrv: TUniBitBtn
      Left = 331
      ExplicitLeft = 331
    end
  end
  inherited PageCadastro: TUniPageControl
    inherited Tab1: TUniTabSheet
      inherited UniPnlPesquisar: TUniPanel
        Height = 82
        BorderStyle = ubsNone
        ExplicitHeight = 82
        inherited EdPesquisar: TUniEdit
          Left = 21
          Top = 20
          Width = 763
          ExplicitLeft = 21
          ExplicitTop = 20
          ExplicitWidth = 763
        end
        inherited LblPesquisa: TUniLabel
          Left = 21
          Top = 59
          Width = 64
          Caption = 'Data Inicial'
          ExplicitLeft = 21
          ExplicitTop = 59
          ExplicitWidth = 64
        end
        object EdDtFim: TUniDateTimePicker
          Left = 302
          Top = 50
          Width = 120
          Hint = ''
          DateTime = 42540.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 4
        end
        object EdDtIni: TUniDateTimePicker
          Left = 99
          Top = 50
          Width = 120
          Hint = ''
          DateTime = 42540.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 5
        end
        object UniLabel13: TUniLabel
          Left = 23
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
          TabOrder = 6
        end
        object UniLabel14: TUniLabel
          Left = 231
          Top = 60
          Width = 56
          Height = 13
          Hint = ''
          Caption = 'Data Final'
          ParentFont = False
          Font.Color = clSilver
          Font.Style = [fsBold]
          ParentColor = False
          Color = 15461355
          TabOrder = 7
        end
      end
      inherited UniDBGrid1: TUniDBGrid
        Top = 82
        Height = 347
        Columns = <
          item
            FieldName = 'ID'
            Title.Caption = 'ID'
            Width = 64
          end
          item
            FieldName = 'DATA'
            Title.Caption = 'Data'
            Width = 96
          end
          item
            FieldName = 'CONTA'
            Title.Caption = 'Conta'
            Width = 70
          end
          item
            FieldName = 'CONTA_PLANO'
            Title.Caption = 'Conta_Plano'
            Width = 100
          end
          item
            FieldName = 'REFERENTE'
            Title.Caption = 'Refer'#234'nte'
            Width = 500
          end
          item
            FieldName = 'DEBITO'
            Title.Caption = 'D'#233'bito'
            Width = 84
          end
          item
            FieldName = 'CREDITO'
            Title.Caption = 'Cr'#233'dito'
            Width = 84
          end
          item
            FieldName = 'DATA_MOVIMENTO'
            Title.Caption = 'Data Movimento'
            Width = 120
          end
          item
            FieldName = 'CENTRO_CUSTO'
            Title.Caption = 'Centro Custo'
            Width = 100
          end
          item
            FieldName = 'TIPO'
            Title.Caption = 'Tipo'
            Width = 50
          end
          item
            FieldName = 'DOCUMENTO'
            Title.Caption = 'Documento'
            Width = 124
          end
          item
            FieldName = 'USUARIO'
            Title.Caption = 'Usu'#225'rio'
            Width = 84
          end
          item
            FieldName = 'ORIGEM'
            Title.Caption = 'Origem'
            Width = 64
          end>
      end
    end
    inherited Tab2: TUniTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          Color = 3421488
          ScrollHeight = 102
          ScrollWidth = 73
          object UniLabel2: TUniLabel
            Left = 40
            Top = 33
            Width = 33
            Height = 13
            Hint = ''
            Caption = 'Conta:'
            ParentFont = False
            Font.Color = clSilver
            ParentColor = False
            Color = 3421488
            TabOrder = 0
          end
          object UniLabel3: TUniLabel
            Left = 40
            Top = 58
            Width = 27
            Height = 13
            Hint = ''
            Caption = 'Data:'
            ParentFont = False
            Font.Color = clSilver
            ParentColor = False
            Color = 3421488
            TabOrder = 1
          end
          object UniLabel4: TUniLabel
            Left = 40
            Top = 89
            Width = 31
            Height = 13
            Hint = ''
            Caption = 'Nome:'
            ParentFont = False
            Font.Color = clSilver
            ParentColor = False
            Color = 3421488
            TabOrder = 2
          end
          object UniScrollBox2: TUniScrollBox
            Left = 0
            Top = 0
            Width = 939
            Height = 427
            Hint = ''
            Align = alClient
            Color = clWhite
            TabOrder = 3
            ExplicitWidth = 933
            ScrollHeight = 332
            ScrollWidth = 535
            object UniLabel5: TUniLabel
              Left = 20
              Top = 57
              Width = 43
              Height = 16
              Hint = ''
              Caption = 'Conta:'
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Style = [fsBold]
              ParentColor = False
              Color = 3421488
              TabOrder = 8
            end
            object UniLabel6: TUniLabel
              Left = 19
              Top = 93
              Width = 36
              Height = 16
              Hint = ''
              Caption = 'Data:'
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Style = [fsBold]
              ParentColor = False
              Color = 3421488
              TabOrder = 9
            end
            object UniLabel8: TUniLabel
              Left = 20
              Top = 162
              Width = 71
              Height = 16
              Hint = ''
              Caption = 'Refer'#234'nte:'
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Style = [fsBold]
              ParentColor = False
              Color = 3421488
              TabOrder = 10
            end
            object UniLabel9: TUniLabel
              Left = 20
              Top = 202
              Width = 109
              Height = 16
              Hint = ''
              Caption = 'Plano de Contas:'
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Style = [fsBold]
              ParentColor = False
              Color = 3421488
              TabOrder = 11
            end
            object UniLabel10: TUniLabel
              Left = 19
              Top = 241
              Width = 110
              Height = 16
              Hint = ''
              Caption = 'Centro de Custo:'
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Style = [fsBold]
              ParentColor = False
              Color = 3421488
              TabOrder = 12
            end
            object UniLabel11: TUniLabel
              Left = 20
              Top = 278
              Width = 67
              Height = 16
              Hint = ''
              Caption = 'Opera'#231#227'o:'
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Style = [fsBold]
              ParentColor = False
              Color = 3421488
              TabOrder = 13
            end
            object UniLabel12: TUniLabel
              Left = 19
              Top = 315
              Width = 39
              Height = 16
              Hint = ''
              Caption = 'Valor:'
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Style = [fsBold]
              ParentColor = False
              Color = 3421488
              TabOrder = 14
            end
            object EdReferente: TUniDBEdit
              Left = 134
              Top = 155
              Width = 401
              Height = 23
              Hint = ''
              DataField = 'REFERENTE'
              DataSource = dsCad
              ParentFont = False
              Font.Height = -13
              TabOrder = 3
            end
            object EdContaPlano: TUniDBEdit
              Left = 134
              Top = 191
              Width = 121
              Height = 23
              Hint = ''
              DataField = 'CONTA_PLANO'
              DataSource = dsCad
              ParentFont = False
              Font.Height = -13
              TabOrder = 4
            end
            object EdCentroCusto: TUniDBEdit
              Left = 134
              Top = 234
              Width = 121
              Height = 23
              Hint = ''
              DataField = 'CENTRO_CUSTO'
              DataSource = dsCad
              ParentFont = False
              Font.Height = -13
              TabOrder = 5
            end
            object BtPesquisaPlanoContas: TUniBitBtn
              Left = 263
              Top = 187
              Width = 90
              Height = 31
              Hint = ''
              Caption = 'Pesquisar'
              ParentFont = False
              Font.Color = -1
              TabOrder = 15
              Images = UniNativeImageList1
              ImageIndex = 14
              OnClick = BtPesquisaPlanoContasClick
            end
            object BtPesquisaCentroCusto: TUniBitBtn
              Left = 263
              Top = 228
              Width = 90
              Height = 32
              Hint = ''
              Caption = 'Pesquisar'
              ParentFont = False
              Font.Color = -1
              TabOrder = 16
              Images = UniNativeImageList1
              ImageIndex = 14
              OnClick = BtPesquisaCentroCustoClick
            end
            object EdData: TUniDBDateTimePicker
              Left = 134
              Top = 86
              Width = 145
              Height = 23
              Hint = ''
              DataField = 'data'
              DataSource = dsCad
              DateTime = 42540.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 1
              ParentFont = False
              Font.Height = -13
            end
            object EdCmbConta: TUniDBLookupComboBox
              Tag = 1
              Left = 134
              Top = 48
              Width = 401
              Height = 28
              Hint = ''
              ListField = 'NOME_CONTA'
              ListSource = dsContas
              KeyField = 'ID'
              ListFieldIndex = 0
              DataField = 'CONTA'
              DataSource = dsCad
              ParentFont = False
              Font.Height = -13
              TabOrder = 0
              Color = clWindow
              ForceSelection = False
            end
            object EdCmbTipo: TUniDBComboBox
              Left = 134
              Top = 270
              Width = 121
              Height = 26
              Hint = ''
              DataField = 'tipo'
              DataSource = dsCad
              Style = csDropDownList
              Items.Strings = (
                'Debito'
                'Credito')
              ParentFont = False
              Font.Height = -13
              TabOrder = 6
              ForceSelection = False
            end
            object EdValor: TUniNumberEdit
              Tag = 1
              Left = 134
              Top = 309
              Width = 121
              Height = 23
              Hint = ''
              Alignment = taRightJustify
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 7
              AllowBlank = False
              EmptyText = '0'
              SelectOnFocus = True
              DecimalUseOSDefault = True
            end
            object EdDocumento: TUniDBEdit
              Left = 134
              Top = 123
              Width = 145
              Height = 23
              Hint = ''
              DataField = 'DOCUMENTO'
              DataSource = dsCad
              ParentFont = False
              Font.Height = -13
              TabOrder = 2
            end
            object UniLabel7: TUniLabel
              Left = 20
              Top = 131
              Width = 78
              Height = 16
              Hint = ''
              Caption = 'Documento:'
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Style = [fsBold]
              ParentColor = False
              Color = 3421488
              TabOrder = 17
            end
          end
        end
      end
    end
  end
  inherited UniNativeImageList1: TUniNativeImageList
    Left = 648
    Top = 216
    Images = {
      1100000000000000060A0000006C6F636174653B66613B00000000060B000000
      6465736B746F703B66613B00000000060C000000656E76656C6F70653B66613B
      000000000608000000757365723B66613B00000000060E0000006C696E652D63
      686172743B66613B00000000061000000077696E646F772D636C6F73653B6661
      3B000000000608000000736176653B66613B000000000608000000656469743B
      66613B0000000006070000006375743B66613B00000000060D0000006261722D
      63686172743B66613B00000000060D0000007069652D63686172743B66613B00
      000000060C000000626F6F6B6D61726B3B66613B00000000060C00000063616C
      656E6461723B66613B000000000608000000666565643B66613B00000000060A
      0000007365617263683B66613B000000000609000000696D6167653B66613B00
      0000000609000000696E626F783B66613B}
  end
  inherited FDQryCad: TRESTDWClientSQL
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM MOVIMENTO_CONTAS WHERE ID=:ID')
    UpdateTableName = 'MOVIMENTO_CONTAS'
    ReflectChanges = False
    object FDQryCadID: TIntegerField
      FieldName = 'ID'
      KeyFields = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryCadEMPRESA_FK: TIntegerField
      FieldName = 'EMPRESA_FK'
    end
    object FDQryCadDATA: TDateField
      FieldName = 'DATA'
    end
    object FDQryCadCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object FDQryCadCONTA_PLANO: TIntegerField
      FieldName = 'CONTA_PLANO'
      Required = True
    end
    object FDQryCadCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
    end
    object FDQryCadREFERENTE: TStringField
      FieldName = 'REFERENTE'
      Size = 200
    end
    object FDQryCadDEBITO: TFloatField
      FieldName = 'DEBITO'
    end
    object FDQryCadCREDITO: TFloatField
      FieldName = 'CREDITO'
    end
    object FDQryCadDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
    end
    object FDQryCadTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object FDQryCadDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object FDQryCadUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 10
    end
    object FDQryCadORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 10
    end
  end
  inherited FDQryFiltro: TRESTDWClientSQL
    SQL.Strings = (
      'SELECT *  FROM MOVIMENTO_CONTAS ORDER BY ID,DATA,CONTA')
    object FDQryFiltroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroEMPRESA_FK: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA_FK'
    end
    object FDQryFiltroDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object FDQryFiltroCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Required = True
    end
    object FDQryFiltroCONTA_PLANO: TIntegerField
      DisplayLabel = 'Conta_Plano'
      FieldName = 'CONTA_PLANO'
      Required = True
    end
    object FDQryFiltroCENTRO_CUSTO: TIntegerField
      DisplayLabel = 'Centro Custo'
      FieldName = 'CENTRO_CUSTO'
    end
    object FDQryFiltroREFERENTE: TStringField
      DisplayLabel = 'Refer'#234'nte'
      FieldName = 'REFERENTE'
      Size = 200
    end
    object FDQryFiltroDEBITO: TFloatField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'DEBITO'
      DisplayFormat = '#,###,##0.00'
      currency = True
    end
    object FDQryFiltroCREDITO: TFloatField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CREDITO'
      DisplayFormat = '#,###,##0.00'
      currency = True
    end
    object FDQryFiltroDATA_MOVIMENTO: TDateField
      DisplayLabel = 'Data Movimento'
      FieldName = 'DATA_MOVIMENTO'
    end
    object FDQryFiltroTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 1
    end
    object FDQryFiltroDOCUMENTO: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
    end
    object FDQryFiltroUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Size = 10
    end
    object FDQryFiltroORIGEM: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Size = 10
    end
  end
  object FDQryContas: TRESTDWClientSQL
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
    Params = <>
    DataBase = UniMainModule.Conexao
    SQL.Strings = (
      'SELECT * FROM CONTAS ')
    UpdateTableName = 'CONTAS'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 348
    Top = 426
    object FDQryContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object FDQryContasNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 100
    end
    object FDQryContasSALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
    end
    object FDQryContasSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object FDQryContasBANCO_FK: TIntegerField
      FieldName = 'BANCO_FK'
    end
  end
  object dsContas: TDataSource
    DataSet = FDQryContas
    Left = 420
    Top = 426
  end
  object FDQryAtualizaSaldoConta: TRESTDWClientSQL
    Active = True
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
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.Conexao
    SQL.Strings = (
      'SELECT * FROM CONTAS WHERE ID=:ID')
    UpdateTableName = 'CONTAS'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 348
    Top = 338
    object FDQryAtualizaSaldoContaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object FDQryAtualizaSaldoContaNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 100
    end
    object FDQryAtualizaSaldoContaSALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
    end
    object FDQryAtualizaSaldoContaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object FDQryAtualizaSaldoContaBANCO_FK: TIntegerField
      FieldName = 'BANCO_FK'
    end
  end
end
