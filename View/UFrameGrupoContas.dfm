inherited FrameGrupoContas: TFrameGrupoContas
  ClientEvents.Enabled = False
  inherited PageCadastro: TUniPageControl
    inherited Tab1: TUniTabSheet
      inherited UniPnlPesquisar: TUniPanel
        inherited EdPesquisar: TUniEdit
          Width = 743
          ExplicitWidth = 743
        end
      end
      inherited UniDBGrid1: TUniDBGrid
        Columns = <
          item
            FieldName = 'ID'
            Title.Caption = 'ID'
            Width = 64
          end
          item
            FieldName = 'NOME_GRUPO'
            Title.Caption = 'NOME_GRUPO'
            Width = 536
          end
          item
            FieldName = 'TIPO'
            Title.Caption = 'TIPO'
            Width = 68
          end>
      end
    end
    inherited Tab2: TUniTabSheet
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 225
          ScrollWidth = 528
          object UniLabel2: TUniLabel
            Left = 25
            Top = 24
            Width = 33
            Height = 13
            Hint = ''
            Caption = 'C'#243'digo'
            TabOrder = 0
          end
          object UniDBText1: TUniDBText
            Left = 75
            Top = 24
            Width = 56
            Height = 13
            Hint = ''
            DataField = 'ID'
            DataSource = dsFiltro
          end
          object UniLabel4: TUniLabel
            Left = 25
            Top = 62
            Width = 74
            Height = 13
            Hint = ''
            Caption = 'Nome do Grupo'
            TabOrder = 2
          end
          object UniDBEdit2: TUniDBEdit
            Tag = 1
            Left = 25
            Top = 80
            Width = 503
            Height = 22
            Hint = ''
            DataField = 'NOME_GRUPO'
            DataSource = dsCad
            TabOrder = 3
          end
          object UniDBRadioGroup1: TUniDBRadioGroup
            Left = 25
            Top = 120
            Width = 368
            Height = 105
            Hint = ''
            DataField = 'TIPO'
            DataSource = dsCad
            Caption = 'Tipo do Grupo'
            TabOrder = 4
            Items.Strings = (
              'Receitas'
              'Despesas'
              'Investimentos'
              'Outros')
            Columns = 3
            Values.Strings = (
              'R'
              'D'
              'I'
              'O')
          end
        end
      end
    end
  end
  inherited UniNativeImageList1: TUniNativeImageList
    Left = 656
  end
  inherited FDQryCad: TRESTDWClientSQL
    SequenceField = 'ID'
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM GRUPO_CONTAS WHERE ID=:ID')
    UpdateTableName = 'GRUPO_CONTAS'
    object FDQryCadID: TIntegerField
      FieldName = 'ID'
      KeyFields = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryCadNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 100
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
        Name = 'NOME_GRUPO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM GRUPO_CONTAS'
      'WHERE NOME_GRUPO LIKE :NOME_GRUPO   || '#39'%'#39
      'ORDER BY NOME_GRUPO')
    UpdateTableName = 'GRUPO_CONTAS'
    object FDQryFiltroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryFiltroNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 100
    end
    object FDQryFiltroTIPO: TStringField
      Tag = 1
      FieldName = 'TIPO'
      Size = 1
    end
  end
end
