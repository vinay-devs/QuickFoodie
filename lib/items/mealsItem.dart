import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../CartModel.dart';

class MealsItems extends StatelessWidget {
  const MealsItems({
    Key? key,
  }) : super(key: key);

  static List<Item> sampleItems = [
    Item(5, 'Chapathi Curry', 60, "images/mealsItems/Chapathi-Curry.png"),
    Item(6, 'Chicken Biriyani', 110, "images/mealsItems/Chicken Biriyani.png"),
    Item(7, 'Dosa Chutney', 40, "images/mealsItems/Dosa Chutney.png"),
    Item(8, 'Lunch Meal', 50, "images/mealsItems/Lunch Meal.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
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
