import 'package:flutter/material.dart';

import 'package:fingerlakes_customer/coffee_theme.dart';
import 'package:fingerlakes_customer/event_data.dart';

class EventHero extends StatelessWidget {
  final Event event;

  const EventHero(this.event, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          color: CoffeeTheme.boxColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: CoffeeTheme.boxBorderColor,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // IMAGE HEADER (THIS is where your image goes)
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Image.asset(
                'assets/placeholder_picture.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            // TEXT CONTENT
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Text(
                    event.date!,
                    style: CoffeeTheme.headerTextStyle,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    event.description!,
                    style: CoffeeTheme.standardTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}