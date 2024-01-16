unit UFormCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UformCadastroPaiM, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, MoneyEdit, dbmnyed, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, Vcl.DBCtrls, uLookup;

type
  TFRMCadastroProduto = class(TFRMCadastroPai)
    FDQueryCadastroID_PRODUTO: TIntegerField;
    FDQueryCadastroDESCRICAO: TWideStringField;
    FDQueryCadastroQTD: TSingleField;
    FDQueryCadastroCUSTO: TSingleField;
    FDQueryCadastroV_UNITARIO: TSingleField;
    FDQueryCadastroUNIDADE: TWideStringField;
    FDQueryCadastroPESO_LIQUIDO: TSingleField;
    FDQueryCadastroPESO_BRUTO: TSingleField;
    FDQueryCadastroFABRICANTE: TWideStringField;
    FDQueryCadastroMARCA_MODELO: TWideStringField;
    FDQueryCadastroID_FORNECEDOR: TIntegerField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    DBMoneyEdit1: TDBMoneyEdit;
    DBMoneyEdit2: TDBMoneyEdit;
    DBMoneyEdit3: TDBMoneyEdit;
    DBMoneyEdit4: TDBMoneyEdit;
    DBMoneyEdit5: TDBMoneyEdit;
    Label10: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCadastroProduto: TFRMCadastroProduto;

implementation

{$R *.dfm}

procedure TFRMCadastroProduto.FormCreate(Sender: TObject);
begin
  inherited;

  lookup.FDQRYfORNECEDOR.Open();
  lookup.FDQRYFornecedor.FetchAll;
end;

end.
