unit uFormMain;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvGlowButton, UCadastroCidade,
  UFormCadastroCliente, UFormCadastroEstado, UformCadastroPaiM,
  UformFiltroClientes, uFormFiltroPai, UformCadastroFornecedor,
  UformFiltroFornecedores, UFormFiltroProduto, UFormCadastroProduto;

type
  TFormMain = class(TAdvToolBarForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvShapeButton1: TAdvShapeButton;
    AdvPage2: TAdvPage;
    AdvPage3: TAdvPage;
    AdvToolBar1: TAdvToolBar;
    AdvToolBar2: TAdvToolBar;
    AdvToolBar3: TAdvToolBar;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBar4: TAdvToolBar;
    AdvGlowButton4: TAdvGlowButton;
    btnProdutosCadastro: TAdvGlowButton;
    AdvToolBar5: TAdvToolBar;
    AdvGlowButton6: TAdvGlowButton;
    AdvToolBar6: TAdvToolBar;
    AdvGlowButton7: TAdvGlowButton;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure btnProdutosCadastroClick(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;
 

implementation

{$R *.dfm}


procedure TFormMain.AdvGlowButton1Click(Sender: TObject);
begin
FRMCadastroFornecedor:=TFRMCadastroFornecedor.Create(self);

try
  frmcadastrofornecedor.ShowModal;

finally

  FreeAndNil(frmcadastrofornecedor);

end;




end;

procedure TFormMain.AdvGlowButton2Click(Sender: TObject);
begin

FormCadastroCliente := TformCadastroCliente.Create(Self);


try
         FormCadastroCliente.ShowModal;
finally
FreeAndNil(formcadastroCliente);
         
end;

end;

procedure TFormMain.AdvGlowButton3Click(Sender: TObject);
begin
formCadastroEstado:=TFormCadastroEstado.Create(Self);



try

     formcadastroEstado.ShowModal;
finally
FreeAndNil(formcadastroestado);

end;
end;

procedure TFormMain.AdvGlowButton4Click(Sender: TObject);
begin
FormFiltroCliente:=TFormFiltroCliente.create(Self);
     FormFiltroCliente.ShowModal;

end;





procedure TFormMain.btnProdutosCadastroClick(Sender: TObject);
begin
FRMCadastroProduto:=tfrmcadastroproduto.Create(self);

try
  frmcadastroproduto.showmodal;
finally
FreeAndNil(frmcadastroproduto);

end;


end;



procedure TFormMain.AdvGlowButton6Click(Sender: TObject);
begin
FormFiltroFornecedor:=TFormFiltroFornecedor.Create(self);
    FormFiltroFornecedor.ShowModal;



end;

procedure TFormMain.AdvGlowButton7Click(Sender: TObject);
begin

FormFiltroProduto:=TFormFiltroProduto.Create(self);
formfiltroproduto.ShowModal;


end;

end.
