class IdError implements Exception {
  static const String report = "IdError";
  final String message;
  IdError({this.message = 'Unknow Id'});

  @override
  String toString() {
    return "$report: $message";
  }
}

class InsufficientBalanceError implements Exception {
  static const String report = "InsufficientBalanceError";
  final String message;
  InsufficientBalanceError({this.message = 'No founds'});

  @override
  String toString() {
    return "$report: $message";
  }
}
