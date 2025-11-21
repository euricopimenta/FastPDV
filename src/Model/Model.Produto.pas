unit Model.Produto;

interface
uses
  Model.DataModule;

type TProduto = class
  private
    FCodigo: Integer;
    FValor: Currency;
    FCodigoGrupo: Integer;
    FDescricao: String;
    procedure SetCodigo(const Value: Integer);
    procedure SetCodigoGrupo(const Value: Integer);
    procedure SetDescricao(const Value: String);
    procedure SetValor(const Value: Currency);

  public


  published
    property Codigo : Integer read FCodigo write SetCodigo;
    property Descricao : String read FDescricao write SetDescricao;
    property CodigoGrupo : Integer read FCodigoGrupo write SetCodigoGrupo;
    property Valor : Currency read FValor write SetValor;


end;
implementation



{ TProduto }


procedure TProduto.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TProduto.SetCodigoGrupo(const Value: Integer);
begin
  FCodigoGrupo := Value;
end;

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TProduto.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

end.
