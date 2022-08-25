inherited FrameBancos: TFrameBancos
  Width = 906
  ExplicitWidth = 906
  inherited PnlCrud: TUniPanel
    Width = 906
    ExplicitWidth = 906
  end
  inherited PageCadastro: TUniPageControl
    Width = 906
    ExplicitWidth = 906
    inherited Tab1: TUniTabSheet
      ExplicitWidth = 898
      inherited UniPnlPesquisar: TUniPanel
        Width = 898
        ExplicitWidth = 898
        inherited EdPesquisar: TUniEdit
          Width = 727
          SelectOnFocus = True
          ExplicitWidth = 727
        end
        inherited BtFiltrar: TUniBitBtn
          Left = 767
          ExplicitLeft = 767
        end
      end
      inherited UniDBGrid1: TUniDBGrid
        Width = 898
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        Columns = <
          item
            FieldName = 'ID'
            Title.Caption = 'ID'
            Width = 50
          end
          item
            FieldName = 'SIGLA_FENABAN'
            Title.Caption = 'SIGLA_FENABAN'
            Width = 88
          end
          item
            FieldName = 'NOME_BANCO'
            Title.Caption = 'NOME_BANCO'
            Width = 1204
          end>
      end
    end
    inherited Tab2: TUniTabSheet
      ExplicitWidth = 898
      inherited UniPanel1: TUniPanel
        Width = 898
        ExplicitWidth = 898
        inherited UniScrollBox1: TUniScrollBox
          Width = 898
          ExplicitWidth = 898
          ScrollHeight = 166
          ScrollWidth = 536
          object UniDBEdit2: TUniDBEdit
            Tag = 1
            Left = 25
            Top = 144
            Width = 511
            Height = 22
            Hint = ''
            DataField = 'NOME_BANCO'
            DataSource = dsCad
            TabOrder = 0
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  sender.inpu' +
                'tCls='#39'CorPadraoBotao'#39' ;'#13#10'}')
          end
          object UniLabel4: TUniLabel
            Left = 25
            Top = 126
            Width = 74
            Height = 13
            Hint = ''
            Caption = 'Nome do Banco'
            TabOrder = 1
          end
          object UniDBEdit1: TUniDBEdit
            Left = 27
            Top = 88
            Width = 72
            Height = 22
            Hint = ''
            DataField = 'SIGLA_FENABAN'
            DataSource = dsCad
            TabOrder = 2
          end
          object UniLabel3: TUniLabel
            Left = 25
            Top = 67
            Width = 67
            Height = 13
            Hint = ''
            Caption = 'Sigla Fenaban'
            ParentFont = False
            TabOrder = 3
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
          object UniLabel2: TUniLabel
            Left = 25
            Top = 24
            Width = 33
            Height = 13
            Hint = ''
            Caption = 'C'#243'digo'
            TabOrder = 5
          end
        end
      end
    end
  end
  inherited UniContainerPanel2: TUniContainerPanel
    Width = 906
    ExplicitWidth = 906
  end
  inherited UniNativeImageList1: TUniNativeImageList
    Left = 760
    Top = 208
  end
  inherited FDQryCad: TRESTDWClientSQL
    UpdateOptions.UpdateTableName = 'BANCOS'
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM BANCOS WHERE ID=:ID')
    UpdateTableName = 'BANCOS'
    object FDQryCadID: TIntegerField
      FieldName = 'ID'
      KeyFields = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryCadSIGLA_FENABAN: TStringField
      FieldName = 'SIGLA_FENABAN'
      Size = 5
    end
    object FDQryCadNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 200
    end
  end
  inherited FDQryFiltro: TRESTDWClientSQL
    Params = <
      item
        DataType = ftString
        Name = 'NOME_BANCO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM BANCOS'
      'WHERE NOME_BANCO LIKE :NOME_BANCO   || '#39'%'#39
      'ORDER BY NOME_BANCO')
    UpdateTableName = 'BANCOS'
    object FDQryFiltroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroSIGLA_FENABAN: TStringField
      FieldName = 'SIGLA_FENABAN'
      Size = 5
    end
    object FDQryFiltroNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 200
    end
  end
end
