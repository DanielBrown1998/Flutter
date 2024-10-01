void main() {
  print(ehPar(10));
  print(ehPar(5));
  print(ehPar(8));
  print(ehPar(3));
  print(ehPar(2));
  print(ehPar(1));
  print(ehPar(0));

  List<String> msg = ["Olá", "Mundo", "Dart"];
  func(msg, msgAdd: "Português");
  func(msg);
}

bool ehPar(int valor) => valor % 2 == 0;


void func(List<String> msg, {String? msgAdd}) {
  for (int i = 0; i < msg.length; i++) {
    print("A ${i + 1}° mensagem é: ${msg[i]}.");
    if (msgAdd != null) {
      print("A mensagem está em $msgAdd");
    }
  }
}
