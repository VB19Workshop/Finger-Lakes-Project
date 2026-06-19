import 'package:flutter/material.dart';

import 'coffee_theme.dart';
import 'home_screen.dart';
import 'shop_screen.dart';
import 'loyalty_screen.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int currentIndex = 0;

  final screens = <Widget>[
    HomeScreen(),
    ShopScreen(),
    LoyaltyScreen(),
  ];

  void switchTab(int index) {
    setState(() {
      currentIndex = index;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: CoffeeTheme.navboxColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            switchTab(0);
                          },
                          child: Text('Home', style: CoffeeTheme.standardTextStyle),
                        ),
                        
                        TextButton(
                          onPressed: () {
                            switchTab(1);
                          },
                          child: Text('Shop', style: CoffeeTheme.standardTextStyle),
                        ),
                      
                      TextButton(
                          onPressed: () {
                            switchTab(2);
                          },
                          child: Text('Loyalty', style: CoffeeTheme.standardTextStyle),
                        )
                      ]
                    ),
                  ),
    );
  }
}