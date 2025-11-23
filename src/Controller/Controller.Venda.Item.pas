unit Controller.Venda.Item;

interface
uses
  Model.Datamodule,
  DAO.Venda.Item,
  Model.Venda.Item;

type TControllerProduto = class
  private
    FDAO: TDAOVendaItem;
  public
    constructor Create;
    destructor Destroy; override;
    procedure SalvarItem(ACodigoVenda, ACodigoProduto: Integer;
      AQuantidade: Double; AValor, ATotalItem: Currency);
end;

implementation

{ TControllerProduto }

constructor TControllerProduto.Create;
begin
  FDAO := TDAOVendaItem.Create;
end;

procedure TControllerProduto.SalvarItem(ACodigoVenda, ACodigoProduto: Integer;
  AQuantidade: Double; AValor, ATotalItem: Currency);
var
  Item: TVendaItem;
begin
  Item := TVendaItem.Create;
  try
    Item.CodigoVenda := ACodigoVenda;
    Item.CodigoProduto := ACodigoProduto;
    Item.Quantidade := AQuantidade;
    Item.Valor := AValor;
    Item.TotalItem := ATotalItem;

    FDAO.Inserir(Item);
  finally
    Item.Free;
  end;
end;

destructor TControllerProduto.Destroy;
begin
  FDAO.Free;
  inherited;
end;

end.
