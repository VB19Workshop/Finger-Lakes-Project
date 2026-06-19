import 'package:flutter/material.dart';

Widget weeklyMessage() {
  return Container(
    margin: const EdgeInsets.all(12),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    child: const Text(
      "The new flavor of the month is...BLUEBERRY COBBLER!\nStop into your local shop and grab a cup today!",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16),
      ),
  );
}