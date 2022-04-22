import 'package:flutter/material.dart';

class mealsItem extends StatelessWidget {
  const mealsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: ListView(
        children: <Widget>[
          Container(
            height: 200,
            child: Image.asset("images/mealsItems/Chapathi-Curry.png"),
          )
        ],
      ),
    );
  }
}
