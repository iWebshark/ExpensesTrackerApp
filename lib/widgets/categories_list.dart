import 'package:flutter/material.dart';

import 'common/category_bar_item.dart';

class CategoriesList extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'icon': Icons.restaurant,
      'iconColor': Color(0xFFA239FF),
      'backgroundColor': Color(0xFF29285C),
      'name': 'Restaurant',
      'percentage': 0.1,
      'value': 101.0,
    },
    {
      'icon': Icons.local_grocery_store,
      'iconColor': Color(0xFF36A3FF),
      'backgroundColor': Color(0xFF1E325C),
      'name': 'Groceries',
      'percentage': 0.45,
      'value': 454.1,
    },
    {
      'icon': Icons.movie,
      'iconColor': Color(0xFFFF4A66),
      'backgroundColor': Color(0xFF32294D),
      'name': 'Leisure',
      'percentage': 0.2,
      'value': 202.0,
    },
    {
      'icon': Icons.movie,
      'iconColor': Color(0xFFFF4A66),
      'backgroundColor': Color(0xFF32294D),
      'name': 'Leisure',
      'percentage': 0.2,
      'value': 202.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 258,
      child: ListView.builder(
        itemBuilder: (context, i) => CategoryBarItem(
          icon: data[i]['icon'],
          iconColor: data[i]['iconColor'],
          backgroundColor: data[i]['backgroundColor'],
          name: data[i]['name'],
          percentage: data[i]['percentage'],
          value: data[i]['value'],
        ),
        itemCount: data.length,
      ),
    );
  }
}
