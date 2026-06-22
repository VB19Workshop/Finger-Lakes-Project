import 'package:fingerlakes_customer/coffee_theme.dart';
import 'package:flutter/material.dart';

Widget weeklyMessage() {
  return Container(
    margin: const EdgeInsets.all(12),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: CoffeeTheme.boxColor,
      borderRadius: BorderRadius.circular(16),
    ),
    child: const Text(
      "The new flavor of the month is...BLUEBERRY COBBLER!\nStop into your local shop and grab a cup today!",
      textAlign: TextAlign.center,
      style: CoffeeTheme.standardTextStyle,
      ),
  );
}