unit InjecaoDependencia.Model.Pagamento;

interface

uses
  InjecaoDependencia.Interfaces;

type
  TPagamento = class(TInterfacedObject, iPagamento, iRegras, iVisitable)
  private
    FValor : Currency;
    FCrediario : iCrediario;
    FCartao : iCartao;
    FVisitor : iVisitor;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iPagamento;

    function Valor(aVlaue: Currency): iPagamento; overload;
    function Valor: Currency; overload;
    function Total: Currency; overload;
    function Cartao: iCartao;
    function Crediario: iCrediario;

    function Accept(aValue : iVisitor) : iRegras;
  end;

implementation

{ TPagamento }

uses InjecaoDependencia.Model.Cartao, InjecaoDependencia.Model.Crediario;

function TPagamento.Accept(aValue: iVisitor): iRegras;
begin
    FVisitor := aValue;
    Result := FVisitor.Visit(Self);
end;

function TPagamento.Cartao: iCartao;
begin
  FCartao := TCartao.New(Self);
  Result := FCartao;
  Self.Accept(FCartao.Visitor);
end;

constructor TPagamento.Create;
begin

end;

function TPagamento.Crediario: iCrediario;
begin
  FCrediario := TCreadiario.New(Self);
  Result := FCrediario;
  Self.Accept(FCrediario.Visitor);
end;

destructor TPagamento.Destroy;
begin

  inherited;
end;

class function TPagamento.New: iPagamento;
begin
  Result := Self.Create;
end;

function TPagamento.Total: Currency;
begin
  Result := 0;
end;

function TPagamento.Valor(aVlaue: Currency): iPagamento;
begin
  Result := Self;
  FValor := aVlaue;
end;

function TPagamento.Valor: Currency;
begin
  Result := FValor;
end;

end.
