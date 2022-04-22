import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/startButton.dart';

class Getstartpage extends StatefulWidget {
  const Getstartpage({Key? key}) : super(key: key);

  @override
  _GetstartpageState createState() => _GetstartpageState();
}

class _GetstartpageState extends State<Getstartpage> {
  Future<void> checkLogin() async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    final String? regno = prefs.getString('regno');
    if (regno != null) {
      print("REGNO" + regno);
      Navigator.pushNamed(context, '/home');
    }
  }

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

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
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/startpage.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Column(
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
              )
            ],
          ),
          const startButton(),
          Image.asset('images/quickfoodie logo.png')
        ],
      ),
    );
  }
}
