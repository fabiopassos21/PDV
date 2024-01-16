unit uFormFiltroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  UformCadastroPaiM, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormfiltroPai = class(TForm)
    FormFiltroPai: TPanel;
    edtFiltro: TEdit;
    Label1: TLabel;
    btnFiltro: TButton;
    DSFiltro: TDataSource;
    FDQryFiltro: TFDQuery;
    Panel1: TPanel;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormfiltroPai: TFormfiltroPai;

implementation

{$R *.dfm}

procedure TFormfiltroPai.Button1Click(Sender: TObject);
begin
SELF.Close;
end;

procedure TFormfiltroPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin

action:=caFree;

end;

end.
