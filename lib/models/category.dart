import 'package:expenses_app/widgets/icons/category_icon.dart';

enum CategoryType { EXPENSES, ACCOUNTS, INCOME }

class Category {
  final String id;
  final CategoryIcon categoryIcon;
  final String title;
  final CategoryType type;

  Category({
    required this.id,
    required this.categoryIcon,
    required this.title,
    required this.type
  });
}
