unit Model.Venda.Item;

interface

type TVendaItem = class
  private
    FValor: Currency;
    FDescricaoProduto: String;
    FCodigoProduto: Integer;
    FValorSubtotal: Currency;
    FQuantidade: Integer;
  public
  published
    property CodigoProduto: Integer read FCodigoProduto write FCodigoProduto;
    property DescricaoProduto: String read FDescricaoProduto write FDescricaoProduto;
    property Valor: Currency read FValor write FValor;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property ValorSubtotal: Currency read FValorSubtotal;

end;

implementation

end.
