import "dart:core";
  
class Account {
  final String name;
  double balance;
  bool isAuthenticated;
  DateTime? createdAt;

  Account(
      {required this.name,
      required this.balance,
      required this.isAuthenticated,
      this.createdAt});

  editBalance({required value}) {
    balance += value;
  }
}
