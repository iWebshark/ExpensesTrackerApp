import 'package:flutter/material.dart';

class PeriodSwitchingAppBar extends StatefulWidget
    implements PreferredSizeWidget {
  @override
  _PeriodSwitchingAppBarState createState() => _PeriodSwitchingAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}

class _PeriodSwitchingAppBarState extends State<PeriodSwitchingAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_sharp)),
          TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStateColor.resolveWith(
                  (states) => Colors.grey.withOpacity(0.3)),
            ),
            onPressed: () {},
            child: Text(
              'July 01 - July 31',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp)),
        ],
      ),
    );
  }
}
