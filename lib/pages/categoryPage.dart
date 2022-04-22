import 'package:flutter/material.dart';
import 'package:secondapp/items/mealsItem.dart';
import 'package:secondapp/items/specialItems.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.all(12),
            child: const Text(
              "Special Items",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
        Container(
          child: const SpecialItems(),
          height: 400,
        ),
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            "Meals",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ),
        Container(
          child: const MealsItems(),
          height: 400,
        ),
      ],
    ));
  }
}
