import 'package:flutter/material.dart';

import 'package:fingerlakes_customer/store_profile.dart';
import 'package:fingerlakes_customer/widgets/store_hero.dart';
import 'package:fingerlakes_customer/coffee_theme.dart';

class FindStore extends StatefulWidget {
  const FindStore({super.key});

  @override
  State<FindStore> createState() => _FindStoreState();
}

class _FindStoreState extends State<FindStore> {
  late final PageController _pageController;

  int storeIndex = 0;

  // one scroll controller per page would be ideal long-term,
  // but this works fine for single visible page usage
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 250), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoffeeTheme.backgroundColor,
      body: Column(
        children: [
          const SizedBox(height: 10),

          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: StoreAccess.stores.length,
              onPageChanged: (index) {
                setState(() {
                  storeIndex = index;
                });
              },

              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  controller: _scrollController,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: StoreHero(
                      StoreAccess.stores[index],
                      onExpandChanged: _scrollToBottom,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}