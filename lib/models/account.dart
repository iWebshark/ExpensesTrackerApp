import 'package:expenses_app/models/category.dart';

class Account extends Category {
  double amount = 0;
  String currency;

  Account({
    required id,
    required categoryIcon,
    required title,
    required type,
    required this.amount,
    required this.currency,
  }) : super(id: id, categoryIcon: categoryIcon, title: title, type: type);
}
