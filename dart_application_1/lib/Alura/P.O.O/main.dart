import 'classes.dart' as classes;

void main() {
  var bolo = classes.BoloChocolate(
    nome: 'Bolo de chocolate',
    peso: 1.5,
    sabor: 'doce',
    isVegano: false,
  );

  bolo.propriedades();
  bolo.cozinhar();
  bolo.assar();
}

