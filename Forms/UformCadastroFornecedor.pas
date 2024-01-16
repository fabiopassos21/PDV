unit UformCadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UformCadastroPaiM, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, uLookup, Vcl.DBCtrls, cxMaskEdit,
  cxSpinEdit;

type
  TFRMCadastroFornecedor = class(TFRMCadastroPai)
    FDQueryCadastroID_FORNECEDOR: TIntegerField;
    FDQueryCadastroRAZAO_SOCIAL: TWideStringField;
    FDQueryCadastroCNPJ: TWideStringField;
    FDQueryCadastroFANTASIA: TWideStringField;
    FDQueryCadastroENDERECO: TWideStringField;
    FDQueryCadastroBAIRRO: TWideStringField;
    FDQueryCadastroID_CIDADE: TIntegerField;
    FDQueryCadastroID_ESTADO: TIntegerField;
    FDQueryCadastroEMAIL: TWideStringField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    edtRazaoSocial: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCadastroFornecedor: TFRMCadastroFornecedor;

implementation

{$R *.dfm}

procedure TFRMCadastroFornecedor.FormShow(Sender: TObject);
begin
  inherited;
 Lookup.FDQueryEstado.Open();
  lookup.FDQueryestado.FetchAll;
  lookup.FDQueryCidade.Open();
  lookup.FDQueryCidade.FetchAll;
  edtRazaoSocial.SetFocus;
end;

end.
