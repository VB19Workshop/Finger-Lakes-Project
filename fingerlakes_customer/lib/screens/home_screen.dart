import 'package:flutter/material.dart';

import '../widgets/weekly_message_widget.dart';
import '../widgets/quick_actions_widget.dart';
import 'package:fingerlakes_customer/event_data.dart';
import 'package:fingerlakes_customer/widgets/event_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showNewEvents = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          children: [
            weeklyMessage(),
            quickActions(),
            const SizedBox(height: 10),
            eventToggle(),
            eventList(),
          ],
        ),
    );
  }

  Widget eventList() {
    final events = showNewEvents ? newEvents : standardEvents;
    
    return Expanded(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return Center(
            child: EventTile(events[index]),
          );
        },
      ),
    );
  }

  Widget eventToggle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () => setState(() => showNewEvents = true),
          child: Text(
            "New",
            style: TextStyle(
              color: showNewEvents ? Colors.yellow : Colors.grey,
            ),
          ),
        ),
        TextButton(
          onPressed: () => setState(() => showNewEvents = false),
          child: Text(
            "Standard",
            style: TextStyle(
              color: !showNewEvents ? Colors.yellow : Colors.grey,
            ),
          ),
        ),
      ],
    );
  }

  void toggleEvents(bool value) {
    setState(() {
      showNewEvents = value;
    });
  }
}