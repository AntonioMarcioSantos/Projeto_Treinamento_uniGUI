inherited FrameCentroCusto: TFrameCentroCusto
  inherited PageCadastro: TUniPageControl
    inherited Tab2: TUniTabSheet
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 126
          ScrollWidth = 665
          object UniDBText1: TUniDBText
            Left = 103
            Top = 49
            Width = 56
            Height = 13
            Hint = ''
            DataField = 'ID'
            DataSource = dsCad
          end
          object UniDBEdit1: TUniDBEdit
            Left = 40
            Top = 104
            Width = 625
            Height = 22
            Hint = ''
            DataField = 'NOME'
            DataSource = dsCad
            TabOrder = 1
          end
          object UniLabel2: TUniLabel
            Left = 40
            Top = 49
            Width = 33
            Height = 13
            Hint = ''
            Caption = 'C'#243'digo'
            TabOrder = 2
          end
          object UniLabel3: TUniLabel
            Left = 40
            Top = 85
            Width = 143
            Height = 13
            Hint = ''
            Caption = 'Descri'#231#227'o do Centro de Custo'
            TabOrder = 3
          end
        end
      end
    end
  end
  inherited FDQryCad: TRESTDWClientSQL
    IndexFieldNames = 'ID'
    SequenceField = 'ID'
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM CENTRO_CUSTO WHERE ID=:ID')
    UpdateTableName = 'CENTRO_CUSTO'
    object FDQryCadID: TIntegerField
      FieldName = 'ID'
      KeyFields = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryCadNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  inherited FDQryFiltro: TRESTDWClientSQL
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *  FROM CENTRO_CUSTO'
      'WHERE NOME LIKE :NOME  || '#39'%'#39'  '
      'ORDER BY NOME')
    UpdateTableName = 'CENTRO_CUSTO'
  end
end
