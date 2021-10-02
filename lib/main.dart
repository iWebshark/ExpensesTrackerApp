import 'package:expenses_app/providers/categories/categories_provider.dart';
import 'package:expenses_app/providers/expenses/expenses_provider.dart';
import 'package:expenses_app/providers/transactions_provider.dart';
import 'package:expenses_app/screens/expenses_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import './constants/UIConstants.dart' as ui;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  ThemeData get _lightTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: ui.lightBGColor,
      ),
      scaffoldBackgroundColor: ui.lightBGColor,
      bottomNavigationBarTheme:
          BottomNavigationBarThemeData(backgroundColor: ui.lightBGColor),
      fontFamily: 'SFUIDisplay',
      textTheme: TextTheme(
        headline6: TextStyle(color: Colors.black),
      ),
      iconTheme: IconThemeData(color: Colors.black.withOpacity(0.8)),
      dialogTheme: DialogTheme(
          backgroundColor: Color(0xFFFFFFFF),
      ),
    );
  }

  ThemeData get _darkTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: ui.darkBGColor,
      ),
      scaffoldBackgroundColor: ui.darkBGColor,
      bottomNavigationBarTheme:
          BottomNavigationBarThemeData(backgroundColor: ui.darkBGColor),
      fontFamily: 'SFUIDisplay',
      textTheme: TextTheme(
        headline6: TextStyle(color: Colors.white),
      ),
      iconTheme: IconThemeData(color: Colors.white),
      dialogTheme: DialogTheme(
        backgroundColor: Color(0xFF181B24)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CategoriesProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ExpensesProvider(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: _lightTheme,
          darkTheme: _darkTheme,
          themeMode: ThemeMode.dark,
          home: ExpensesMainScreen()),
    );
  }
}
