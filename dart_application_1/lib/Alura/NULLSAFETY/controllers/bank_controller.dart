import '../models/account.dart';
import '../controllers/exceptions/exceptions.dart' as exceptions;

class BankController {
  final Map<String, Account> _database = {};
  addAccount({required String id, required Account account}) {
    _database[id] = account;
  }

  bool makeTransfer(    
      {required String idSender, required idReceiver, required double amount}) {

    if (!verifyId(idSender)) {
      throw exceptions.IdError(message: 'Invalid sender id');
    }
    Account accountSender = _database[idSender]!;
    if (!verifyId(idReceiver)) {
      throw exceptions.IdError(message: 'Invalid receiver id');
    }
    Account accountReceiver = _database[idReceiver]!;
    if (accountSender.balance < amount) {
      throw exceptions.InsufficientBalanceError(
          message: "Saldo insuficiente para realizar a transferência");
    }
    accountSender.balance -= amount;
    accountReceiver.balance += amount;
    return true;
  }

  bool verifyId(String id) {
  
    if (_database.containsKey(id)){
      if (_database[id].runtimeType == Null){
        return false;
      }
      return true;
    } else {
      return false;
    }
  }
}
