unit Controller.Produto;

interface
uses
  Model.Produto,
  DAO.Produto,
  System.Generics.Collections;

type TControllerProduto = class
private
    FDAO: TDAOProduto;
  public
    constructor Create;
    function Listar: TList<TProduto>;
    function Buscar(ACod: Integer): TProduto;
end;


implementation

{ TControllerProduto }

constructor TControllerProduto.Create;
begin
  FDAO := TDAOProduto.Create;
end;

function TControllerProduto.Buscar(ACod: Integer): TProduto;
begin
  Result := FDAO.BuscarPorCodigo(ACod);
end;

function TControllerProduto.Listar: TList<TProduto>;
begin
  Result := FDAO.BuscarTodos;
end;

end.
