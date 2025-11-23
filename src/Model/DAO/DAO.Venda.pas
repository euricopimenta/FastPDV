unit DAO.Venda;

interface
uses
  Model.DataModule,
  Model.Venda.Item,
  Model.Venda,
  System.SysUtils,
  DAO.Venda.Item;

type TDAOVenda = Class
  FDAOItem: TDAOVendaItem;
  private
  Public
    procedure Inserir(Venda: TVenda);

End;

implementation

uses
  IBX.IBQuery;

{ TDAOVenda }

procedure TDAOVenda.Inserir(Venda: TVenda);
var
  LQry: TIBQuery;
begin
  LQry := TIBQuery.Create(nil);
  try
    LQry.Database := Model.Datamodule.DMInterbase.IBDatabase;
    LQry.Transaction := Model.Datamodule.DMInterbase.IBTransaction;
    LQry.SQL.Text :=
      'INSERT INTO VENDA (DATA, VALOR_BRUTO, VALOR_DESCONTO, VALOR_LIQUIDO, CANCELADA) ' +
      'VALUES (:DATA, :VALOR_BRUTO, :DESCONTO, :ACRESCIMO, :CANCELADA) ';

    LQry.ParamByName('DATA').AsDateTime := Venda.Data;
    LQry.ParamByName('VALOR_BRUTO').AsCurrency := Venda.ValorBruto;
    LQry.ParamByName('VALOR_DESCONTO').AsCurrency := Venda.ValorDesconto;
    LQry.ParamByName('VALOR_LIQUIDO').AsCurrency := Venda.ValorLiquido;
    LQry.ParamByName('CANCELADA').AsInteger := Venda.Cancelado;

    LQry.ExecSQL;

    Model.Datamodule.DMInterbase.IBTransaction.Commit;

  finally
    LQry.Free;
  end;
end;

end.
