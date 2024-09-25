import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

enum Telas {
  SplashScreen,
  HomePage,
  Login,
  Cadastro,
}

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');

  final Telas telas = Telas.SplashScreen;

  switch (telas) {
    case Telas.SplashScreen:
      print('SplashScreen');
      break;
    case Telas.HomePage:
      print('HomePage');
      break;
    case Telas.Login:
      print('Login');
      break;
    case Telas.Cadastro:
      print('Cadastro');
      break;
    default:
      print('Tela não encontrada');
      break;
  }
}
