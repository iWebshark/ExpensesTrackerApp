import 'package:expenses_app/providers/categories/categories_provider.dart';
import 'package:expenses_app/providers/expenses/expenses_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'common/category_bar_item.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<ExpensesProvider>(context);
    final categories = Provider.of<CategoriesProvider>(context);
    return Container(
      height: 258,
      child: ListView(
        children: buildList(data, categories),
      ),
    );
  }

  List<CategoryBarItem> buildList(
      ExpensesProvider data, CategoriesProvider categories) {
    var list = data.categories.entries.map((element) {
      return CategoryBarItem(
        icon: element.key.categoryIcon.icon,
        iconColor: element.key.categoryIcon.iconColor,
        backgroundColor: element.key.categoryIcon.backgroundColor,
        name: element.key.title,
        percentage: element.value / data.total,
        value: element.value,
      );
    }).toList();
    list.sort((a, b) => b.value.compareTo(a.value));
    return list;
  }
}
