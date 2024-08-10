import 'dart:io';

void main(List<String> argumentos) {
  var nomes = <String>[
    'João',
    'Maria',
    'José',
    'Pedro',
    'Ana',
    'Carlos',
    'Mariana',
    'Paulo',
    'Luana',
    'Felipe'
  ];
  nomes.add('Daniel');
  String professora = 'Rafaela';
  if (nomes.contains(professora) == false) {
    nomes.insert(nomes.length, professora);
  }
  int cont = 0;
  while (cont < nomes.length) {
    print(nomes[cont]);
    cont++;
  }
  cont = 1;
  for (var nome in nomes) {
    print('$cont° -> $nome');
    cont++;
  }
  var nomesReversos = nomes.reversed.toList();
  print('Quantidade de nomes: ${nomes.length}');
  print('Primeiro nome: ${nomes.first}');
  print('Último nome: ${nomes.last}');
  print('Nome na posição 5: ${nomes[4]}');
  print('Nomes entre a posição 2 e 5: ${nomes.sublist(1, 5)}');
  print(
      'Nomes que começam com a letra "J": ${nomes.where((nome) => nome.startsWith('J'))}');
  print(
      'Nomes que terminam com a letra "a": ${nomes.where((nome) => nome.endsWith('a'))}');
  print(
      'Nomes que possuem 4 letras: ${nomes.where((nome) => nome.length == 4)}');
  print('Nomes em ordem alfabética: ${nomes..sort()}');
  print('Nomes em ordem alfabética reversa: $nomesReversos');
  print('Nomes separados por vírgula: ${nomes.join(', ')}');

  nomes.forEach((nome) => print('Nome: $nome'));
}
