object DmRelatorio: TDmRelatorio
  OldCreateOrder = False
  Height = 505
  Width = 586
  object frxRepFechamento: TfrxReport
    Version = '6.9.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43610.133142916700000000
    ReportOptions.LastChange = 43610.487950729170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 344
    Top = 248
    Datasets = <
      item
        DataSet = frxDBDatasetRecDesp
        DataSetName = 'frxDBDatasetRecDesp'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 45.354360000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[NOME_EMPRESA]')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 64.252010000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#233'riodo:')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 64.252010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAINI]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 64.252010000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAFIM]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 64.252010000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #224)
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 41.015770000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = -3.779530000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Receitas e Despesas')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779529999999994000
          Width = 714.330706220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 58.645640000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 674.709030000000000000
          Width = 35.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 66.409400000000000000
          Top = 0.779529999999994100
          Width = 447.967744360000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome da Conta Plano')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 530.274794360000000000
          Width = 62.300521170000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'D'#233'bito')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 600.134375540000000000
          Width = 68.841970680000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cr'#233'dito')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetRecDesp
        DataSetName = 'frxDBDatasetRecDesp'
        RowCount = 0
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 2.000000000000000000
          Width = 62.425170000000000000
          Height = 18.897650000000000000
          DataField = 'CONTA_PLANO'
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRecDesp."CONTA_PLANO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 678.488560000000000000
          Top = 2.000000000000000000
          Width = 35.000000000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRecDesp."TIPO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 67.188930000000000000
          Top = 2.000000000000000000
          Width = 447.967744360000000000
          Height = 18.897650000000000000
          DataField = 'NOME_CONTA'
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRecDesp."NOME_CONTA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 492.479494360000000000
          Top = 2.000000000000000000
          Width = 92.536761170000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetRecDesp."DEBITO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 588.795785540000000000
          Top = 2.000000000000000000
          Width = 80.180560680000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetRecDesp."CREDITO"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 1.000000000000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object frxDBDatasetRecDespDEBITO: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetRecDesp."DEBITO">,MasterData1)]')
          ParentFont = False
        end
        object frxDBDatasetRecDespCREDITO: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetRecDesp."CREDITO">,MasterData1)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 7.559059999999988000
          Width = 207.874150000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBDatasetMovimentoCaixa: TfrxDBDataset
    UserName = 'frxDBDatasetMov'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'EMPRESA_FK=EMPRESA_FK'
      'DATA=DATA'
      'CONTA=CONTA'
      'CONTA_PLANO=CONTA_PLANO'
      'CENTRO_CUSTO=CENTRO_CUSTO'
      'REFERENTE=REFERENTE'
      'DEBITO=DEBITO'
      'CREDITO=CREDITO'
      'DATA_MOVIMENTO=DATA_MOVIMENTO'
      'TIPO=TIPO'
      'DOCUMENTO=DOCUMENTO'
      'USUARIO=USUARIO'
      'ORIGEM=ORIGEM'
      'NOME_CONTA=NOME_CONTA'
      'NOME_CONTA_PLANO=NOME_CONTA_PLANO')
    OpenDataSource = False
    DataSet = QryMovimento_Caixa
    BCDToCurrency = False
    Left = 304
    Top = 40
  end
  object frxPDFExport1: TfrxPDFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = False
    OverwritePrompt = False
    CreationTime = 43586.801253217590000000
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = True
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 456
    Top = 112
  end
  object frxReport_que_tava: TfrxReport
    Version = '6.9.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43610.133142916700000000
    ReportOptions.LastChange = 43610.202604247690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 224
    Top = 368
    Datasets = <
      item
        DataSet = frxDBDatasetRecDesp
        DataSetName = 'frxDBDatasetRecDesp'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 45.354360000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[NOME_EMPRESA]')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 64.252010000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#233'riodo:')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 64.252010000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAINI]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 64.252010000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAFIM]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 64.252010000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #224)
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 714.330706220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 58.645640000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 674.709030000000000000
          Width = 35.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 66.409400000000000000
          Top = 0.779530000000000000
          Width = 447.967744360000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome da Conta Plano')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 530.274794360000000000
          Width = 62.300521170000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'D'#233'bito')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 600.134375540000000000
          Width = 68.841970680000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cr'#233'dito')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetRecDesp
        DataSetName = 'frxDBDatasetRecDesp'
        RowCount = 0
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 2.000000000000000000
          Width = 62.425170000000000000
          Height = 18.897650000000000000
          DataField = 'CONTA_PLANO'
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRecDesp."CONTA_PLANO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 678.488560000000000000
          Top = 2.000000000000000000
          Width = 35.000000000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRecDesp."TIPO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 67.188930000000000000
          Top = 2.000000000000000000
          Width = 447.967744360000000000
          Height = 18.897650000000000000
          DataField = 'NOME_CONTA'
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRecDesp."NOME_CONTA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 492.479494360000000000
          Top = 2.000000000000000000
          Width = 92.536761170000000000
          Height = 18.897650000000000000
          DataField = 'DEBITO'
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetRecDesp."DEBITO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 588.795785540000000000
          Top = 2.000000000000000000
          Width = 80.180560680000000000
          Height = 18.897650000000000000
          DataField = 'CREDITO'
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetRecDesp."CREDITO"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 1.000000000000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object frxDBDatasetRecDespDEBITO: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetRecDesp."DEBITO">,MasterData1)]')
          ParentFont = False
        end
        object frxDBDatasetRecDespCREDITO: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetRecDesp
          DataSetName = 'frxDBDatasetRecDesp'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetRecDesp."CREDITO">,MasterData1)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 7.559060000000000000
          Width = 207.874150000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Memo1: TfrxMemoView
        Align = baWidth
        AllowVectorExport = True
        Top = 15.118120000000000000
        Width = 718.110700000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
        HAlign = haCenter
        Memo.UTF8W = (
          'Relat'#243'rio de Receitas e Despesas')
        ParentFont = False
        Style = 'Title'
        VAlign = vaCenter
      end
    end
  end
  object frxDBDatasetMontaTotais: TfrxDBDataset
    UserName = 'frxDBDatasetMontaTotais'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CONTA=CONTA'
      'DEBITO=DEBITO'
      'CREDITO=CREDITO'
      'SALDO=SALDO')
    OpenDataSource = False
    DataSet = QryMontaTotais
    BCDToCurrency = False
    Left = 304
    Top = 104
  end
  object QryMovimento_Caixa: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    IndexesActive = False
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    BinaryCompatibleMode = False
    MasterCascadeDelete = True
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <
      item
        DataType = ftDateTime
        Name = 'DTINI'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTFIM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      ' SELECT '
      
        '    m.*,c.nome_conta as Nome_Conta, p.nome_conta as Nome_Conta_P' +
        'lano'
      ' FROM  '
      '    MOVIMENTO_CONTAS   AS m'
      ' INNER JOIN contas       AS c ON  m.conta       = c.id'
      ' INNER JOIN plano_contas AS p ON  m.conta_plano = p.id'
      ' WHERE '
      '    m.data BETWEEN  :DTINI AND :DTFIM   AND m.conta =:CONTA')
    UpdateTableName = 'MOVIMENTO_CONTAS'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 80
    Top = 40
    object QryMovimento_CaixaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMovimento_CaixaEMPRESA_FK: TIntegerField
      FieldName = 'EMPRESA_FK'
    end
    object QryMovimento_CaixaDATA: TDateField
      FieldName = 'DATA'
    end
    object QryMovimento_CaixaCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object QryMovimento_CaixaCONTA_PLANO: TIntegerField
      FieldName = 'CONTA_PLANO'
      Required = True
    end
    object QryMovimento_CaixaCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
    end
    object QryMovimento_CaixaREFERENTE: TStringField
      FieldName = 'REFERENTE'
      Size = 200
    end
    object QryMovimento_CaixaDEBITO: TFloatField
      FieldName = 'DEBITO'
    end
    object QryMovimento_CaixaCREDITO: TFloatField
      FieldName = 'CREDITO'
    end
    object QryMovimento_CaixaDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
    end
    object QryMovimento_CaixaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object QryMovimento_CaixaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object QryMovimento_CaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 10
    end
    object QryMovimento_CaixaORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 10
    end
    object QryMovimento_CaixaNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 100
    end
    object QryMovimento_CaixaNOME_CONTA_PLANO: TStringField
      FieldName = 'NOME_CONTA_PLANO'
      Size = 150
    end
  end
  object QryContas: TRESTDWClientSQL
    Active = False
    Filtered = False
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
    BinaryCompatibleMode = False
    MasterCascadeDelete = True
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CONTAS ORDER BY NOME_CONTA')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 76
    Top = 177
    object QryContasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryContasNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 100
    end
    object QryContasSALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
    end
    object QryContasSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object QryContasBANCO_FK: TIntegerField
      FieldName = 'BANCO_FK'
    end
  end
  object QryMontaTotais: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'CONTA'
        DataType = ftInteger
      end
      item
        Name = 'DEBITO'
        DataType = ftFloat
        Precision = 18
      end
      item
        Name = 'CREDITO'
        DataType = ftFloat
        Precision = 18
      end
      item
        Name = 'SALDO'
        DataType = ftFloat
        Precision = 18
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    BinaryCompatibleMode = False
    MasterCascadeDelete = True
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <
      item
        DataType = ftString
        Name = 'DTINI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DTFIM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT conta,'
      
        '       sum(case when tipo='#39'D'#39' then DEBITO else  0 end) as debito' +
        ','
      
        '       sum(case when tipo='#39'C'#39' then CREDITO else 0 end) as credit' +
        'o,'
      
        '      (sum(case when tipo='#39'C'#39' then CREDITO else 0 end)-sum(case ' +
        'when tipo='#39'D'#39' then DEBITO else 0 end)) as saldo'
      'FROM movimento_contas  a'
      'WHERE a.data BETWEEN  :DTINI AND :DTFIM  AND a.conta =:CONTA'
      'GROUP BY conta')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 76
    Top = 113
    object QryMontaTotaisCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object QryMontaTotaisDEBITO: TFloatField
      FieldName = 'DEBITO'
    end
    object QryMontaTotaisCREDITO: TFloatField
      FieldName = 'CREDITO'
    end
    object QryMontaTotaisSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object QryRecDesp: TRESTDWClientSQL
    Active = False
    Filtered = False
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
    BinaryCompatibleMode = False
    MasterCascadeDelete = True
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <
      item
        DataType = ftDateTime
        Name = 'DTINI'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTFIM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '        select mov.CONTA_PLANO,'
      '               mov.tipo ,'
      '               plano.nome_conta ,'
      
        '               SUM(mov.DEBITO) AS DEBITO,SUM(mov.CREDITO) AS CRE' +
        'DITO'
      '        from MOVIMENTO_CONTAS as mov'
      
        '           INNER JOIN plano_contas AS plano ON  mov.conta_plano ' +
        '= plano.id'
      '        WHERE '
      
        '           mov.data BETWEEN  :DTINI AND :DTFIM   AND mov.conta =' +
        ':CONTA'
      '           GROUP BY 1,2,3 ORDER BY 3 desc ,5 DESC')
    UpdateTableName = 'MOVIMENTO_CONTAS'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 72
    Top = 296
    object QryRecDespCONTA_PLANO: TIntegerField
      FieldName = 'CONTA_PLANO'
      Required = True
    end
    object QryRecDespTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object QryRecDespNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 150
    end
    object QryRecDespDEBITO: TFloatField
      FieldName = 'DEBITO'
    end
    object QryRecDespCREDITO: TFloatField
      FieldName = 'CREDITO'
    end
  end
  object frxDBDatasetRecDesp: TfrxDBDataset
    UserName = 'frxDBDatasetRecDesp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CONTA_PLANO=CONTA_PLANO'
      'TIPO=TIPO'
      'NOME_CONTA=NOME_CONTA'
      'DEBITO=DEBITO'
      'CREDITO=CREDITO')
    DataSet = QryRecDesp
    BCDToCurrency = False
    Left = 192
    Top = 296
  end
  object frxReport1: TfrxReport
    Version = '6.9.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42570.010037488400000000
    ReportOptions.LastChange = 43587.786194120400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <FrxDBDatasetMov."Tipo"> = '#39'D'#39' then'
      '      begin'
      '        MemoDebito.Font.Color := clRed ;'
      '        MemoTipo.Font.Color   := clRed ;'
      '      end'
      '  else'
      '      begin'
      '        MemoCredito.Font.Color:= clBlack ;'
      '        MemoTipo.Font.Color   := clBlack ;'
      '      end;'
      'end;'
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 456
    Top = 40
    Datasets = <
      item
        DataSet = frxDBDatasetMovimentoCaixa
        DataSetName = 'frxDBDatasetMov'
      end
      item
        DataSet = frxDBDatasetMontaTotais
        DataSetName = 'frxDBDatasetMontaTotais'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 52.913420000000000000
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Fechamento do Caixa')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 899.528140000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 823.937540000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data/Hora:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Width = 555.590910000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Frame.Typ = []
          FillType = ftGradient
          Fill.EndColor = clGray
          Fill.GradientStyle = gsHorizCenter
          HAlign = haCenter
          Highlight.ApplyFont = False
          Highlight.ApplyFill = False
          Highlight.Font.Charset = ANSI_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -19
          Highlight.Font.Name = 'Corbel'
          Highlight.Font.Style = []
          Highlight.Condition = 'Value = 0'
          Highlight.FillType = ftGradient
          Highlight.Fill.EndColor = 16629143
          Highlight.Fill.GradientStyle = gsHorizontal
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            'Ger'#234'nciador Financeiro')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 33.236240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Periodo.:')
          ParentFont = False
        end
        object frxDBDataset1Nome_Empresa: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetMovimentoCaixa
          DataSetName = 'frxDBDatasetMov'
          Frame.Typ = []
          Memo.UTF8W = (
            '[NOME_EMPRESA]')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 88.267780000000000000
          Top = 33.236240000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATAINI]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 243.228510000000000000
          Top = 33.236240000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATAFIM]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 208.771800000000000000
          Top = 33.236240000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #224)
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 120.944960000000000000
        Width = 1046.929810000000000000
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 0.101623670000000000
          Width = 1043.878009140000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 12.000000000000000000
          Width = 37.896923670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 362.391462280000000000
          Width = 128.957981690000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Referente')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 117.175973970000000000
          Width = 170.067842250000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Plano de Contas')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 988.250152280000000000
          Width = 43.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 869.291900000000000000
          Width = 99.231249470000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cr'#233'dito')
          ParentFont = False
          Style = 'Header'
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 755.906000000000000000
          Width = 99.231249470000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#233'bito')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 27.968506380000000000
        Top = 260.787570000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDatasetMovimentoCaixa
        DataSetName = 'frxDBDatasetMov'
        RowCount = 0
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Width = 1043.943102280000000000
          Height = 23.811023620000000000
          Frame.Typ = []
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 128.514563970000000000
          Top = 1.000000000000000000
          Width = 234.319852250000000000
          Height = 18.897650000000000000
          DataField = 'NOME_CONTA_PLANO'
          DataSet = frxDBDatasetMovimentoCaixa
          DataSetName = 'frxDBDatasetMov'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetMov."NOME_CONTA_PLANO"]')
          ParentFont = False
          Style = 'Data'
        end
        object frxDBDataset1conta_plano: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 1.000000000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CONTA_PLANO'
          DataSet = frxDBDatasetMovimentoCaixa
          DataSetName = 'frxDBDatasetMov'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetMov."CONTA_PLANO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 362.936503670000000000
          Top = 1.000000000000000000
          Width = 331.582167030000000000
          Height = 18.897650000000000000
          DataField = 'REFERENTE'
          DataSet = frxDBDatasetMovimentoCaixa
          DataSetName = 'frxDBDatasetMov'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetMov."REFERENTE"]')
          ParentFont = False
          Style = 'Data'
        end
        object MemoDebito: TfrxMemoView
          AllowVectorExport = True
          Left = 745.058172810000000000
          Top = 1.779530000000022000
          Width = 95.451719470000000000
          Height = 18.897650000000000000
          DataField = 'DEBITO'
          DataSet = frxDBDatasetMovimentoCaixa
          DataSetName = 'frxDBDatasetMov'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetMov."DEBITO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 79.590600000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779530000000000000
          Top = 0.779530000000022500
          Width = 75.692223670000000000
          Height = 18.897650000000000000
          DataField = 'DATA'
          DataSet = frxDBDatasetMovimentoCaixa
          DataSetName = 'frxDBDatasetMov'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetMov."DATA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 868.173780000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object memoCredito: TfrxMemoView
          AllowVectorExport = True
          Left = 869.291900000000000000
          Top = 1.000000000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetMovimentoCaixa
          DataSetName = 'frxDBDatasetMov'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetMov."CREDITO"]')
          ParentFont = False
        end
        object MemoTIPO: TfrxMemoView
          AllowVectorExport = True
          Left = 982.677800000000000000
          Top = 2.779530000000022000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = frxDBDatasetMovimentoCaixa
          DataSetName = 'frxDBDatasetMov'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetMov."TIPO"]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 755.906000000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 23.677180000000000000
        Top = 525.354670000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo20: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339210000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 207.874150000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDatasetMov."CONTA"'
        KeepTogether = True
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 548.031850000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object frxDBDatasetMovCONTA: TfrxMemoView
          AllowVectorExport = True
          Left = 82.559060000000000000
          Top = 4.000000000000028000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CONTA'
          DataSet = frxDBDatasetMovimentoCaixa
          DataSetName = 'frxDBDatasetMov'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetMov."CONTA"]')
          ParentFont = False
        end
        object frxDBDatasetMovNOME_CONTA: TfrxMemoView
          AllowVectorExport = True
          Left = 142.252010000000000000
          Top = 4.000000000000028000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_CONTA'
          DataSet = frxDBDatasetMovimentoCaixa
          DataSetName = 'frxDBDatasetMov'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetMov."NOME_CONTA"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 24.236240000000000000
          Top = 3.779529999999994000
          Width = 53.015043670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Conta:')
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 154.960730000000000000
        Top = 309.921460000000000000
        Width = 1046.929810000000000000
        object Gradient1: TfrxGradientView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 102.047310000000000000
          Width = 362.834880000000000000
          Height = 30.236240000000000000
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Typ = []
          Color = 14741216
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 31.118119999999970000
          Width = 374.173470000000000000
          Height = 102.047310000000000000
          Frame.Typ = []
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 692.063390000000000000
          Top = 39.897650000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Cr'#233'dito')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 692.063390000000000000
          Top = 73.913419999999970000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de D'#233'bito')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 692.063390000000000000
          Top = 106.929190000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total do Saldo:')
          ParentFont = False
        end
        object frxDBDatasetMontaTotaiscredito: TfrxMemoView
          AllowVectorExport = True
          Left = 883.410020000000000000
          Top = 37.031540000000010000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetMontaTotais
          DataSetName = 'frxDBDatasetMontaTotais'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetMontaTotais."credito"]')
          ParentFont = False
        end
        object frxDBDatasetMontaTotaisdebito: TfrxMemoView
          AllowVectorExport = True
          Left = 883.410020000000000000
          Top = 72.047309999999990000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetMontaTotais
          DataSetName = 'frxDBDatasetMontaTotais'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetMontaTotais."debito"]')
          ParentFont = False
        end
        object frxDBDatasetMontaTotaissaldo: TfrxMemoView
          AllowVectorExport = True
          Left = 883.410020000000000000
          Top = 108.842610000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetMontaTotais
          DataSetName = 'frxDBDatasetMontaTotais'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetMontaTotais."saldo"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 821.937540000000000000
          Top = 3.102350000000001000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetMontaTotais
          DataSetName = 'frxDBDatasetMontaTotais'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetMontaTotais."credito"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 703.653990000000000000
          Top = 2.881880000000024000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetMontaTotais
          DataSetName = 'frxDBDatasetMontaTotais'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetMontaTotais."debito"]')
          ParentFont = False
        end
      end
    end
  end
end
