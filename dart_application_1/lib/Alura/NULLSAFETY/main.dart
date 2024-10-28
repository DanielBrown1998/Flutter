import 'controllers/bank_controller.dart';
import 'models/account.dart';
import 'controllers/exceptions/exceptions.dart' as exceptions;

void main() {
//Criando o banco
  BankController bankController = BankController();

// Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

// Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 600);
// Observando resultado
    if (result){
      print('Transferência finalizada');
    }

  } on exceptions.IdError catch (e) {
    print(e.toString());
  } on exceptions.InsufficientBalanceError catch (e) {
    print(e.toString());
  } catch (e) {
    print('houve um erro inesperado!');
    print('tente novamente mais tarde...');
  }
}
