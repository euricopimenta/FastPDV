unit Model.DataModule;

interface

uses
  System.SysUtils, System.Classes, IBX.IBDatabase, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery;

type
  TDM_InterBase = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQuery: TIBQuery;

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  DM_InterBase: TDM_InterBase;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
