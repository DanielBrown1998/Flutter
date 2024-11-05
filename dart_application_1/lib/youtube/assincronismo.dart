// assicronismo em dart

import 'dart:async';


Future<void> funcAssync() async{
  print('Start Async function');
  await Future.delayed(
    Duration(seconds: 6), // tempo de espera
    () => print("A Future in Async!")
    )
  .then((value) => print("A Async function then"));
  print('End Async function');
}

void main(){
  funcAssync();
}