void main() {
  int num1 = 7;
  int num2 = 3;
  String nome = 'Daniel ';
  bool logico = true;
  logico = false;
  double divisao = num1 / num2;
  int resto = num1 % num2;

  var caractere = 'Brown';
  print("nome: ${nome + caractere}");
  print("resto de num1/num2: $resto");
  print("logico: $logico");
  print("divisao: $divisao");

  if (logico == true) {
    print("Olá $nome");
  } else {
    print("Olá, visitante! ");
  }
  int num3=6, num4=5;

  print('$num3 é maior que $num4? ${num3 > num4 ? "Sim": "Não"}');
}
