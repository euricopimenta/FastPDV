object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 216
  Width = 329
  object IBDatabase1: TIBDatabase
    DatabaseName = 'C:\dev\Linx\DATABASE.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    AllowStreamedConnected = False
    Left = 56
    Top = 32
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = IBDatabase1
    Left = 120
    Top = 32
  end
end
