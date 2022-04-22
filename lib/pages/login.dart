import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:secondapp/pages/homePage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  Future<http.StreamedResponse> loginUser() async {
    Map<String, String> requestBody = <String, String>{'regno': regno};
    var request = http.MultipartRequest(
        "POST",
        Uri.parse(
            'http://10.0.2.2:8888/FOOD-DELIVERY-WEBSITE/src/pages/get_user.php'))
      ..fields.addAll(requestBody);
    var response = await request.send();
    return response;
  }

  String regno = '';
  @override
  Widget build(BuildContext context) {
    var _mycontroller = new TextEditingController();
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: SingleChildScrollView(
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
                  onChanged: (val) => regno = val,
                  controller: _mycontroller,
                ),
              ),
              FlutterPwValidator(
                  width: 400,
                  height: 150,
                  minLength: 10,
                  onSuccess: () => {Text("Success")},
                  controller: _mycontroller),
              Padding(padding: EdgeInsets.zero),
              // TextFormField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: "Password",
              //   ),
              // ),

              RaisedButton(
                  child: Text("Login"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const homePage(),
                      ),
                    );
                    print(regno);
                    loginUser();
                    Fluttertoast.showToast(msg: regno);
                  }),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                    "*only accessible to students and faculties of VIT Bhopal*"),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
