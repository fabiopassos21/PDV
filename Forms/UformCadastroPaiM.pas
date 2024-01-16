unit UformCadastroPaiM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, UdmDados;

type
  TFRMCadastroPai = class(TForm)
    Button1: TButton;
    pnlCabecalho: TPanel;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    FDQueryCadastro: TFDQuery;
    FDUpdCadastro: TFDUpdateSQL;
    FDTransation: TFDTransaction;
    fdQRYCadastro: TDataSource;
    DSCadastro: TDataSource;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCadastroPai: TFRMCadastroPai;

implementation

{$R *.dfm}

procedure TFRMCadastroPai.btnCancelarClick(Sender: TObject);
begin

    if FDQueryCadastro.State in [dsEdit,dsInsert] then begin
      FDQueryCadastro.Cancel;
      FDTransation.Rollback;

    end;



end;

procedure TFRMCadastroPai.btnGravarClick(Sender: TObject);
begin


    if FDQueryCadastro.State in [dsEdit,dsInsert] then begin

    FDQueryCadastro.Post;
    FDTransation.StartTransaction;
     showmessage('Salvo com sucesso');
    FDTransation.CommitRetaining;



    end;

end;

procedure TFRMCadastroPai.btnNovoClick(Sender: TObject);
begin


    if not (FDQueryCadastro.State in [dsEdit,dsInsert])  then  begin

    FDQueryCadastro.Insert;



    end



end;

procedure TFRMCadastroPai.btnExcluirClick(Sender: TObject);
begin

    FDQueryCadastro.Edit;
    FDQueryCadastro.FieldByName('DT_EXCLUIDO').AsDateTime :=Date;
    FDTransation.StartTransaction;
    FDQueryCadastro.Post;
    showmessage('Excluido ');
    FDTransation.CommitRetaining;



end;

procedure TFRMCadastroPai.btnSairClick(Sender: TObject);
begin


SELF.Close();
end;

procedure TFRMCadastroPai.FormCreate(Sender: TObject);
begin
FDQueryCadastro.Open;
end;

end.
