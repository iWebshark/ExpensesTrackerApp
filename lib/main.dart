import 'package:expenses_app/screens/expenses_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _lightTheme,
        darkTheme: _darkTheme,
        themeMode: ThemeMode.dark,
        home: ExpensesMainScreen());
  }
}
