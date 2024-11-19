import 'dart:io';

import './questions/time_question.dart';
import './timing/waiting_time.dart';

void main() async {
  String kakoBot = 'KakoBOT:\n';
  var a = true;
  String usuario = '';

  var myStream = BotClock().botStream(1, 10);
  var subscriber  = myStream.listen((event) {
    print('                            KakoBot is activated for $event seconds');
  });


  print('-- Iniciando o KakoBOT, aguarde..--');
  await BotClock().clock(2);
  print('KakoBOT:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(2).then(
        (value) => print('KakoBOT:\n Pronto...')
    );
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(kakoBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(usuario).timeQuestion();
    } else if (false) {
      // implementar o Timing!
      print("timing");
    } else {
      await BotClock().clock(2);
      print(kakoBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(kakoBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando KakoBOT--');
}
