import 'package:dart_application_1/aula_03.dart';

void main(List<String> arguments) {
  print('Main da Aula 03');
  fun_03();
  print(multi(2, 3));
  print(div(2, 3));
  print(sub(2, 3));
  print(sum(2, 3));
  print(() {
    return 'Função anônima';
  });
  seusDados('Fulano', idade: 30, celular: '99-99999-9999');
}
