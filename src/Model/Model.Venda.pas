unit Model.Venda;

interface

uses
  System.Classes,
  Model.Venda.Item;

type TVenda = class
  private
    FValorBruto: Currency;
    FValorDesconto: Currency;
    FCancelado: Integer;
    FCodigo: integer;
    FValorLiquido: Currency;
    FData: TDate;
    procedure SetCancelado(const Value: Integer);
    procedure SetCodigo(const Value: integer);
    procedure SetData(const Value: TDate);
    procedure SetValorBruto(const Value: Currency);
    procedure SetValorDesconto(const Value: Currency);
    procedure SetValorLiquido(const Value: Currency);
  public
  published
    property Codigo : integer read FCodigo write SetCodigo;
    property Data : TDate read FData write SetData;
    property ValorBruto : Currency read FValorBruto write SetValorBruto;
    property ValorDesconto : Currency read FValorDesconto write SetValorDesconto;
    property ValorLiquido : Currency read FValorLiquido write SetValorLiquido;
    property Cancelado : Integer read FCancelado write SetCancelado;


    constructor Create;
    destructor Destroy ; Override;

end;

implementation

{ TVenda }

constructor TVenda.Create;
begin
  //
end;

procedure TVenda.SetCancelado(const Value: Integer);
begin
  FCancelado := Value;
end;

procedure TVenda.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TVenda.SetData(const Value: TDate);
begin
  FData := Value;
end;

procedure TVenda.SetValorBruto(const Value: Currency);
begin
  FValorBruto := Value;
end;

procedure TVenda.SetValorDesconto(const Value: Currency);
begin
  FValorDesconto := Value;
end;

procedure TVenda.SetValorLiquido(const Value: Currency);
begin
  FValorLiquido := Value;
end;

destructor TVenda.Destroy;
begin
  //
  inherited;
end;

end.
