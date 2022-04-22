import 'dart:ui';
import 'package:provider/provider.dart';
import 'package:secondapp/pages/TabbedPages.dart';
import 'package:secondapp/pages/categoryPage.dart';
import 'package:secondapp/pages/getStartPage.dart';
import 'package:secondapp/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'CartModel.dart';

void main() => {
      runApp(ChangeNotifierProvider(
        create: (context) => CartModel(),
        child: const QuickFoodie(),
      ))
    };

class QuickFoodie extends StatefulWidget {
  const QuickFoodie({Key? key}) : super(key: key);

  @override
  State<QuickFoodie> createState() => _QuickFoodieState();
}

class _QuickFoodieState extends State<QuickFoodie> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'QuickFoodie',
        initialRoute: '/getstarted',
        routes: {
          '/getstarted': (context) => Getstartpage(),
          '/login': (context) => Login(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/home': (context) => TabbedPages()
        });
  }
}
