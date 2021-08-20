import 'package:expenses_app/widgets/buttons/simple_text_button.dart';
import 'package:expenses_app/widgets/dropdown/sorting_dropdown_modal.dart';
import 'package:flutter/material.dart';

class DisplayTypeSelector extends StatefulWidget {
  const DisplayTypeSelector({Key? key}) : super(key: key);

  @override
  _DisplayTypeSelectorState createState() => _DisplayTypeSelectorState();
}

class _DisplayTypeSelectorState extends State<DisplayTypeSelector> {
  var _selectedIndex = 0;
  final List<String> _options = [
    'Expenses',
    'Income',
  ];

  void _onSelect(String option) {
    var periodIndex = _options.indexOf(option);
    setState(() {
      _selectedIndex = periodIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            // TODO: Refactor this one
            children: _options
                .map((option) => SimpleTextButton(
                      text: option,
                      onPressed: () => _onSelect(option),
                      padding: EdgeInsets.only(left: 0, right: 25),
                      textStyle: TextStyle(
                        fontSize: 21,
                        color: _options.indexOf(option) == _selectedIndex
                            ? Colors.white
                            : Colors.grey.withOpacity(0.7),
                      ),
                    ))
                .toList(),
          ),
        ),
        IconButton(
            onPressed: () {
              showFiltersDialog();
            },
            icon: Icon(
              Icons.filter_list,
              color: Colors.white,
              size: 30,
            ))
      ],
    );
  }

  void showFiltersDialog() {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => SortingDropdownModal(),
    );
  }
}
