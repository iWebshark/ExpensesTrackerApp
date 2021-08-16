import 'package:expenses_app/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ExpensesMainScreen extends StatefulWidget {
  @override
  _ExpensesMainScreenState createState() => _ExpensesMainScreenState();
}

class _ExpensesMainScreenState extends State<ExpensesMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
            TextButton(
                onPressed: () {},
                child: Text(
                  'July 01 - July 31',
                  style: TextStyle(color: Colors.white),
                )),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          ],
        ),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
