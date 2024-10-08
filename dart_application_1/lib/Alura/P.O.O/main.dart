import 'classes.dart' as classes;

void main() {
  var banana = classes.Banana(
    nome: 'Banana',
    cor: 'Amarela',
    peso: 0.2,
  );
  var maca = classes.Maca(
    nome: 'Maçã',
    cor: 'Vermelha',
    peso: 0.3,
  );

  for (var item in banana.caracteristicas().entries) {
    print('${item.key}: ${item.value}');
  }

  banana.mostraMadura(days: 15);
  maca.mostraMadura(days: 15);
}
