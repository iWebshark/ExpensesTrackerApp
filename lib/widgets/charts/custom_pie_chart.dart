import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomPieChart extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'color': Color(0xFFA239FF),
      'value': 25.0,
    },
    {
      'color': Color(0xFF36A3FF),
      'value': 25.0,
    },
    {
      'color': Color(0xFF41C7A1),
      'value': 12.0,
    },
    {
      'color': Color(0xFFFF4A66),
      'value': 25.0,
    },
    {
      'color': Color(0xFFFFC946),
      'value': 13.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
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
                    'USD 1010,06',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 11),
                  Text(
                    'Budget',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'USD 1500',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          buildPieChart(borderedChart: false),
          buildPieChart(borderedChart: true),
        ],
      ),
    );
  }

  Widget buildPieChart({bool borderedChart = false}) {
    return PieChart(PieChartData(
      borderData: FlBorderData(
        show: true,
      ),
      centerSpaceRadius: borderedChart ? double.infinity : 91,
      startDegreeOffset: 90,
      sections: data
          .map((e) => PieChartSectionData(
                showTitle: false,
                value: e['value'],
                color: borderedChart ? e['color'].withOpacity(0.15) : e['color'],
                radius: borderedChart ? 30 : 8,
              ))
          .toList(),
    ));
  }
}
