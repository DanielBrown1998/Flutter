import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

enum Telas {
  SplashScreen, 
  HomePage, 
  Login,
  Cadastro,}



void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');

  Telas tela = Telas.SplashScreen;
  print(tela.toString());
  print(Telas.values);


}
