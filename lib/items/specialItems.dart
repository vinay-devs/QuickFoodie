import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../CartModel.dart';

class SpecialItems extends StatelessWidget {
  const SpecialItems({
    Key? key,
  }) : super(key: key);

  static List<Item> sampleItems = [
    Item(1, 'Chettinad Fishfry', 110,
        "images/specialItems/Chettinad Fishfry.png"),
    Item(2, 'Chicken Pasta', 110, "images/specialItems/Chicken_Pasta.png"),
    Item(3, 'Lemon Chicken', 70, "images/specialItems/Lemon Chicken.png"),
    Item(4, 'Paneer Masala', 60, "images/specialItems/Paneer Masala.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      //child: Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 5, bottom: 20),
        children: [
          ...sampleItems.map((element) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 4.0,
                        blurRadius: 4.0,
                        color: Colors.black12)
                  ]),
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ClipRRect(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(120),
                      child: Image.asset(element.url),
                    ),
                  ),
                  Text(
                    element.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Rs." + element.price.toString()),
                  ElevatedButton(
                      child: Text("Add to Cart"),
                      onPressed: () {
                        Provider.of<CartModel>(context, listen: false)
                            .add(element);
                      })
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}


//  