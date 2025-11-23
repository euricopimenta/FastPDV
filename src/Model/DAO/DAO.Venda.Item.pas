unit DAO.Venda.Item;

interface
uses
  Model.Datamodule,
  Model.Venda.Item,
  IBX.IBDatabase,
  IBX.IBQuery;

type TDAOVendaItem = class
  private
  public
    procedure Inserir(Item: TVendaItem);

end;

implementation

procedure TDAOVendaItem.Inserir(Item: TVendaItem);
var
  LQry: TIBQuery;
begin
  LQry := TIBQuery.Create(nil);
  try
    LQry.Database := Model.Datamodule.DMInterbase.IBDatabase;
    LQry.Transaction := Model.Datamodule.DMInterbase.IBTransaction;

    LQry.SQL.Text :=
      'INSERT INTO VENDAITENS ' +
      '(CODIGO_VENDA, CODIGO_PRODUTO, QTDE, VALOR, VALOR_SUBTOTAL) ' +
      'VALUES (:CODVENDA, :CODPRODUTO, :QTD, :VALOR, :TOTAL)';

    LQry.ParamByName('CODVENDA').AsInteger := Item.CodigoVenda;
    LQry.ParamByName('CODPRODUTO').AsInteger := Item.CodigoProduto;
    LQry.ParamByName('QTD').AsFloat := Item.Quantidade;
    LQry.ParamByName('VALOR').AsCurrency := Item.Valor;
    LQry.ParamByName('TOTAL').AsCurrency := Item.TotalItem;

    LQry.ExecSQL;

    Model.Datamodule.DMInterbase.IBTransaction.Commit;
  finally
    LQry.Free;
  end;
end;


end.
