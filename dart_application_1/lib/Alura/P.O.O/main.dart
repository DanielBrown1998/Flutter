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
  Fruta(this.nome, this.cor, this.peso, this.isMadura);

  void amadurecer();


  List<dynamic> caracteristicas() {
    return [nome, cor, peso, isMadura];
  }
}


class Banana extends Fruta {
  Banana(super.nome, super.cor, super.peso, super.isMadura);

  @override
  void amadurecer() {
    isMadura = true;
  }
}

class Maca extends Fruta {
  Maca(super.nome, super.cor, super.peso, super.isMadura);

  @override
  void amadurecer() {
    isMadura = true;
  }
}


