import 'package:expenses_app/providers/expenses/expenses_provider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomPieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<ExpensesProvider>(context);
    return Container(
      height: 220,
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Text(
                    'Expenses',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'USD ${data.total}',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.headline6!.color,
                        fontSize: 18),
                  ),
                  SizedBox(height: 11),
                  Text(
                    'Budget',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'USD 1500',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.headline6!.color,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          buildPieChart(borderedChart: false, context: context),
          buildPieChart(borderedChart: true, context: context),
        ],
      ),
    );
  }

  Widget buildPieChart(
      {bool borderedChart = false, required BuildContext context}) {
    final data = Provider.of<ExpensesProvider>(context);
    return PieChart(PieChartData(
      borderData: FlBorderData(
        show: false,
      ),
      centerSpaceRadius: borderedChart ? double.infinity : 91,
      startDegreeOffset: 90,
      sections: data.categories.entries
          .map((e) => PieChartSectionData(
                showTitle: false,
                value: e.value,
                color: borderedChart
                    ? e.key.categoryIcon.iconColor.withOpacity(0.15)
                    : e.key.categoryIcon.iconColor,
                radius: borderedChart ? 30 : 8,
              ))
          .toList(),
    ));
  }
}
