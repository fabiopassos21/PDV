unit uLookup;

interface

uses
  System.SysUtils, System.Classes, UdmDados, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.FMTBcd, Data.SqlExpr;

type
  TLookup = class(TDataModule)
    DSEstado: TDataSource;
    FDTransaction: TFDTransaction;
    FDQueryEstado: TFDQuery;
    FDQueryCidade: TFDQuery;
    DSCidade: TDataSource;
    FDQRYFornecedor: TFDQuery;
    DSQRYFORNECEDOR: TDataSource;
    FDQRYCLIENTES: TFDQuery;
    DSClientes: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lookup: TLookup;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
