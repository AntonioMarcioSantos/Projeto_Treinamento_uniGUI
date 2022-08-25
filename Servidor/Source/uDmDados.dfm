object DmDados: TDmDados
  OldCreateOrder = False
  Encoding = esASCII
  QueuedRequest = False
  Height = 440
  Width = 514
  object RESTDWPoolerDB: TRESTDWPoolerDB
    RESTDriver = RESTDWDriverFD2
    Compression = True
    Encoding = esASCII
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    Active = True
    PoolerOffMessage = 'RESTPooler not active.'
    ParamCreate = True
    Left = 92
    Top = 175
  end
  object FireDacCon: TFDConnection
    Params.Strings = (
      'Database=E:\ProjetosWEB\Caixa\DB\BANCO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    FormatOptions.AssignedValues = [fvMapRules, fvRound2Scale, fvFmtDisplayDateTime, fvFmtDisplayDate, fvFmtDisplayNumeric]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideString
        TargetDataType = dtAnsiString
      end>
    FormatOptions.FmtDisplayDateTime = 'dd/mm/yyyy'
    FormatOptions.FmtDisplayDate = 'dd/mm/yyyy'
    LoginPrompt = False
    Left = 160
    Top = 72
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 256
    Top = 270
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 384
    Top = 272
  end
  object RESTDWDriverFD1: TRESTDWDriverFD
    CommitRecords = 100
    Left = 56
    Top = 72
  end
  object RESTDWDriverFD2: TRESTDWDriverFD
    CommitRecords = 100
    Connection = FireDacCon
    Left = 216
    Top = 152
  end
end
