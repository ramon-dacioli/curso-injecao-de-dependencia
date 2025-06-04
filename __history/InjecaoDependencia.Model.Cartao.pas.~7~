unit InjecaoDependencia.Model.Cartao;

interface

uses
  InjecaoDependencia.Interfaces;

type
  TCartao = class(TInterfacedObject, iCartao, iRegras)
    private
      [Weak]
      FParent : iPagamento;
    public
      constructor Create(Parent : iPagamento);
      destructor Destroy; override;
      class function New(Parent : iPagamento) : iCartao;

      function &End : iPagamento;

      function Total : Currency;
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
  Result := 0;
end;

end.
