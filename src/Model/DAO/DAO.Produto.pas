unit DAO.Produto;

interface
  uses
    IBX.IBDatabase,
    IBX.IBQuery,
    Model.Produto,
    Model.DataModule,
    System.Generics.Collections;

  type TDAOProduto = class
    private
      FConn: TIBdatabase;
      FQry: TIBQuery;
    public
      constructor Create;
      function BuscarTodos: TList<TProduto>;
      function BuscarPorCodigo(ACodigo: Integer): TProduto;
      destructor Destroy ; Override;

  end;

implementation

{ TDAOProduto }

constructor TDAOProduto.Create;
begin
  FConn := TIBDatabase.Create(nil);
  FQry := TIBQuery.Create(nil);

  FConn := Model.DataModule.DMInterbase.IBDatabase;
  FQry.Database := FConn;
end;


function TDAOProduto.BuscarPorCodigo(ACodigo: Integer): TProduto;
var
  Qry: TIBQuery;
begin
  Result := nil;
  Qry := TIBQuery.Create(nil);
  try
    Qry.Database := FConn;

    Qry.SQL.Text := 'SELECT Codigo, Descricao, Valor FROM CADPRODUTO WHERE Codigo = :COD';
    Qry.ParamByName('COD').AsInteger := ACodigo;
    Qry.Open;

    if Qry.RecordCount > 0 then
    begin
      Result := TProduto.Create;
      Result.Codigo := Qry.FieldByName('Codigo').AsInteger;
      Result.Descricao := Qry.FieldByName('Descricao').AsString;
      Result.Valor := Qry.FieldByName('Valor').AsCurrency;
    end;
  finally
    Qry.Free;
  end;
end;

function TDAOProduto.BuscarTodos: TList<TProduto>;
var
  Qry: TIBQuery;
  Produto: TProduto;
  Lista: TList<TProduto>;
begin
  Result := TList<TProduto>.Create;
  Qry := TIBQuery.Create(nil);
  Qry.Database := FConn;
  try
    Qry.Database := Model.DataModule.DMInterbase.IBDatabase;
    Qry.SQL.Text := 'SELECT Codigo, Descricao, Valor FROM CADPRODUTO';
    Qry.Open;

    while not Qry.Eof do
    begin
      Produto := TProduto.Create;
      Produto.Codigo := Qry.FieldByName('Codigo').AsInteger;
      Produto.Descricao := Qry.FieldByName('Descricao').AsString;
      Produto.Valor := Qry.FieldByName('Valor').AsCurrency;

      Result.Add(Produto);

      Qry.Next;
    end;
  finally
    Qry.Free;
  end;
end;

destructor TDAOProduto.Destroy;
begin
  FConn.Free;
  FQry.Free;
  inherited;
end;



end.
