import 'classes.dart' as classes;


enum Transporte{
  carro,
  aviao,
  barco,
  bicicleta
}


void escolherMeioTransporte(Transporte meioTransporte){

  switch (meioTransporte){
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
  escolherMeioTransporte(Transporte.carro)
  
}

