unit InjecaoDependencia.Model.Cartao;

interface

uses
  InjecaoDependencia.Interfaces;

type
  TCartao = class(TInterfacedObject, iCartao, iRegras, iVisitor)
    private
      [Weak]
      FParent : iPagamento;
      FVIsist : iPagamento;
    public
      constructor Create(Parent : iPagamento);
      destructor Destroy; override;
      class function New(Parent : iPagamento) : iCartao;

      function &End : iPagamento;
      function Visitor : iVisitor;

      function Total : Currency;

      function Visit(aValue : iPagamento) : iRegras;
  end;

implementation

{ TCartao }

constructor TCartao.Create(Parent: iPagamento);
begin
  FParent := Parent;
end;

destructor TCartao.Destroy;
begin

  inherited;
end;

function TCartao.&End: iPagamento;
begin
  Result := FParent;
end;

class function TCartao.New(Parent: iPagamento): iCartao;
begin
  Result := Self.Create(Parent);
end;

function TCartao.Total: Currency;
begin
  Result := FParent.Valor + (FParent.Valor * 0.2);
end;

function TCartao.Visit(aValue: iPagamento): iRegras;
begin
  Result := Self;
  FVIsist := aValue;
end;

function TCartao.Visitor: iVisitor;
begin
  Result := Self;
end;

end.
