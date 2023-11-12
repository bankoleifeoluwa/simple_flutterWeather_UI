import 'package:flutter/material.dart';
import 'package:weather_ui/mainPage.dart';

void main() {
  runApp(
    MaterialApp(home: Myhome()), // use materialapp
  );
}

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}
