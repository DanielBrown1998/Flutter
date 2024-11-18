
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
// Função que retorna um Future de inteiros
// async*
// A função é assíncrona e retorna um Stream de inteiros
// O operador * indica que a função é assíncrona e retorna um Stream

import 'dart:async'; // Importa a biblioteca async
Stream<int> myStream(int interval, [int? maxCount]) async* {
  int count = 0;
  while (maxCount == null || count < maxCount) {
    await Future.delayed(Duration(seconds: interval));
    yield count++;
  }
  print('Stream is finished');
}


void main() async {
  // Cria um Stream de inteiros
  Stream<int> stream =  myStream(1, 5);
  // Escuta os eventos do Stream
  StreamSubscription subscription = stream.listen(
    (int value) {
    print(value);
  }, onError:
    (error) {
    print('Error: $error');
  }, onDone:
    () {
    print('Done');
  });
  // Aguarda a conclusão do Stream
  await Future.delayed(Duration(seconds: 3), () {
    subscription.pause();
    print(
      'Stream is paused'
    );
  });
  await Future.delayed(Duration(seconds: 3), () {
    subscription.resume();
    print(
      'Stream is resumed'
    );
  });
  await Future.delayed(Duration(seconds: 3), () {
    subscription.cancel();
    print(
      'Stream is canceled'
    );  
  });
  
  print('Main is finished');
}
