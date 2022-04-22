import 'package:flutter/material.dart';

class startButton extends StatelessWidget {
  const startButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1.0),
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text("Get Started"),
        color: Colors.purple,
        textColor: Colors.white,
      ),
    );
  }
}
