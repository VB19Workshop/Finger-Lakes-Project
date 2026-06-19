import 'package:flutter/material.dart';

Widget quickActions() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ElevatedButton(
        onPressed: () {
          // navigate to Find Store
        },
        child: const Text("Find Store"),
      ),
      ElevatedButton(
        onPressed: () {
          // navigate to Contact
        },
        child: const Text("Contact"),
      ),
    ],
  );
}