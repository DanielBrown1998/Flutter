import 'dart:io';

//funções nomeadas...
dynamic fun_03() {
  print('package da Aula 03');
}

double multi(double x, double y) {
  //parâmetros posicionais
  return x * y;
}

double div(double x, double y) {
  return x / y;
}

double sub(double x, double y) {
  if (x > y) {
    return x - y;
  }
  return y - x;
}

double sum(double x, double y) {
  return x + y;
}

void seusDados(String nome, {int ?idade, String celular = '99-99999-9999'}) {
  //parâmetros nomeados
  print('parâemtro nomeado -> $celular');
}
