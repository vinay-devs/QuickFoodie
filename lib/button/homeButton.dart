import 'package:flutter/material.dart';
import '../pages/homePage.dart';

class homeButton extends StatelessWidget {
  const homeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => (homePage()),
          ),
        );
      }),
      icon: Icon(Icons.home),
      label: Text(""),
    );
  }
}
