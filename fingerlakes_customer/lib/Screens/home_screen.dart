import 'package:flutter/material.dart';

import '../widgets/weekly_message_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int eventTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          children: [
            weeklyMessage(),
          ],
        ),
    );
  }

  void switchEventTab(int index){
    setState(() {
      eventTabIndex = index;
    });
  }
}