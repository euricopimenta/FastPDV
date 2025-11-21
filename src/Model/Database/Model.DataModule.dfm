object DM_InterBase: TDM_InterBase
  OldCreateOrder = False
  Height = 216
  Width = 329
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\dev\Linx\DATABASE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 56
    Top = 32
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 144
    Top = 32
  end
  object IBQuery: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from CADPRODUTO')
    Left = 224
    Top = 32
  end
end
