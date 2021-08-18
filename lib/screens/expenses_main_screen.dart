import 'package:expenses_app/widgets/bottom_navigation_bar.dart';
import 'package:expenses_app/widgets/charts/custom_pie_chart.dart';
import 'package:expenses_app/widgets/period/period_options_list.dart';
import 'package:expenses_app/widgets/period_switching_appbar.dart';
import 'package:flutter/material.dart';

class ExpensesMainScreen extends StatefulWidget {
  @override
  _ExpensesMainScreenState createState() => _ExpensesMainScreenState();
}

class _ExpensesMainScreenState extends State<ExpensesMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PeriodSwitchingAppBar(),
      body: Column(
        children: [
          PeriodOptionsList(),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 220,
            child: CustomPieChart(),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
