import 'dart:async';

void main() async {
  
  Future.delayed(
    Duration(seconds: 3), 
    () {
      print('Hello World');
      return 'Hello World';
    } // anonymous function
  ).then((onValue) => print("this value is $onValue"));

  Future<int> futureFunc() async {
    await Future.delayed(Duration(seconds: 3));
    return 10;
  }
  futureFunc().then((onValue) => print("My function value is $onValue"));
  
  print('Waiting...');
}
