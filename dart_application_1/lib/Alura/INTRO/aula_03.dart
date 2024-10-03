import 'dart:core';

void main() {
  Pessoa eu = Pessoa(nome: 'Daniel', dataNasc: DateTime(1998, 02, 03));
  Pessoa ela = Pessoa(nome: 'Rafaela', dataNasc: DateTime(1998, 07, 23));
  Pessoa irmao = Pessoa(nome: 'Rafael', dataNasc: DateTime(2001, 04, 21));

  List<Pessoa> pessoas = [
    eu,
    ela,
    irmao,
  ];

  for (int i = 0; i < pessoas.length; i++) {
    pessoas[i].apresentar();
  }
}

class Pessoa {
  final String nome;
  int idade;
  final DateTime dataNasc;

  Pessoa({required this.nome, required this.dataNasc, this.idade = 0}) {
    idade = DateTime.now().year - dataNasc.year;
  }

  void apresentar() {
    print('Olá, meu nome é $nome e tenho $idade anos');
  }
}
