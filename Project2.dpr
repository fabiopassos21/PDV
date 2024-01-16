program Project2;

uses
  Vcl.Forms,
  UdmDados in 'Forms\UdmDados.pas' {DataModule1: TDataModule},
  UformCadastroPaiM in 'Forms\UformCadastroPaiM.pas' {FRMCadastroPai},
  UformConfigBanco in 'Forms\UformConfigBanco.pas' {FormCONFIGbANCO},
  uBiblioteca in 'Biblioteca\uBiblioteca.pas',
  UFormCadastroCliente in 'Forms\UFormCadastroCliente.pas' {FormCadastroCliente},
  UFormCadastroEstado in 'Forms\UFormCadastroEstado.pas' {FormCadastroEstado},
  UCadastroCidade in 'Forms\UCadastroCidade.pas' {FRMCadastroCidade},
  uLookup in 'Shared\uLookup.pas' {Lookup: TDataModule},
  uFormMain in 'Forms\uFormMain.pas' {FormMain},
  uFormFiltroPai in 'Forms\uFormFiltroPai.pas' {FormfiltroPai},
  UformFiltroClientes in 'Forms\UformFiltroClientes.pas' {FormFiltroCliente},
  UformCadastroFornecedor in 'Forms\UformCadastroFornecedor.pas' {FRMCadastroFornecedor},
  UformFiltroFornecedores in 'Forms\UformFiltroFornecedores.pas' {FormFiltroFornecedor},
  UFormFiltroProduto in 'Forms\UFormFiltroProduto.pas' {FormFiltroProduto},
  UFormCadastroProduto in 'Forms\UFormCadastroProduto.pas' {FRMCadastroProduto},
  UFormCadastroVenda in 'UFormCadastroVenda.pas' {FRMCadastroVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormCONFIGbANCO, FormCONFIGbANCO);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TLookup, Lookup);
  Application.CreateForm(TFRMCadastroProduto, FRMCadastroProduto);
  Application.CreateForm(TFRMCadastroVenda, FRMCadastroVenda);
  Application.Run;
end.
