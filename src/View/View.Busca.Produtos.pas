unit View.Busca.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.ExtCtrls,
  Vcl.StdCtrls, IBX.IBTable, IBX.IBDatabase, Controller.Produto,
  Datasnap.DBClient;

type
  TGridListProdutos = class(TForm)
    dbg_Produtos: TDBGrid;
    pnlPrincipal: TPanel;
    pnl_Voltar: TPanel;
    pnl_BtnAdicionar: TPanel;
    Label2: TLabel;
    procedure pnl_VoltarClick(Sender: TObject);
    procedure pnl_BtnAdicionarClick(Sender: TObject);
    procedure CarregaDadosGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    FValorSelecionado: Currency;
    FCodigoSelecionado: Integer;
    FDescricaoSelecionada: string;
    CDSProdutos : TClientDataSet;
    DTSProdutos : TDataSource;
    Procedure AdicionarItem;
  public
    { Public declarations }
    property CodigoSelecionado: Integer read FCodigoSelecionado write FCodigoSelecionado;
    property DescricaoSelecionada: string read FDescricaoSelecionada write FDescricaoSelecionada;
    property ValorSelecionado: Currency read FValorSelecionado write FValorSelecionado;
    destructor Destroy ; override;

  end;

var
  GridListProdutos: TGridListProdutos;

implementation

uses
  System.Generics.Collections;

{$R *.dfm}

procedure TGridListProdutos.AdicionarItem;
begin
  CodigoSelecionado    := CDSProdutos.FieldByName('CODIGO').AsInteger;
  DescricaoSelecionada := CDSProdutos.FieldByName('DESCRICAO').AsString;
  ValorSelecionado     := CDSProdutos.FieldByName('VALOR').AsCurrency;
  ModalResult := mrOk;
end;

procedure TGridListProdutos.CarregaDadosGrid;
var
  Produtos: TControllerProduto;
begin
  Produtos := TControllerProduto.Create;
  try
    CDSProdutos := Produtos.BuscarTodos;
    DTSProdutos.DataSet := CDSProdutos;
    dbg_Produtos.DataSource := DTSProdutos;
  finally
    Produtos.Free;
  end;

end;

destructor TGridListProdutos.Destroy;
begin
  CDSProdutos.Free;
  DTSProdutos.Free;
  inherited;
end;

procedure TGridListProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TGridListProdutos.FormShow(Sender: TObject);
begin
  CDSProdutos := TClientDataSet.Create(self);
  DTSProdutos := TDataSource.Create(self);
  CarregaDadosGrid;
end;

procedure TGridListProdutos.pnl_BtnAdicionarClick(Sender: TObject);
begin
  AdicionarItem;
end;

procedure TGridListProdutos.pnl_VoltarClick(Sender: TObject);
begin
  Self.ModalResult := mrClose;
end;

end.
