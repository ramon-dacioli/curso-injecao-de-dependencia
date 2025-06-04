unit InjecaoDependencia.Interfaces;

interface

type

  iCartao = interface;
  iCrediario = interface;

  iEndereco<T> = interface

    ['{634F8680-DD50-473C-95ED-7AF92B4410B5}']

    function Rua(aValue: String): iEndereco<T>; overload;
    function Rua: String; overload;
    function &End : T;

  end;

  iPessoaFisica = interface

    ['{11C14FC6-C6EF-444F-A4F2-23B55E8E2500}']

    function CPF(aValue: String): iPessoaFisica; overload;
    function CPF: String; overload;
    function Endereco : iEndereco<iPessoaFisica>;

  end;

  iPessoaJuridica = interface

    ['{5487612D-3E09-4F39-916F-9F1C05801C11}']

    function CNPJ(aValue: String): iPessoaJuridica; overload;
    function CNPJ: String; overload;
    function Endereco : iEndereco<iPessoaJuridica>;

  end;

  iPagamento = interface

    ['{BF86DA02-398E-4838-95DD-DD1AFFD22EA8}']

    function Valor ( aVlaue : Currency ) : iPagamento; overload;
    function Valor : Currency; overload;
    function Total : Currency; //overload;
    function Cartao : iCartao;
    function Crediario : iCrediario;

  end;

  iRegras = interface

    ['{48C0FF2F-714D-450F-938D-BC9C46816729}']

    function Total : Currency;

  end;

  iCartao = interface

    ['{369C79B7-E5C3-4D0B-8761-D610B1C858AE}']

    function &End : iPagamento;

  end;

  iCrediario = interface

    ['{AAA09296-9FFF-41B8-AD4F-428EFC055691}']

    function Juros ( aValue : Boolean ) : iCrediario; overload;
    function Juros : Boolean; overload;
    function &End : iPagamento;

  end;

implementation

end.
