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

class Pessoa {
  static String especie = "Humano";
  String nome;
  int idade;
  bool isAuthenticated;
  Pessoa(this.nome, this.idade, this.isAuthenticated);

  Map<String, dynamic> toMap() {
    return {'nome': nome, 'idade': idade, 'isAuthenticated': isAuthenticated};
  }

  String get minhaEspecie{
    return especie;
  }

  set minhaEspecie(String value){
    especie = value;
  }

}

void main() {
  List<dynamic> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  Set<dynamic> meuSet = gerandoSets(lista);
  //print(meuSet);

  Transporte transporte = Transporte.carro;
  //escolherMeioTransporte(transporte);

  Pessoa pessoa = Pessoa("Lucas", 22, true);
  //print(pessoa.toMap());

  print(Pessoa.especie);
  pessoa.minhaEspecie = "Animal";
  print(Pessoa.especie);
}
