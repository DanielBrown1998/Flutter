import 'classes.dart' as classes;

void main() {
  var cenoura = classes.Verdura(
      nome: 'Cenoura', cor: 'Laranja', peso: 0.1, isPrecisaCozimento: false);
  
  var banana = classes.Fruta(
      nome: 'Banana', cor: 'Amarela', peso: 0.2, isPrecisaCozimento: false, dayLimitMin: 5, dayLimitMax: 10);
  
  var batata = classes.Legume(
      nome: 'Batata', cor: 'Marrom', peso: 0.2, isPrecisaCozimento: true);
  
  var arroz = classes.Cereal(
      nome: 'Arroz', cor: 'Branco', peso: 0.5, isPrecisaCozimento: true);


  cenoura.propriedades();
  cenoura.cozinhar();
  batata.propriedades();
  batata.cozinhar();
  arroz.propriedades();
  arroz.cozinhar();
  banana.propriedades();
  banana.cozinhar();
}
