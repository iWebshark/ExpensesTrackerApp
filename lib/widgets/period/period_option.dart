import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PeriodOption extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  PeriodOption({
    required this.text,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey.withOpacity(0.7),
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
