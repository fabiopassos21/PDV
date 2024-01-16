unit UFormFiltroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  UdmDados, uLookup, Vcl.Grids, Vcl.DBGrids, UFormCadastroProduto;

type
  TFormFiltroProduto = class(TFormfiltroPai)
    DBGrid1: TDBGrid;
    Label2: TLabel;
    edtDescricao: TEdit;
    FDQryFiltroID_PRODUTO: TIntegerField;
    FDQryFiltroDESCRICAO: TWideStringField;
    FDQryFiltroQTD: TSingleField;
    FDQryFiltroCUSTO: TSingleField;
    FDQryFiltroV_UNITARIO: TSingleField;
    FDQryFiltroUNIDADE: TWideStringField;
    FDQryFiltroPESO_LIQUIDO: TSingleField;
    FDQryFiltroPESO_BRUTO: TSingleField;
    FDQryFiltroFABRICANTE: TWideStringField;
    FDQryFiltroMARCA_MODELO: TWideStringField;
    FDQryFiltroFORNECEDOR: TWideStringField;
    FDTransaction1: TFDTransaction;
    btnNovo: TButton;
    btnVisualiza: TButton;
    procedure btnFiltroClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
  private
  procedure filtrar;
  procedure validaqueryvazia;
  public
    { Public declarations }
  end;

var
  FormFiltroProduto: TFormFiltroProduto;

implementation

{$R *.dfm}

procedure TFormFiltroProduto.btnFiltroClick(Sender: TObject);
begin
  inherited;
filtrar;
end;

procedure TFormFiltroProduto.btnNovoClick(Sender: TObject);
begin
  inherited;
    frmcadastroproduto:=tfrmcadastroproduto.create(Self);

    try
      frmcadastroproduto.FDQueryCadastro.insert;
      frmcadastroproduto.ShowModal;
    finally
    FreeAndNil(frmcadastroproduto);

    end;


end;

procedure TFormFiltroProduto.btnVisualizaClick(Sender: TObject);
begin
  inherited;
  validaqueryvazia;
   FRMCadastroProduto:=TFRMCADASTROPRODUTO.Create(SELF);


   try
   FRMCADASTROPRODUTO.FDQueryCadastro.Locate('ID_PRODUTO',FDQryFiltro.FieldByName('ID_PRODUTO').AsInteger,[]);
   frmcadastroproduto.ShowModal;
   finally
   FreeAndNil(frmcadastroproduto);
   end;




end;

procedure TFormFiltroProduto.filtrar;
begin
  FDQryFiltro.SQL.Clear;
  FDQRYFILTRO.SQL.Add('SELECT P.DESCRICAO,');
  fdqryfiltro.SQL.Add('P.ID_PRODUTO,');
  FDQRYFILTRO.SQL.Add('     P.QTD,');
 FDQRYFILTRO.SQL.Add('            P.CUSTO,');
 FDQRYFILTRO.SQL.Add('            P.V_UNITARIO,');
 FDQRYFILTRO.SQL.Add('            P.UNIDADE,');
 FDQRYFILTRO.SQL.Add('            P.PESO_LIQUIDO,');
 FDQRYFILTRO.SQL.Add('            P.PESO_BRUTO,');
 FDQRYFILTRO.SQL.Add('            P.FABRICANTE,');
 FDQRYFILTRO.SQL.Add( 'P.MARCA_MODELO,');
 FDQRYFILTRO.SQL.Add('F.RAZAO_SOCIAL FORNECEDOR');
 FDQRYFILTRO.SQL.Add('FROM PRODUTOM P LEFT JOIN FORNECEDOR F ON F.ID_FORNECEDOR = P.ID_FORNECEDOR');
 FDQRYFILTRO.SQL.Add('WHERE 1=1');

    if StrToIntDef(edtFiltro.Text,0)>0 then begin

    fdqryfiltro.SQL.Add('AND ID_PRODUTO LIKE '+QuotedStr('%'+edtDescricao.Text+'%'));



    end;
    if Trim(edtDescricao.Text)<>'' then begin

      fdqryfiltro.SQL.Add('AND UPPER TRIM(DESCRICAO)LIKE '+QuotedStr('%'+(UpperCase(edtDescricao.text))+'%'));
    end;


      FDQryFiltro.open();
      fdqryfiltro.FetchAll;


end;

  procedure TFormFiltroProduto.validaqueryvazia;
  begin
    if FDQryFiltro.IsEmpty then BEGIN
       showMessage('Favor Pesquisar um produto');
       abort;

    END;
  end;


end.
