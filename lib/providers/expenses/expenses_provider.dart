import 'package:expenses_app/models/category.dart' as cat;
import 'package:expenses_app/widgets/icons/category_icon.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ExpensesProvider with ChangeNotifier {
  Map<cat.Category, double> _categoryToSum = {
    cat.Category(
        id: "Restaurant",
        categoryIcon: CategoryIcon(
          icon: Icons.restaurant,
          iconColor: Color(0xFFA239FF),
          backgroundColor: Color(0xFF29285C),
        ),
        title: "Restaurant",
        type: cat.CategoryType.EXPENSES): 101,
    cat.Category(
        id: "Groceries",
        categoryIcon: CategoryIcon(
          icon: Icons.local_grocery_store,
          iconColor: Color(0xFF36A3FF),
          backgroundColor: Color(0xFF1E325C),
        ),
        title: "Groceries",
        type: cat.CategoryType.EXPENSES): 450,
    cat.Category(
        id: "Leisure",
        categoryIcon: CategoryIcon(
          icon: Icons.movie,
          iconColor: Color(0xFFFF4A66),
          backgroundColor: Color(0xFF32294D),
        ),
        title: "Leisure",
        type: cat.CategoryType.EXPENSES): 202.1,
  };
  double _totalExpenses = 0;

  ExpensesProvider() {
    recalculateTotal();
  }

  void recalculateTotal() {
    _categoryToSum.values.forEach((element) {
      _totalExpenses += element;
    });
  }

  double get total {
    return _totalExpenses;
  }

  Map<cat.Category, double> get categories {
    return Map.from(_categoryToSum);
  }
}
