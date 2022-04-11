import 'package:flutter/material.dart';
import 'package:secondapp/pages/homePage.dart';
import '../button/homeButton.dart';
import '../items/specialItems.dart';
import '../items/mealsItem.dart';

class category extends StatelessWidget {
  const category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quick Foodie"),
      ),
      body: Container(
        height: 300,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Explore Menu",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                homeButton(),
              ],
            ),
            Text(
              "Special Items",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            specialItems(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Meals",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            //mealsItem(),
          ],
        ),
      ),
    );
  }
}
