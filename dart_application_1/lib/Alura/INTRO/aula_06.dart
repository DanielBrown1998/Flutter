
void main(){
  print('06.1) Switch\n');

  String linguagem = 'Dart';

  switch(linguagem){
    case 'Dart':
      print('Linguagem Dart');
      break;
    case 'Java':
      print('Linguagem Java');
      break;
    default:
      print('Outra linguagem');
  }

  print('\n06.2) For\n');

  for(int i = 0; i < 5; i++){
    print('Contagem: $i');
  }

  print('\n06.3) While\n');

  int j = 0;
  while(j < 5){
    print('Contagem: $j');
    j++;
  }

  print('\n06.4) Do While\n');

  int k = 0;
  do{
    print('Contagem: $k');
    k++;
  }while(k < 5);

  print('\n06.5) Break\n');

  for(int i = 0; i < 5; i++){
    if(i == 3){
      break;
    }
    print('Contagem: $i');
  }

  print('\n06.6) Continue\n');

  for(int i = 0; i < 5; i++){
    if(i == 3){
      continue;
    }
    print('Contagem: $i');
  }

  print('\n06.7) ForEach\n');

  List<String> frutas = ['Morango', 'Banana', 'Tomate'];
  for(String fruta in frutas){
    print('Fruta: $fruta');
  }

  print('\n06.8) Map\n');

  Map<String, String> estados = {};
  estados['SP'] = 'São Paulo';
  estados['RJ'] = 'Rio de Janeiro';
  estados['MG'] = 'Minas Gerais';
  estados['AM'] = 'Amazonas';
  estados.forEach((key, value) => print('$key: $value'));

  print('\n06.9) While com break\n');

  int x = 0;
  while(true){
    if(x >= 5){
      break;
    }
    print('Contagem: $x');
    x++;
  }

  print('\n06.10) For com break\n');

  for(int i = 0; i < 5; i++){
    if(i == 3){
      break;
    }
    print('Contagem: $i');
  }
}