import 'dart:io';

void main(List<String> arguments) {
  print('seu nome:');
  var nome = stdin.readLineSync();

  print('sua idade:');
  var idade = stdin.readLineSync();
  var idadeInteiro = int.parse(idade!);

  print('seus ganhos mesnsais:');
  var ganhos = stdin.readLineSync();
  var ganhoMensal = double.parse(ganhos!);
  var ganhoAnual = ganhoMensal * 12;
  var imposto = (ganhoAnual * 0.1);
  var ganhoLiquido = ganhoAnual - imposto;
  print('seu ganho liquido é: $ganhoLiquido');
  print('seu imposto é: $imposto');
  print('seu ganho anual é: $ganhoAnual');
  print('seu ganho mensal é: $ganhoMensal');
  print('seu nome é: $nome');
  print('sua idade é: $idadeInteiro');
}
