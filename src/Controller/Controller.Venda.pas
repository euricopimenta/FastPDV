unit Controller.Venda;

interface

uses
  Model.Venda,
  DAO.Venda,
  System.SysUtils;

type
  TVendaController = class
  private
    FDAO: TDAOVenda;
  public
    constructor Create;
    destructor Destroy; override;

    procedure CriarVenda(AData: TDateTime;
      ATotal, ADesconto, AAcrescimo: Currency; ACancelado: Integer);
  end;

implementation

constructor TVendaController.Create;
begin
  FDAO := TDAOVenda.Create;
end;

destructor TVendaController.Destroy;
begin
  FDAO.Free;
  inherited;
end;

procedure TVendaController.CriarVenda(AData: TDateTime;
  ATotal, ADesconto, AAcrescimo: Currency; ACancelado: Integer);
var
  LVenda: TVenda;
begin
  LVenda := TVenda.Create;
  try
    LVenda.Data := AData;
    LVenda.ValorBruto := ATotal;
    LVenda.ValorDesconto := ADesconto;
    LVenda.ValorLiquido := AAcrescimo;
    LVenda.Cancelado := ACancelado;

  finally
    LVenda.Free;
  end;
end;

end.

