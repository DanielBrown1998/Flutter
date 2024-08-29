import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');
  dart_application_1.Pessoa pessoa = dart_application_1.Pessoa(
    nome: 'João',
    idade: 25,
    altura: 1.80,
    peso: 80.0,
  );
  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.altura);
  print(pessoa.peso);
  print(pessoa.sexo);
  pessoa.dormir();
  pessoa.aniversario();
  print(pessoa.idade);
  pessoa.profissao = 'Desenvolvedor';
  print(pessoa.profissao);
  pessoa.salario = 1000.0;
  print(pessoa.salario);
  pessoa.salario = 1500.0;
  print(pessoa.salario);
  pessoa.salario = 1412.0;
  print(pessoa.salario);
}

