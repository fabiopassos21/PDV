unit UformFiltroFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  UdmDados, Vcl.Grids, Vcl.DBGrids, UformCadastroFornecedor;

type
  TFormFiltroFornecedor = class(TFormfiltroPai)
    FDTransaction1: TFDTransaction;
    FDQryFiltroID_FORNECEDOR: TIntegerField;
    FDQryFiltroRAZAO_SOCIAL: TWideStringField;
    FDQryFiltroCNPJ: TWideStringField;
    FDQryFiltroFANTASIA: TWideStringField;
    FDQryFiltroENDERECO: TWideStringField;
    FDQryFiltroBAIRRO: TWideStringField;
    FDQryFiltroID_CIDADE: TIntegerField;
    FDQryFiltroID_ESTADO: TIntegerField;
    FDQryFiltroEMAIL: TWideStringField;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label2: TLabel;
    edtCNPJ: TEdit;
    btnVisualiza: TButton;
    btnNovo: TButton;
    procedure btnFiltroClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
  private
    { Private declarations }
    procedure validaqueryvazia;
    procedure filtrar;
  public
    { Public declarations }
  end;

var
  FormFiltroFornecedor: TFormFiltroFornecedor;


implementation

{$R *.dfm}

procedure TFormFiltroFornecedor.btnFiltroClick(Sender: TObject);
begin
  inherited;
filtrar;
end;

procedure TFormFiltroFornecedor.btnNovoClick(Sender: TObject);
begin
  inherited;

      FRMCadastroFornecedor:=TFRMcadastroFornecedor.Create(self);


            try
              FRMCadastroFornecedor.FDQueryCadastro.Insert;
              FRMCadastroFornecedor.showmodal;
            finally
            FreeAndNil(FRMCadastroFornecedor);

            end;


end;

procedure TFormFiltroFornecedor.btnVisualizaClick(Sender: TObject);
begin
  inherited;
    validaqueryvazia;
    FRMCadastroFornecedor:=tfrmcadastrofornecedor.Create(self);
    try
        FRMCadastroFornecedor.FDQueryCadastro.Locate('ID_FORNECEDOR',FDQryFiltro.FieldByName('ID_FORNECEDOR').AsInteger,[]);
        FRMCADASTROfornecedor.ShowModal;
    finally
          FreeAndNil(formfiltrofornecedor);
    end;
end;

procedure TFormFiltroFornecedor.filtrar;
begin

 FDQryFiltro.Close;
        FDQryFiltro.SQL.Clear;
        FDQryFiltro.SQL.Add('SELECT * FROM FORNECEDOR ');
        FDQryFiltro.SQL.Add('WHERE 1 = 1');


  IF TRIM(edtFiltro.Text)<>'' then begin          // RAZAO SOCIAL EDTFILTRO

  FDQryFiltro.SQL.Add('AND UPPER (TRIM(RAZAO_SOCIAL))LIKE '+ QuotedStr('%'+UpperCase(Trim(edtfiltro.text))+'%'));



  end;
       IF TRIM(edtCNPJ.Text)<>'' then begin          // RAZAO SOCIAL EDTFILTRO

  FDQryFiltro.SQL.Add('AND UPPER (TRIM(REPLACE(REPLACE(REPLACE(CNPJ),''.'',''''),''/'',''''),''-'','''')))LIKE '+ QuotedStr('%'+UpperCase(Trim(edtfiltro.text))+'%'));



  end;
  FDQRYFiltro.Open();
  fdqryfiltro.FetchAll;

end;
   procedure TFormFiltroFornecedor.validaqueryvazia;
   begin
     if FDQryFiltro.isEmpty then  begin
       showmessage ('FAVOR PESQUISAR UM FORNECEDOR PO');
       abort;
     end;


   end;

end.
