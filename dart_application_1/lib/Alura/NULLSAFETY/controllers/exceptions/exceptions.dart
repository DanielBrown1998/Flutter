

class IdError implements Exception{
  final String message;
  IdError({this.message = 'Unknow Id'}){
    print('IdError: $message');
  }
}

class InsufficientBalanceError implements Exception{
  final String message;
  InsufficientBalanceError({this.message = 'No founds'}){
    print('InsufficientBalanceError: $message');
  }
}

