unit Model.Venda.Receita;

interface

type VendaReceita = class
  private
    FValor: Currency;
    FDescricao: string;
    FCodigoVenda: integer;
    FCodigoReceita: integer;
    procedure SetCodigoReceita(const Value: integer);
    procedure SetCodigoVenda(const Value: integer);
    procedure SetDescricao(const Value: string);
    procedure SetValor(const Value: Currency);
  public
  published
    property CodigoVenda : integer read FCodigoVenda write SetCodigoVenda;
    property CodigoReceita : integer read FCodigoReceita write SetCodigoReceita;
    property Descricao : string read FDescricao write SetDescricao;
    property Valor : Currency read FValor write SetValor;

end;

implementation

{ VendaReceita }

procedure VendaReceita.SetCodigoReceita(const Value: integer);
begin
  FCodigoReceita := Value;
end;

procedure VendaReceita.SetCodigoVenda(const Value: integer);
begin
  FCodigoVenda := Value;
end;

procedure VendaReceita.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure VendaReceita.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

end.
