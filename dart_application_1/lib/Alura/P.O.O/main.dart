import 'classes.dart' as classes;

void main() {
  var banana = classes.Banana(
      nome: 'Banana', cor: 'Amarela', peso: 0.2, isMadura: false,
      );
  var maca = classes.Maca(
      nome: 'Maçã', cor: 'Vermelha', peso: 0.3, isMadura: false,
      );

  print(banana.caracteristicas());
  print(maca.caracteristicas());

  banana.mostraMadura(days: 15);
  maca.mostraMadura(days: 15);

}
