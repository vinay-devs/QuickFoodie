import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'categoryPage.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 4000,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/Home page Background.png'),
              fit: BoxFit.fill),
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Column(
              children: [
                Text(
                  "The great times ",
                  style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
                ),
                Text(
                  " you can have ",
                  style: const TextStyle(
                      fontSize: 50, fontStyle: FontStyle.italic),
                ),
                Text(
                  " with great food.",
                  style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => category(),
                      ),
                    );
                  },
                  child: Text(
                    "Order Now!!",
                    style: TextStyle(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text(
                    "Our service will make you feel at home.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
