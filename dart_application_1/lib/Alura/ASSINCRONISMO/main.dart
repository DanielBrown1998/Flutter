
void funcaoAssincrona() {
  print('Inicio da funcaoAssincrona');
  Future.delayed(Duration(seconds: 2), () {
    print('Funcao assincrona finalizada');
  });
  print('Fim da funcaoAssincrona');
}

main(){
  print('Inicio do main');
  funcaoAssincrona();
  print('Fim do main');
}
