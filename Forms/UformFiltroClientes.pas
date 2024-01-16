unit UformFiltroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, UdmDados, UFormCadastroCliente, UFormCadastroProduto;

type
  TFormFiltroCliente = class(TFormfiltroPai)
    DBGrid1: TDBGrid;
    FDTransaction: TFDTransaction;
    Label2: TLabel;
    Label3: TLabel;
    edtFantasia: TEdit;
    edtCPF: TEdit;
    edtCodigo: TEdit;
    Codigo: TLabel;
    btnNovo: TButton;
    btnVisualiza: TButton;
    FDQryFiltroID_CLIENTE: TIntegerField;
    FDQryFiltroRAZAO_SOCIAL: TWideStringField;
    FDQryFiltroFANTASIA: TWideStringField;
    FDQryFiltroCPF_CNPJ: TWideStringField;
    FDQryFiltroTIPO: TWideStringField;
    FDQryFiltroNOME: TWideStringField;
    FDQryFiltroEMAIL: TWideStringField;
    FDQryFiltroSITE: TWideStringField;
    FDQryFiltroNUMERO: TWideStringField;
    FDQryFiltroBAIRRO: TWideStringField;
    FDQryFiltroIE: TWideStringField;
    FDQryFiltroIM: TWideStringField;
    FDQryFiltroOBS: TWideStringField;
    FDQryFiltroDT_EXCLUIDO: TDateField;
    FDQryFiltroID_CIDADE: TIntegerField;
    FDQryFiltroID_ESTADO: TIntegerField;
    procedure btnFiltroClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
  private
   procedure filtrar;
   procedure validaQueryVazia;
  public
    { Public declarations }
  end;

var
  FormFiltroCliente: TFormFiltroCliente;

implementation

{$R *.dfm}

{ TFormFiltroCliente }

procedure TFormFiltroCliente.btnFiltroClick(Sender: TObject);
begin
  inherited;

    Filtrar;

end;

procedure TFormFiltroCliente.btnVisualizaClick(Sender: TObject);
begin
  inherited;



      validaQueryVazia;


      FormCadastroCliente:=tformcadastrocliente.Create(self);


      try

      formcadastrocliente.FDQueryCadastro.Locate('ID_CLIENTE',FDQryFiltro.FieldByName('ID_CLIENTE').AsInteger,[]);  //PEGA LOCAL DO CURSOS OU MELHOR DA PONTEIRA
          formcadastrocliente.ShowModal;
      finally


      end;

    
  
end;

procedure TFormFiltroCliente.filtrar;
begin
        FDQryFiltro.Close;
        FDQryFiltro.SQL.Clear;
        FDQryFiltro.SQL.Add('SELECT * FROM CLIENTE ');
        FDQryFiltro.SQL.Add('WHERE 1 = 1');
        if Trim(edtFiltro.Text) <> '' then begin


        FDQryFiltro.SQL.Add('AND UPPER (TRIM (RAZAO_SOCIAL) ) LIKE ' + QuotedStr('%' +UpperCase(Trim(edtFiltro.text))+'%'));      // #39 =11 ou chr(39) tambem funciona


        end;

        if Trim(edtFantasia.Text)<> '' then begin
        FDQryFiltro.SQL.Add('AND UPPER ( TRIM (FANTASIA)) LIKE '+ QuotedStr('%' + UpperCase(Trim(edtFantasia.text))+'%'));

        end;
        IF Trim(edtCPF.Text)<> '' then begin
          FDQryFiltro.SQL.Add('AND UPPER ( TRIM (REPLACE(REPLACE(REPLACE(CPF_CNPJ,''.'',''''),''-'',''''),''/'','''' )))LIKE'+QuotedStr('%'+UpperCase(Trim(edtCPF.text))+'%'));
        end;

        if StrToIntDef(edtCodigo.text,0)>0  then begin
        FDqryfiltro.SQL.Add('AND ID_CLIENTE ='+edtCodigo.text);


        end;

        FdqryFiltro.Open();
        FDQryFiltro.FetchAll;




end;

procedure TFormFiltroCliente.btnNovoClick(Sender: TObject);
begin
  inherited;
FormCadastroCliente:=TFormCadastroCliente.create(Self);


try
      FormCadastroCliente.FDQueryCadastro.Insert;      //estava dando erro ao importar nao sei como deu certo
      formcadastrocliente.ShowModal;

finally

      FreeAndNil(FormCadastroCliente);


end;




end;

procedure TFormFiltroCliente.validaQueryVazia;
begin
 if FDQryFiltro.isEmpty then begin
   showMessage('Pesquise um cliente');
      abort;                 // exit  or abort     exit sai do procedimento
   end;
 
end;

end.
