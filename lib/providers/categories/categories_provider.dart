import 'package:expenses_app/models/category.dart' as cat;
import 'package:expenses_app/widgets/icons/category_icon.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoriesProvider with ChangeNotifier {
  Map<cat.CategoryType, List<cat.Category>> _typeToCategories = {
    cat.CategoryType.EXPENSES: [
      cat.Category(
          id: "Restaurant",
          categoryIcon: CategoryIcon(
            icon: Icons.restaurant,
            iconColor: Color(0xFFA239FF),
            backgroundColor: Color(0xFF29285C),
          ),
          title: "Restaurant",
          type: cat.CategoryType.EXPENSES),
      cat.Category(
          id: "Groceries",
          categoryIcon: CategoryIcon(
            icon: Icons.local_grocery_store,
            iconColor: Color(0xFF36A3FF),
            backgroundColor: Color(0xFF1E325C),
          ),
          title: "Groceries",
          type: cat.CategoryType.EXPENSES),
      cat.Category(
          id: "Leisure",
          categoryIcon: CategoryIcon(
            icon: Icons.movie,
            iconColor: Color(0xFFFF4A66),
            backgroundColor: Color(0xFF32294D),
          ),
          title: "Leisure",
          type: cat.CategoryType.EXPENSES),
    ],
    cat.CategoryType.ACCOUNTS: [],
    cat.CategoryType.INCOME: [],
  };

  void addCategory(cat.CategoryType type, cat.Category category) {
    _typeToCategories[type]!.add(category);
  }

  cat.Category? getCategoryByTypeAndId(cat.CategoryType type, String categoryId) {
   var categoriesList = _typeToCategories[type] as List<cat.Category>;
   for (cat.Category category in categoriesList) {
     if (category.id == categoryId) return category;
   }
   return null;
  }

  List<cat.Category> getCategoriesByType(cat.CategoryType type) {
    return _typeToCategories[type]!;
  }
}
