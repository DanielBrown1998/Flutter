import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');

  var pessoa = dart_application_1.Pessoa(
    nome: 'João Paulo',
    idade: 30,
    altura: 1.80,
    peso: 80.0,
  );
  List<int> results = [1, 2, 3, 4, 5];
  int max = 0;
  results.forEach((int element) {
    if (element > max) {
      max = element;
    }
  });
  print(max);
}
