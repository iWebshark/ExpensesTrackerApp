import 'package:expenses_app/widgets/buttons/simple_text_button.dart';
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

  void _onSelect(String option) {
    var periodIndex = _periods.indexOf(option);
    setState(() {
      _selectedIndex = periodIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _periods
            .map((option) => SimpleTextButton(
                  text: option,
                  onPressed: () => _onSelect(option),
                  textStyle: TextStyle(
                    color: _periods.indexOf(option) == _selectedIndex
                        ? Theme.of(context).textTheme.headline6!.color
                        : Colors.grey.withOpacity(0.8),
                    fontSize: 18,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
