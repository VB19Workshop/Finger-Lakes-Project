import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  final Map<String, String> event;

  const EventTile(this.event, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300, // gives it a nice card width
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Card(
          child: ListTile(
            title: Center(child: Text(event["day"]!)),
            subtitle: Center(child: Text(event["event"]!)),
          ),
        ),
      ),
    );
  }
}