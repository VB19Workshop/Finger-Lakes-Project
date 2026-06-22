import 'package:flutter/material.dart';
import 'package:fingerlakes_customer/coffee_theme.dart';

Widget quickActions() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [

      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: CoffeeTheme.specialBoxColor,
        ),

        onPressed: () {
          // navigate to Find Store
        },
        child: const Text("Find Store", style: CoffeeTheme.standardTextStyle),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: CoffeeTheme.specialBoxColor,
        ),

        onPressed: () {
          // navigate to Contact
        },
        child: const Text("Contact", style: CoffeeTheme.standardTextStyle),
      ),
    ],
  );
}