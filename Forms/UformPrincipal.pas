unit UformPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, Vcl.StdCtrls, UFormCadastroCliente, UFormCadastroEstado,
  UCadastroCidade;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Button1: TButton;
    C1: TMenuItem;
    Clientes1: TMenuItem;
    estados1: TMenuItem;
    Cidades1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure estados1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
ShowMessage('OIIIII');
end;

procedure TFrmPrincipal.Cidades1Click(Sender: TObject);
begin

  FRMCadastroCidade.Show;


end;


procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin


  FormCadastroCliente.Show;
end;

procedure TFrmPrincipal.estados1Click(Sender: TObject);
begin
      FormCadastroEstado.Show;
end;

end.
