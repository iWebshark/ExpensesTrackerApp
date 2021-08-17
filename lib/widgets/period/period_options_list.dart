import 'package:expenses_app/widgets/period/period_option.dart';
import 'package:flutter/material.dart';

class PeriodOptionsList extends StatefulWidget {
  const PeriodOptionsList({Key? key}) : super(key: key);

  @override
  _PeriodOptionsListState createState() => _PeriodOptionsListState();
}

class _PeriodOptionsListState extends State<PeriodOptionsList> {
  var _selectedIndex = 2;
  final List<String> _periods = [
    'Day',
    'Week',
    'Month',
    'Year',
    'Period',
  ];

  void _onSelect(String period) {
    var periodIndex = _periods.indexOf(period);
    setState(() {
      _selectedIndex = periodIndex;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _periods
            .map((period) => PeriodOption(
                  text: period,
                  isSelected: _periods.indexOf(period) == _selectedIndex,
                  onTap: () => _onSelect(period),
                ))
            .toList(),
      ),
    );
  }
}
