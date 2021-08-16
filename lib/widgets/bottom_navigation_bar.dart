import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1,
            color: Color(0xFFEBEEF8).withOpacity(0.1),
          ),
        ),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Accounts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: 'Expenses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.compare_arrows),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
