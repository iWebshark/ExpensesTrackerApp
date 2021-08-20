import 'package:flutter/material.dart';

class SortingDropdownModal extends StatelessWidget {
  const SortingDropdownModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 20,
          top: MediaQuery.of(context).size.height / 2 - 45,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF181B24),
              borderRadius:
              BorderRadius.all(Radius.circular(10)),
            ),
            width: 170,
            child: Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'New',
                        style: TextStyle(
                            color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
                Divider(thickness: 2, height: 2, color: Color(0xFF21242E),),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'High %',
                        style: TextStyle(
                            color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
                Divider(thickness: 2, height: 2, color: Color(0xFF21242E),),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'Low %',
                        style: TextStyle(
                            color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
                Divider(thickness: 2, height: 2, color: Color(0xFF21242E),),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.grid_on,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'Tiles',
                        style: TextStyle(
                            color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );;
  }
}
