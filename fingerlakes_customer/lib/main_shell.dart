import 'package:flutter/material.dart';

import 'coffee_theme.dart';
import 'package:fingerlakes_customer/screens/home_screen.dart';
import 'package:fingerlakes_customer/screens/shop_screen.dart';
import 'package:fingerlakes_customer/screens/loyalty_screen.dart';
import 'package:fingerlakes_customer/screens/about_screen.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int currentIndex = 0;
  String weeklyMessage = "The new flavor of the month is...BLUEBERRY COBBLER!\nStop into your local shop and grab a cup today!";

  final screens = <Widget>[
    HomeScreen(),
    ShopScreen(),
    LoyaltyScreen(),
    AboutScreen(),
  ];

  void switchTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoffeeTheme.backgroundColor,


      appBar: AppBar( 
        backgroundColor: CoffeeTheme.backgroundColor,
        toolbarHeight: 160,
        title: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 150, maxWidth: 150),
            child: IconButton(
            icon: Image(image: AssetImage('assets/finger_lakes_logo.png')),
            iconSize: 150,
            onPressed: () {
              switchTab(3);
            }
            ),
          ),
        ),
      ),

      body: screens[currentIndex],

      bottomNavigationBar: Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: CoffeeTheme.boxColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            switchTab(0);
                          },
                          child: Text('Home', style: currentIndex == 0 ? CoffeeTheme.inactiveTextStyle : CoffeeTheme.activeTextStyle),
                        ),
                        
                        TextButton(
                          onPressed: () {
                            switchTab(1);
                          },
                          child: Text('Shop', style: currentIndex == 0 ? CoffeeTheme.inactiveTextStyle : CoffeeTheme.activeTextStyle),
                        ),
                      
                      TextButton(
                          onPressed: () {
                            switchTab(2);
                          },
                          child: Text('Loyalty', style: currentIndex == 0 ? CoffeeTheme.inactiveTextStyle : CoffeeTheme.activeTextStyle),
                        )
                      ]
                    ),
                  ),
    );
  }
}