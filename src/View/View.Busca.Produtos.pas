unit View.Busca.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.ExtCtrls,
  Vcl.StdCtrls, IBX.IBTable, IBX.IBDatabase;

type
  Tfrm_SelecionarProduto = class(TForm)
    dbg_Produtos: TDBGrid;
    pnlPrincipal: TPanel;
    pnl_Voltar: TPanel;
    pnl_BtnAdicionar: TPanel;
    Label2: TLabel;
    procedure pnl_VoltarClick(Sender: TObject);
    procedure pnl_BtnAdicionarClick(Sender: TObject);
    procedure CarregaDadosGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Procedure AdicionarItem;
  public
    { Public declarations }

  end;

var
  frm_SelecionarProduto: Tfrm_SelecionarProduto;

implementation

uses
  System.Generics.Collections, Controller.Produto;

{$R *.dfm}

procedure Tfrm_SelecionarProduto.AdicionarItem;
var
  CodigoProduto: Integer;
  DescricaoProduto: String;
begin
 //
end;

procedure Tfrm_SelecionarProduto.CarregaDadosGrid;
var
  Produtos: TControllerProduto;
  DTSProdutos : TDataSource;
begin
  Produtos := TControllerProduto.Create;
  DTSProdutos := TDataSource.Create(nil);
  try
    DTSProdutos.DataSet := Produtos.BuscarTodos;
    dbg_Produtos.DataSource := DTSProdutos;

  finally
    Produtos.Free;
    DTSProdutos.Free;
  end;

end;

procedure Tfrm_SelecionarProduto.FormCreate(Sender: TObject);
begin
  CarregaDadosGrid;
end;

procedure Tfrm_SelecionarProduto.pnl_BtnAdicionarClick(Sender: TObject);
begin
  AdicionarItem;
end;

procedure Tfrm_SelecionarProduto.pnl_VoltarClick(Sender: TObject);
begin
  Self.Close;
end;

end.
