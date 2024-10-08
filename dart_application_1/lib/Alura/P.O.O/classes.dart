void main() {
  var banana = Banana('Banana', 'Amarela', 0.2, false);
  var maca = Maca('Maçã', 'Vermelha', 0.3, false);

  print(banana.caracteristicas());
  print(maca.caracteristicas());

  banana.amadurecer();
  maca.amadurecer();

  print(banana.caracteristicas());
  print(maca.caracteristicas());
}

abstract class Fruta {
  String nome;
  double peso;
  String cor;
  bool isMadura;
  int dayLimitMin;
  int dayLimitMax;
  Fruta(
      {required this.nome,
      required this.cor,
      required this.peso,
      required this.isMadura,
      this.dayLimitMin = 10,
      this.dayLimitMax = 20});

  void amadurecer(){
    isMadura = true;
  }

  mostraMadura({required int days}) {
    if (days >= dayLimitMin && days <= dayLimitMax) {
      amadurecer();
      print('A fruta $nome está madura');
    } else if (days < dayLimitMin) {
      print('A fruta $nome ainda não está madura');
    } else {
      print('A fruta $nome não está podre');
    }
  }

  List<dynamic> caracteristicas() {
    return [nome, cor, peso, isMadura];
  }
}

class Banana extends Fruta {
  Banana(
      {required super.nome,
      required super.cor,
      required super.peso,
      required super.isMadura});

  
}

class Maca extends Fruta {
  Maca(
      {required super.nome,
      required super.cor,
      required super.peso,
      required super.isMadura});

}
