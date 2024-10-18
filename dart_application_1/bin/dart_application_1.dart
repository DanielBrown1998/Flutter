import 'dart:core';

void main(List<String> arguments) {
  //calcula destino
  Map<String, List<int>> lugares = {
    "PR": [0, 100, 150, 150, 200, 400],
    "SP": [100, 0, 50, 50, 100, 300],
    "MG": [150, 100, 0, 50, 100, 100],
    "RJ": [150, 50, 50, 0, 50, 250],
    "ES": [200, 100, 100, 50, 0, 100],
    "BH": [400, 300, 100, 250, 100, 0]
  };

  int defineDistancia(
      Map<String, List<int>> lugares, String origem, String destino) {
    /*
    Função que recebe um mapa de lugares e duas strings, origem e destino, e retorna a distância entre eles.

    Parâmetros:
    lugares (Map<String, List<int>>): Mapa de lugares com as distâncias entre eles.
    origem (String): String com a origem.
    destino (String): String com o destino.
  
    Retorno:
    int: Distância entre origem e destino.
    
    Exemplo:    
    >>> Map<String, List<int>> lugares = {
    "PR": [0, 100, 150, 150, 200, 400],
    "SP": [100, 0, 50, 50, 100, 300],
    "MG": [150, 100, 0, 50, 100, 100],
    "RJ": [150, 50, 50, 0, 50, 250],
    "ES": [200, 100, 100, 50, 0, 100],
    "BH": [400, 300, 100, 250, 100, 0]
    };
    >>> defineDistancia(lugares, "RJ", "SP")
    50
    */
    int distancia = 0;
    List<String> keysLugares = lugares.keys.toList(); // lista de chaves
    if (lugares.isEmpty) {
      throw Exception("Lista de lugares vazia");
    }
    if (!lugares.keys.contains(origem.toUpperCase())) {
      throw Exception("Origem não encontrada");
    }
    if (!lugares.keys.contains(destino.toUpperCase())) {
      throw Exception("Destino não encontrado");
    }
    if (origem == destino) {
      throw Exception("Origem e destino iguais");
    }
    for (dynamic value in lugares.values) {
      if (value.length != keysLugares.length) {
        throw Exception("Os dados estão assimétricos");
      }
    }
    distancia = lugares[origem]![keysLugares.indexOf(destino)];
    return distancia;
  }

  int distancia = defineDistancia(lugares, "RJ", "SP");
  print(distancia);
}
