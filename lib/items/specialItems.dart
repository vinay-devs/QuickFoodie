import 'package:flutter/material.dart';

class specialItems extends StatelessWidget {
  const specialItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      height: 190,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 5),
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 8),
            child: Expanded(
              child: Column(
                children: [
                  Image.asset("images/specialItems/Chettinad Fishfry.png"),
                  Text(
                    "Chettinad Fish fry - Rs.110",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 8),
            child: Column(
              children: [
                Image.asset("images/specialItems/Chicken_Pasta.png"),
                Text(
                  "Chicken Pasta - Rs.140 ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 8),
            child: Column(
              children: [
                Image.asset("images/specialItems/Lemon Chicken.png"),
                Text(
                  "Lemon Chicken - Rs.120",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 8),
            child: Column(
              children: [
                Image.asset("images/specialItems/Paneer Masala.png"),
                Text(
                  "Paneer Masala - Rs.100",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
