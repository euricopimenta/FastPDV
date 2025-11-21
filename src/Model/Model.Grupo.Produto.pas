unit Model.Grupo.Produto;

interface

type TGrupoProduto = class
  private
    FCodigo: integer;
    FDescricao: string;
    procedure SetCodigo(const Value: integer);
    procedure SetDescricao(const Value: string);
  public
  published
    property Codigo : integer read FCodigo write SetCodigo;
    property Descricao : string read FDescricao write SetDescricao;
end;


implementation

{ TGrupoProduto }

procedure TGrupoProduto.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TGrupoProduto.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

end.
