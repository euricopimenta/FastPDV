unit Controller.Produto;

interface
uses
  Model.Produto,
  DAO.Produto,
  System.Generics.Collections,
  Datasnap.DBClient;

type TControllerProduto = class
private
    FDAO: TDAOProduto;
  public
    constructor Create;
    function Listar: TList<TProduto>;
    function Buscar(ACod: Integer): TProduto;
    function BuscarTodos: TClientDataSet;

end;


implementation

uses
  Data.DB;

{ TControllerProduto }

function TControllerProduto.BuscarTodos: TClientDataSet;
var
  Lista: TList<TProduto>;
  Produto: TProduto;
  cds: TClientDataSet;
begin
  Lista := FDAO.BuscarTodos;

  cds := TClientDataSet.Create(nil);
  cds.FieldDefs.Add('Codigo', ftInteger);
  cds.FieldDefs.Add('Descricao', ftString, 100);
  cds.FieldDefs.Add('Valor', ftFloat);
  cds.CreateDataSet;

  for Produto in Lista do
  begin
    cds.Append;
    cds.FieldByName('Codigo').AsInteger := Produto.Codigo;
    cds.FieldByName('Descricao').AsString := Produto.Descricao;
    cds.FieldByName('Valor').AsFloat := Produto.Valor;
    cds.Post;
  end;

  Result := cds;

end;

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
