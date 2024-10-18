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

class Viagem {
  String origem;
  String destino;
  double distancia;
  final Set<String> _lugaresVisitados = {};
  late Transporte meioTransporte;
  late double tempo;
  int _totaisLugaresVisitados = 0;
  Viagem(
      {required this.origem, required this.destino, required this.distancia});

  int get totaisLugaresVisitados{
    return _totaisLugaresVisitados;
  }

  Set<String> get lugaresVisitados{
    return _lugaresVisitados;
  }

  set lugaresVisitados(Set<String> lugares){
    if (_lugaresVisitados.isEmpty){
      _lugaresVisitados.addAll(lugares);
      _totaisLugaresVisitados = _lugaresVisitados.length;
    } else {
      throw Exception("Lugares visitados já foram adicionados");
    }
  }

  void addLugaresVisitados(String lugar){
    if (_lugaresVisitados.contains(lugar)){
      throw Exception("Lugar já visitado");
    }
    _lugaresVisitados.add(lugar);
    _totaisLugaresVisitados++;
  }

  double velocidadeMedia() {
    if (tempo.isNaN) {
      throw Exception("escolha o meio de transporte primeiro");
    }
    double velocidadeMedia = distancia / tempo;
    if (velocidadeMedia > 90 ||
        velocidadeMedia < 20 && meioTransporte == Transporte.carro) {
      throw Exception(
          "Velocidade média não permitida para o meio de transporte escolhido");
    } else if (velocidadeMedia > 950 ||
        velocidadeMedia < 200 && meioTransporte == Transporte.aviao) {
      throw Exception(
          "Velocidade média não permitida para o meio de transporte escolhido");
    } else if (velocidadeMedia > 30 ||
        velocidadeMedia < 5 && meioTransporte == Transporte.bicicleta) {
      throw Exception(
          "Velocidade média não permitida para o meio de transporte escolhido");
    } else if (velocidadeMedia > 50 ||
        velocidadeMedia < 10 && meioTransporte == Transporte.barco) {
      throw Exception(
          "Velocidade média não permitida para o meio de transporte escolhido");
    }

    return distancia / tempo;
  }

  void informacoes() {
    print("Origem: $origem");
    print("Destino: $destino");
    print("Distância: $distancia");
    print("Tempo: $tempo");
    print("Velocidade Média: ${velocidadeMedia()}");
  }

  void escolherMeioTransporte(String transporte) {
    switch (transporte) {
      case "Carro":
        meioTransporte = Transporte.carro;
        tempo = 1.5;
        break;
      case "Avião":
        meioTransporte = Transporte.aviao;
        tempo = 0.5;
        break;
      case "Barco":
        meioTransporte = Transporte.barco;
        tempo = 3.5;
        break;
      case "Bicicleta":
        meioTransporte = Transporte.bicicleta;
        tempo = 6.0;
        break;
    }
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

  String get minhaEspecie {
    return especie;
  }

  set minhaEspecie(String value) {
    especie = value;
  }
}

void main() {
  List<dynamic> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  Set<dynamic> meuSet = gerandoSets(lista);
  //print(meuSet);
}
