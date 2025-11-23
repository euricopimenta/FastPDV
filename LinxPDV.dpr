program LinxPDV;

uses
  Vcl.Forms,
  View.MainForm in 'src\View\View.MainForm.pas' {FastPDV},
  Model.Produto in 'src\Model\Model.Produto.pas',
  Model.Grupo.Produto in 'src\Model\Model.Grupo.Produto.pas',
  Model.Venda in 'src\Model\Model.Venda.pas',
  Model.Venda.Item in 'src\Model\Model.Venda.Item.pas',
  Model.Venda.Receita in 'src\Model\Model.Venda.Receita.pas',
  Model.DataModule in 'src\Model\Database\Model.DataModule.pas' {DM_InterBase: TDataModule},
  View.Cadastro in 'src\View\View.Cadastro.pas' {Form1},
  View.Busca.Produtos in 'src\View\View.Busca.Produtos.pas' {frm_SelecionarProduto},
  DAO.Produto in 'src\Model\DAO\DAO.Produto.pas',
  Controller.Produto in 'src\Controller\Controller.Produto.pas',
  DAO.Venda.Item in 'src\Model\DAO\DAO.Venda.Item.pas',
  DAO.Venda in 'src\Model\DAO\DAO.Venda.pas',
  Controller.Venda.Item in 'src\Controller\Controller.Venda.Item.pas',
  Controller.Venda in 'src\Controller\Controller.Venda.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFastPDV, FastPDV);
  Application.CreateForm(TDM_InterBase, DMInterbase);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfrm_SelecionarProduto, frm_SelecionarProduto);
  Application.Run;
end.
