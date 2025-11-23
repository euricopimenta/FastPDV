unit Model.DataModule;

interface

uses
  System.SysUtils, System.Classes, IBX.IBDatabase, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery;

type
  TDM_InterBase = class(TDataModule)
    IBDatabase: TIBDatabase;
    IBTransaction: TIBTransaction;
    IBQuery: TIBQuery;

  private
    { Private declarations }
  public


  end;

var
  DMInterbase : TDM_InterBase;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
