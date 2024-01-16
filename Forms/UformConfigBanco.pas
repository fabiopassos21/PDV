unit UformConfigBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uBiblioteca;

type
  TFormCONFIGbANCO = class(TForm)
    Image1: TImage;
    edtLocal: TEdit;
    Label1: TLabel;
    Button1: TButton;
    openPastas: TOpenDialog;
    procedure Button1Click(Sender: TObject);
  private
    procedure Configura;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCONFIGbANCO: TFormCONFIGbANCO;

implementation

{$R *.dfm}

procedure TFormCONFIGbANCO.Button1Click(Sender: TObject);
begin
  Configura;
end;

procedure TFormCONFIGbANCO.Configura;
var
  vFileName: string;
begin

    if openPastas.Execute  then
    begin
       edtLocal.Text:= openPastas.FileName;
       vFileName:=ExtractFilePath(application.ExeName)+'config.ini';
       SetValorIni(vFilename,'CONFIGURACAO','LOCAL_DB',edtLocal.text);
       ShowMessage('Pronto.');
       application.Terminate;
    end;


end;

end.
