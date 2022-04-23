import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final _mycontroller = TextEditingController();

  // Future<http.StreamedResponse> loginUser() async {
  //   Map<String, String> requestBody = <String, String>{
  //     'regno': _mycontroller.text
  //   };
  //   var request = http.MultipartRequest(
  //       "POST",
  //       Uri.parse(
  //           'http://10.0.2.2:8888/FOOD-DELIVERY-WEBSITE/src/pages/get_user.php'))
  //     ..fields.addAll(requestBody);
  //   var response = await request.send();
  //   return response;
  // }

  @override
  Widget build(BuildContext context) {
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

              ElevatedButton(
                  child: const Text("Login"),
                  onPressed: () async {
                    Navigator.pushNamed(context, '/home');
                    // loginUser();
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setString('regno', _mycontroller.text);
                    Fluttertoast.showToast(msg: _mycontroller.text);
                  }),
              const Padding(
                padding: EdgeInsets.only(top: 4),
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
