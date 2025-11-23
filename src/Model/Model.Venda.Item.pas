unit Model.Venda.Item;

interface

type TVendaItem = class
  private
    FTotalItem: Currency;
    FValor: Currency;
    FCodigoProduto: Integer;
    FCodigoVenda: Integer;
    FQuantidade: Double;
    procedure SetCodigoProduto(const Value: Integer);
    procedure SetCodigoVenda(const Value: Integer);
    procedure SetCTotalItem(const Value: Currency);
    procedure SetQuantidade(const Value: Double);
    procedure SetValor(const Value: Currency);

  public
  published
    property CodigoVenda: Integer read FCodigoVenda write SetCodigoVenda;
    property CodigoProduto: Integer read FCodigoProduto write SetCodigoProduto;
    property Quantidade: Double read FQuantidade write SetQuantidade;
    property Valor: Currency read FValor write SetValor;
    property TotalItem: Currency read FTotalItem write SetCTotalItem;

end;

implementation

{ TVendaItem }

procedure TVendaItem.SetCodigoProduto(const Value: Integer);
begin
  FCodigoProduto := Value;
end;

procedure TVendaItem.SetCodigoVenda(const Value: Integer);
begin
  FCodigoVenda := Value;
end;

procedure TVendaItem.SetCTotalItem(const Value: Currency);
begin
  FTotalItem := Value;
end;

procedure TVendaItem.SetQuantidade(const Value: Double);
begin
  FQuantidade := Value;
end;

procedure TVendaItem.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

end.
