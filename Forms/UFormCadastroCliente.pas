unit UFormCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, UformCadastroPaiM, uLookup, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit;

type
  TFormCadastroCliente = class(TFRMCadastroPai)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    edtRazao: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    Escolha: TDBComboBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    FDQueryCadastroID_CLIENTE: TFDAutoIncField;
    FDQueryCadastroRAZAO_SOCIAL: TWideStringField;
    FDQueryCadastroFANTASIA: TWideStringField;
    FDQueryCadastroTIPO: TWideStringField;
    FDQueryCadastroNOME: TWideStringField;
    FDQueryCadastroEMAIL: TWideStringField;
    FDQueryCadastroSITE: TWideStringField;
    FDQueryCadastroNUMERO: TWideStringField;
    FDQueryCadastroBAIRRO: TWideStringField;
    FDQueryCadastroIE: TWideStringField;
    FDQueryCadastroIM: TWideStringField;
    FDQueryCadastroOBS: TWideStringField;
    FDQueryCadastroDT_EXCLUIDO: TDateField;
    FDQueryCadastroID_CIDADE: TIntegerField;
    FDQueryCadastroID_ESTADO: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Cidade: TLabel;
    Estado: TLabel;
    FDQueryCadastroCPF_CNPJ: TWideStringField;
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure FDQueryCadastroBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCliente: TFormCadastroCliente;

implementation

{$R *.dfm}

procedure TFormCadastroCliente.FDQueryCadastroBeforeInsert(DataSet: TDataSet);
begin
  inherited;
         if self.visible then begin

         edtRazao.setFocus;
         end;
end;

procedure TFormCadastroCliente.FormShow(Sender: TObject);
begin
  inherited;
 Lookup.FDQueryEstado.Open();
  lookup.FDQueryestado.FetchAll;
  lookup.FDQueryCidade.Open();
  lookup.FDQueryCidade.FetchAll;
  edtrazao.SetFocus;

end;

end.
