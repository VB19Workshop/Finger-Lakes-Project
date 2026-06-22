import 'package:flutter/material.dart';

class CoffeeTheme {
  static const Color backgroundColor = Color(0xFF697aae);
  static const Color boxColor = Color(0xFF4E4038);
  static const Color boxBorderColor = Color.fromARGB(255, 46, 37, 32);
  static const Color specialBoxColor = Color(0xFFb2393b);

  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Color(0xFFFFDD32),
  );

  static const TextStyle headerTextStyle = TextStyle(
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    color: Color(0xFFfeee9c),
  );

  static const TextStyle standardTextStyle = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.normal,
    color: Color(0xFFFBFAF5),
  );

  static const TextStyle inactiveTextStyle = TextStyle(
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.normal,
    color: Color(0xFFFBFAF5),
  );

  static const TextStyle activeTextStyle = TextStyle(
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.normal,
    color: specialBoxColor,
  );

}