import 'package:flutter/material.dart';
import 'package:secondapp/pages/homePage.dart';

class login extends StatelessWidget {
  const login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            children: [
              Image.asset('images/loginBg.png'),
              Text(
                "Log In",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.orange,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Registration Number",
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 18, 0, 20),
                child: RaisedButton(
                  child: Text("Login"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const homePage(),
                      ),
                    );
                  },
                ),
              ),
              Text("*only accessible to students and faculties of VIT Bhopal*")
            ],
          ),
        ),
      ),
    );
  }
}
