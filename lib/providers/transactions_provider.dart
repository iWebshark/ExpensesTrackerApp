import 'package:expenses_app/models/transaction.dart';
import 'package:flutter/foundation.dart';

class TransactionsProvider with ChangeNotifier {
  List<Transaction> _transactions = [];

  void createTransaction(Transaction transaction) {
    _transactions.add(transaction);
    notifyListeners();
  }
}