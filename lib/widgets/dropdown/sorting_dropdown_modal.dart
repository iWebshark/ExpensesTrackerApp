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
              // color: Color(0xFF181B24),
              color: Theme.of(context).dialogTheme.backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            width: 170,
            child: Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 75,
                        child: Icon(
                          Icons.add,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      Container(
                        width: 75,
                        child: Text(
                          'New',
                          style: TextStyle(
                              color: Theme.of(context).textTheme.headline6!.color,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  height: 2,
                  color: Theme.of(context)
                      .textTheme
                      .headline6!
                      .color!
                      .withOpacity(0.05),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 75,
                        child: Icon(
                          Icons.arrow_upward,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      Container(
                        width: 75,
                        child: Text(
                          'High %',
                          style: TextStyle(
                              color: Theme.of(context).textTheme.headline6!.color,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  height: 2,
                  color: Theme.of(context)
                      .textTheme
                      .headline6!
                      .color!
                      .withOpacity(0.05),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 75,
                        child: Icon(
                          Icons.arrow_downward,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      Container(
                        width: 75,
                        child: Text(
                          'Low %',
                          style: TextStyle(
                              color: Theme.of(context).textTheme.headline6!.color,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  height: 2,
                  color: Theme.of(context)
                      .textTheme
                      .headline6!
                      .color!
                      .withOpacity(0.05),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 75,
                        child: Icon(
                          Icons.grid_on,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      Container(
                        width: 75,
                        child: Text(
                          'Tiles',
                          style: TextStyle(
                              color: Theme.of(context).textTheme.headline6!.color,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
