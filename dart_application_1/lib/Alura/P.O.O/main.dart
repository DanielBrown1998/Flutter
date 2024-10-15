import 'classes.dart' as classes;

enum Transporte { carro, aviao, barco, bicicleta }

Set<dynamic> gerandoSets(List<dynamic> lista) {
  Set<dynamic> meuSet = {};
  for (dynamic item in lista) {
    if (!meuSet.contains(item)) {
      meuSet.add(item);
    }
  }
  return meuSet;
}

void escolherMeioTransporte(Transporte meioTransporte) {
  switch (meioTransporte) {
    case Transporte.carro:
      print("Carro");
      break;
    case Transporte.aviao:
      print("Avião");
      break;
    case Transporte.barco:
      print("Barco");
      break;
    case Transporte.bicicleta:
      print("Bicicleta");
      break;
  }
}

void main() {
  escolherMeioTransporte(Transporte.carro);
  List<dynamic> dados = ['Daniel', 26, '26510700', 2000.00, true, classes.BoloChocolate(nome: 'Casadinho', peso: 1, isPrecisaCozimento: false, isVegano: false, sabor: 'doce'), "Daniel", "Brown", "Brown"];
  Set<dynamic> meuSet = gerandoSets(dados);
  print(meuSet);
}
