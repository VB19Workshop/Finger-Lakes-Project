import 'package:fingerlakes_customer/coffee_theme.dart';
import 'package:flutter/material.dart';

import '../widgets/weekly_message_widget.dart';
import '../widgets/quick_actions_widget.dart';
import 'package:fingerlakes_customer/event_data.dart';
import 'package:fingerlakes_customer/widgets/event_hero.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController _pageController;

  final List<Event> events = [
    Event(
      date: "Monday 6/22",
      title: "Cold Brew Special",
      description: "Half price cold brew all day",
    ),
    Event(
      date: "Tuesday 6/23",
      title: "Latte Day",
      description: "Discounted flavored lattes",
    ),
    Event(
      date: "Wednesday 6/24",
      title: "Bean Spotlight",
      description: "Featured roast of the week",
    ),
    Event(
      date: "Thursday 6/25",
      title: "Bean Spotlight",
      description: "Featured roast of the week",
    ),
    Event(
      date: "Friday 6/26",
      title: "Bean Spotlight",
      description: "Featured roast of the week",
    ),
    Event(
      date: "Saturday 6/27",
      title: "Bean Spotlight",
      description: "Featured roast of the week",
    ),
    Event(
      date: "Sunday 6/28",
      title: "Bean Spotlight",
      description: "Featured roast of the week",
    ),
  ];

  int eventIndex = 0;
  Event get currentEvent => events[eventIndex];

  @override
  void initState() {
    super.initState();

    final todayIndex = DateTime.now().weekday - 1;

    _pageController = PageController(
      initialPage: todayIndex,
    );

    eventIndex = todayIndex;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoffeeTheme.backgroundColor,
      body: Column(
        children: [
          weeklyMessage(),
          quickActions(),
          const SizedBox(height: 10),

          // THIS is your swipeable hero area
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: events.length,
              onPageChanged: (index) {
                setState(() {
                  eventIndex = index;
                });
              },
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: EventHero(events[index]),
        );
      }
            ),
          ),
        ],
      ),
    );
  }

  int getTodayIndex() {
    return DateTime.now().weekday - 1;
  }

}