import 'package:expenses_app/widgets/icons/category_icon.dart';
import 'package:flutter/material.dart';

class CategoryBarItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final String name;
  final double percentage;
  final double value;

  CategoryBarItem({
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.name,
    required this.percentage,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF181B24).withOpacity(0.5),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              width: MediaQuery.of(context).size.width * percentage,
              height: 72,
            ),
            ListTile(
              leading: CategoryIcon(
                icon: icon,
                iconColor: iconColor,
                backgroundColor: backgroundColor,
              ),
              contentPadding: EdgeInsets.only(right: 5, left: 13),
              title: Text(
                name,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text('${percentage*100}%',
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.w100)),
              trailing: Text('USD $value',
                  style: TextStyle(color: Colors.white, fontSize: 17)),
            ),
          ],
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
