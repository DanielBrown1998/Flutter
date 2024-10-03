import 'dart:core';

final int idade = DateTime( - DateTime(
  1998, 02, 03,
  ).year + DateTime.now().year
).year;
const double altura = 1.84;
const String nome = "Daniel";
const String endereco = 'Travessa Mário Avena';
const String cidade = 'Nilópolis';
const String estado = 'RJ';
const String cep = '26510-700';

void main() {
  print('Nome: $nome');
  print('Idade: $idade');
  print('Altura: $altura');
  print('Endereço: $endereco');
  print('Cidade: $cidade');
  print('Estado: $estado');
  print('CEP: $cep');
}
