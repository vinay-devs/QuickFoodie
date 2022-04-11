import 'package:flutter/material.dart';
import '../widgets/startButton.dart';

class getStartPage extends StatelessWidget {
  const getStartPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: 1080,
                height: 600,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/startpage.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Have _ _ _",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Good Food",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Keep _ _ _",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Good Mood!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          startButton(),
          Image.asset('images/quickfoodie logo.png')
        ],
      ),
    );
  }
}
