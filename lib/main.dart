import 'package:flutter/material.dart';
import 'package:transaction/ui/landing_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transaction App',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(24, 180, 178, 1),
        accentColor: Color.fromRGBO(255, 201, 0, 1)
      ),
      home: LandingPage(),
    );
  }
}