import 'dart:ui';
import './pages/getStartPage.dart';
import 'package:flutter/material.dart';
import 'widgets/startButton.dart';

void main() => {runApp(QuickFoodie())};

class QuickFoodie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: getStartPage());
  }
}
