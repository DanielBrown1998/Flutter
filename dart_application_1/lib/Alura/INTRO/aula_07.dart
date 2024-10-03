import 'dart:io';

void main() {
  print('Digite o seu nome:');
  String? nome = stdin.readLineSync();
  if (nome != null) {
    nome = nome.toUpperCase();
    print('Seu nome é $nome.');
  }
  print('Digite a sua idade:');
  String? idadeStr = stdin.readLineSync();
  if (idadeStr != null) {
    int idade = int.parse(idadeStr);
    print('Sua idade é $idade.');
  }
  print('Digite o seu salário:');
  String? salario = stdin.readLineSync();
  if (salario != null) {
    double salarioDouble = double.parse(salario);
    print('Seu salário é $salarioDouble.');
  }
  print('Digite o seu cargo:');
  String? cargo = stdin.readLineSync();
  if (cargo != null) {
    cargo = cargo.toUpperCase();
    print('Seu cargo é $cargo.');
  }
  print('Digite a sua cidade:');
  String? cidade = stdin.readLineSync();
  if (cidade != null) {
    cidade = cidade.toUpperCase();
    print('Sua cidade é $cidade.');
  } 
  print('Digite o seu estado:');
  String? estado = stdin.readLineSync();
  if (estado != null) {
    estado = estado.toUpperCase();
    print('Seu estado é $estado.');
  }
  print('Digite o seu estado civil:');
  String? estadoCivil = stdin.readLineSync();
  if (estadoCivil != null) {
    estadoCivil = estadoCivil.toUpperCase();
    print('Seu estado civil é $estadoCivil.');
  }
}
