import 'package:flutter/material.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/categories_list.dart';
import '../widgets/charts/custom_pie_chart.dart';
import '../widgets/display_type_selector.dart';
import '../widgets/period/period_options_list.dart';
import '../widgets/period_switching_appbar.dart';

class ExpensesMainScreen extends StatefulWidget {
  @override
  _ExpensesMainScreenState createState() => _ExpensesMainScreenState();
}

class _ExpensesMainScreenState extends State<ExpensesMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PeriodSwitchingAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            PeriodOptionsList(),
            SizedBox(height: 10),
            CustomPieChart(),
            SizedBox(height: 10),
            DisplayTypeSelector(),
            SizedBox(height: 10),
            CategoriesList(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 320),
        child: FloatingActionButton(
          elevation: 0,
          onPressed: () {},
          backgroundColor: Theme.of(context).dialogTheme.backgroundColor!.withOpacity(0.5),
          child: Icon(Icons.add, color: Theme.of(context).iconTheme.color,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
