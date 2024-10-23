import '../models/account.dart';

class BankController {
  final Map<String, Account> _database = {};
  addAccount({required String id, required Account account}) {
    _database[id] = account;
  }

  bool makeTransfer(
      {required String idSender, required idReceiver, required double amount}) {
    if (!verifyId(idSender)) {
      return false;
    }
    if (!verifyId(idReceiver)) {
      return false;
    }

    Account? accountSender = _database[idSender];
    Account? accountReceiver = _database[idReceiver];

    if (accountSender!.balance < amount) {
      return false;
    }
    accountSender.balance -= amount;
    accountReceiver!.balance += amount;
    return true;
  }

  bool verifyId(String id) {
    return _database.containsKey(id);
  }
}
