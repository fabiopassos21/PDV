unit uBiblioteca;

interface
      uses IniFiles,System.SysUtils;

procedure SetValorIni(pLocal , pSessao, pSubSessao , Valor:string);
function GetValorIni(  pLocal , pSessao, pSubSessao:string):string;

implementation

uses
  Vcl.Forms;


    procedure SetValorIni(plocal,pSessao,pSubSessao:string; Valor:string);
    var arquivos : TIniFile;


        begin

        arquivos :=TIniFile.Create( ExtractFilePath(Application.ExeName)+'config.ini');
        arquivos.WriteString(psessao,pSubSessao,valor);
        arquivos.Free;




        end;
        function GetValorIni(  pLocal , pSessao, pSubSessao:string):string;
       var arquivos : TIniFile;

        begin
            arquivos := TIniFile.create(pLocal);

            Result:= arquivos.readstring(psessao,psubsessao,'Nao encontramos nada');

            arquivos.Free;

        end;
end.
