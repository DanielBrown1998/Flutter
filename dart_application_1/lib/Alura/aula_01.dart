//aula introdução ao dart
//aula 01
//tipos de dados no Dart

void main() {
  double mega = 100e6;
  String name = 'Daniel';
  String sobrenome = 'Brown';
  String sobrenome1 = 'Rodrigues';
  String sobrenome2 = 'Mingozzi';
  String sobrenome3 = 'dos Passos';
  List<String> meuNome = [];
  meuNome.add(name);
  meuNome.add(sobrenome);
  meuNome.add(sobrenome1);
  meuNome.add(sobrenome2);
  meuNome.add(sobrenome3);
  for (int i = 0; i < 5; i++) {
    print(meuNome[i]);
  }
  print(meuNome.length);
  print(meuNome.hashCode);
  print(meuNome.runtimeType);
  print(meuNome.isEmpty);
  print(meuNome.last);
  print(meuNome.first);
  print(meuNome.reversed);
  print(meuNome.elementAt(1));
  print(meuNome.contains('Daniel'));
  meuNome.forEach((String element) {
    int tam = element.length;
    print(ehTriangulo(tam, tam + 1, tam - 1));
  });
}

bool ehTriangulo(int a, int b, int c) {
  if ((b + c) > a && a > absoluteNumber(b, c)) {
    return true;
  }

  return false;
}

int absoluteNumber(int a, int b) {
  if (a >= b) {
    return a - b;
  } else {
    return b - a;
  }
}
