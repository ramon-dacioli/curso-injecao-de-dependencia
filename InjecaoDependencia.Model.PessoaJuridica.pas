unit InjecaoDependencia.Model.PessoaJuridica;

interface

uses
  InjecaoDependencia.Interfaces;

type

  TPessoaJuridica = class(TInterfacedObject, iPessoaJuridica)
  private
    FCNPJ : String;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iPessoaJuridica;

    function CNPJ(aValue: String): iPessoaJuridica; overload;
    function CNPJ: String; overload;
  end;

implementation

{ TPessoaJuridica }

function TPessoaJuridica.CNPJ: String;
begin
  Result := FCNPJ;
end;

function TPessoaJuridica.CNPJ(aValue: String): iPessoaJuridica;
begin
  Result := Self;
  FCNPJ := aValue;
end;

constructor TPessoaJuridica.Create;
begin

end;

destructor TPessoaJuridica.Destroy;
begin

  inherited;
end;

class function TPessoaJuridica.New: iPessoaJuridica;
begin
  Result := Self.Create;
end;

end.
