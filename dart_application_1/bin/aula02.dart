import 'dart:io';

void main(List<String> arguments) {

  print('informe o percentual de sua presença:');
  dynamic presenca = stdin.readLineSync();
  var presencaDouble = double.parse(presenca);
  if (presencaDouble < 75){
    print('Reprovado por falta');
  }else{
    print('informe sua nota:');
    dynamic nota = stdin.readLineSync();
    var notaDouble = double.parse(nota);
    int media = 7;
    var notaFaltou = media - notaDouble;
    if (notaDouble >= 7) {
      print('Aprovado');
    } else if (notaDouble >= 5) {
      print('Recuperação');
      print('informe sua nota na recuparação:');
      dynamic notaRecuperacao = stdin.readLineSync();
      var notaRecuperacaoDouble = double.parse(notaRecuperacao);
      int mediaRecuperacao = 5;
      var notaFaltouRecuperacao = mediaRecuperacao - notaRecuperacaoDouble;
      if (notaRecuperacaoDouble >= mediaRecuperacao){
        print('Aprovado na recuperação');
      } else if (notaRecuperacaoDouble < 5){
        print('Reprovado na recuperação por $notaFaltouRecuperacao pts');
      }
    } else if (notaDouble < 5){
      print('Reprovado por $notaFaltou pts');
    }
  }
}
