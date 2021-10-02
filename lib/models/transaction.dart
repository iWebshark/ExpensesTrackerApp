import 'package:expenses_app/models/category.dart';

class Transaction {
  final DateTime dateTime;
  final double value;
  final Category from;
  final Category to;

  Transaction({
    required this.dateTime,
    required this.value,
    required this.from,
    required this.to,
  });
}
