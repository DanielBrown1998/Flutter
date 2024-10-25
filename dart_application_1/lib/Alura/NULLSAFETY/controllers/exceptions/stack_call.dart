import 'dart:io';

void stackCall() {
  try{
    double amount = double.parse("Not a Number");
    print(amount);
  }
  on FormatException catch(e, stackTrace){
    print("Error: $e");
    print("$stackTrace");
  }
  on StdinException catch(e, stackTrace){
    print("Error: $e");
    print("$stackTrace");
  }
  catch(e, stackTrace){
    print("Error: $e");
    print("$stackTrace");
  } 
  finally {
    print("End of the program");
  }
}