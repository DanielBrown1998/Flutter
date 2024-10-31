
//Assincronismo 
//O assincronismo é uma técnica de programação que permite que um programa execute várias tarefas simultaneamente.
//Em Dart, o assincronismo é implementado por meio de funções assíncronas e do uso de Future e Stream.

//Future
//Future é uma classe que representa um valor ou erro que estará disponível em algum momento no futuro.
//O valor ou erro é produzido por uma função assíncrona que é executada em algum momento no futuro.
//A função assíncrona é executada em um isolado, que é uma unidade de execução independente que não compartilha memória com o isolado principal.

//Stream
//Stream é uma sequência de eventos assíncronos.
//Os eventos são produzidos por uma função assíncrona que é executada em algum momento no futuro.

//A função assíncrona é executada em um isolado, 
//que é uma unidade de execução independente que não compartilha memória com o isolado principal.
//Exemplo de uso de Future e Stream
import 'dart:async'; // Importa a biblioteca async

void main() {
  // Exemplo de uso de Future
  Future.delayed(Duration(seconds: 2), () {
    print('Future executado após 2 segundos');
  });

  // Exemplo de uso de Stream
  Stream.periodic(Duration(seconds: 1), (int index) {
    return index;
  }).take(5).listen((int index) {
    print('Stream executado a cada 1 segundo: $index');
  });
}