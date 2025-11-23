object DM_InterBase: TDM_InterBase
  OldCreateOrder = False
  Height = 216
  Width = 329
  object IBDatabase: TIBDatabase
    DatabaseName = 'C:\dev\Linx\DATABASE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = IBTransaction
    ServerType = 'IBServer'
    Left = 56
    Top = 32
  end
  object IBTransaction: TIBTransaction
    DefaultDatabase = IBDatabase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 144
    Top = 32
  end
  object IBQuery: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from CADPRODUTO')
    Left = 224
    Top = 32
  end
end
