import 'package:flutter/material.dart';
import 'package:transaction/ui/landing_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transaction App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(24, 180, 178, 1),
        accentColor: Color.fromRGBO(255, 201, 0, 1),
        scaffoldBackgroundColor: Color.fromRGBO(248, 249, 250, 1),
        fontFamily: 'NunitoSans',
        textTheme: TextTheme(body1: TextStyle(color: Color.fromRGBO(68, 68, 68, 1))),
        iconTheme: IconThemeData(color: Color.fromRGBO(68, 68, 68, 1))
      ),
      home: LandingPage(),
    );
  }
}