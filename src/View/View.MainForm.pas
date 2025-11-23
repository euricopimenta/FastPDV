unit View.MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ImgList, Vcl.Imaging.pngimage, Vcl.Grids, Vcl.DBGrids,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, Model.DataModule, View.Busca.Produtos, Model.Produto,
  Datasnap.DBClient;

type
  TFastPDV = class(TForm)
    pnlMainHead: TPanel;
    pnlMainBottom: TPanel;
    pnlPrincipal: TPanel;
    img_HeadLogo: TImage;
    lbl_HeadLogo: TLabel;
    img_MenuOptions: TImage;
    Panel1: TPanel;
    pnl_ClientVendaItens: TPanel;
    pnl_ClientVendaTotal: TPanel;
    DBGrid_VendasItem: TDBGrid;
    lbl_ResumoDaVenda: TLabel;
    Label1: TLabel;
    lbl_ValorTotal: TLabel;
    Label2: TLabel;
    pnl_ProdutosVenda: TPanel;
    edt_DescricaoProduto: TEdit;
    edt_Quantidade: TEdit;
    pnl_btnRemover: TPanel;
    pnl_BtnAdicionar: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    edt_CodigoProduto: TEdit;
    Label6: TLabel;
    pnl_BuscarProduto: TPanel;
    procedure pnl_BuscarProdutoClick(Sender: TObject);
    procedure edt_CodigoProdutoExit(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FastPDV: TFastPDV;

implementation

{$R *.dfm}

procedure TFastPDV.edt_CodigoProdutoExit(Sender: TObject);
var
  LCodigoProduto: Integer;
begin
if Trim(edt_CodigoProduto.Text) = '' then
  begin
    edt_DescricaoProduto.Text := '';
    Exit;
  end;
end;

procedure TFastPDV.pnl_BuscarProdutoClick(Sender: TObject);
begin
  View.Busca.Produtos.frm_SelecionarProduto.ShowModal;
end;



end.
