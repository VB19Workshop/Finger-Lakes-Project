import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

import 'package:fingerlakes_customer/coffee_theme.dart';
import 'package:fingerlakes_customer/store_profile.dart';

class StoreHero extends StatefulWidget {
  final StoreProfile store;
  final VoidCallback? onExpandChanged;

  const StoreHero(
    this.store, {
    super.key,
    this.onExpandChanged,
  });

  @override
  State<StoreHero> createState() => _StoreHeroState();
}

class _StoreHeroState extends State<StoreHero> {
  bool showSchedule = false;

  void _toggleSchedule() {
    setState(() {
      showSchedule = !showSchedule;
    });

    widget.onExpandChanged?.call();
  }

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
            color: Colors.black.withValues(alpha: 0.25),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12),
            ),
            child: Image.asset(
              widget.store.imagePath,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(
                  widget.store.name,
                  style: CoffeeTheme.titleTextStyle,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 4),

                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => callNumber(widget.store.phoneNumber),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        widget.store.phoneNumber,
                        style: CoffeeTheme.subtitleTextStyle,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  widget.store.description,
                  style: CoffeeTheme.standardTextStyle,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 12),

                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => openMap(widget.store.address),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        widget.store.address,
                        style: CoffeeTheme.subtitleTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                GestureDetector(
                  onTap: _toggleSchedule,
                  child: Text(
                    showSchedule ? "[Hide Schedule]" : "[See Schedule]",
                    style: CoffeeTheme.linkTextStyle,
                  ),
                ),

                const SizedBox(height: 6),

                AnimatedSize(
                  duration: const Duration(milliseconds: 200),
                  child: showSchedule
                      ? Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            widget.store.schedule,
                            style: CoffeeTheme.standardTextStyle,
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> callNumber(String phone) async {
    final uri = Uri.parse('tel:$phone');
    HapticFeedback.lightImpact();

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  Future<void> openMap(String address) async {
    final query = Uri.encodeComponent(address);

    final uri = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$query',
    );

    HapticFeedback.lightImpact();

    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}