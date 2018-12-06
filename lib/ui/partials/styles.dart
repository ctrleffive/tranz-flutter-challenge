import 'package:flutter/material.dart';

const Gradient appGradient = LinearGradient(
  colors: [
    Color.fromRGBO(72, 229, 201, 1),
    Color.fromRGBO(0, 156, 166, 1),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

Widget gradientDecoration = Positioned(
  right: 30,
  bottom: 30,
  child: Image(
    image: AssetImage('assets/images/landing_page_decoration.png'),
    width: 130,
    height: 86,
  ),
);