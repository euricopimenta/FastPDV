unit View.Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lbl_HeaderCadastro: TLabel;
    pnl_FooterCadastro: TPanel;
    pnl_HeaderCadastro: TPanel;
    pnl_Excluir: TPanel;
    Panel2: TPanel;
    pnl_Voltar: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
