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
    destructor Destroy ; Override;

end;


implementation

uses
  Data.DB;

{ TControllerProduto }

function TControllerProduto.BuscarTodos: TClientDataSet;
var
  Lista: TList<TProduto>;
  Produto: TProduto;
  VirtualDataSet: TClientDataSet;
begin
  Lista := FDAO.BuscarTodos;

  VirtualDataSet := TClientDataSet.Create(nil);
  VirtualDataSet.FieldDefs.Add('Codigo', ftInteger);
  VirtualDataSet.FieldDefs.Add('Descricao', ftString, 40);
  VirtualDataSet.FieldDefs.Add('Valor', ftFloat);
  VirtualDataSet.CreateDataSet;

  for Produto in Lista do
  begin
    VirtualDataSet.Append;
    VirtualDataSet.FieldByName('Codigo').AsInteger := Produto.Codigo;
    VirtualDataSet.FieldByName('Descricao').AsString := Produto.Descricao;
    VirtualDataSet.FieldByName('Valor').AsFloat := Produto.Valor;
    VirtualDataSet.Post;
  end;

  Result := VirtualDataSet;

end;

constructor TControllerProduto.Create;
begin
  FDAO := TDAOProduto.Create;
end;

destructor TControllerProduto.Destroy;
begin
   FDAO.Free;
  inherited;
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
