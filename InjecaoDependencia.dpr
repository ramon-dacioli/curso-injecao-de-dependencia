program InjecaoDependencia;

uses
  Vcl.Forms,
  InjecaoDependencia.View.Principal in 'InjecaoDependencia.View.Principal.pas' {Form1},
  InjecaoDependencia.Interfaces in 'InjecaoDependencia.Interfaces.pas',
  InjecaoDependencia.Model.PessoaFisica in 'InjecaoDependencia.Model.PessoaFisica.pas',
  InjecaoDependencia.Model.PessoaJuridica in 'InjecaoDependencia.Model.PessoaJuridica.pas',
  InjecaoDependencia.Model.Endereco in 'InjecaoDependencia.Model.Endereco.pas',
  InjecaoDependencia.Model.Pagamento in 'InjecaoDependencia.Model.Pagamento.pas',
  InjecaoDependencia.Model.Cartao in 'InjecaoDependencia.Model.Cartao.pas',
  InjecaoDependencia.Model.Crediario in 'InjecaoDependencia.Model.Crediario.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
