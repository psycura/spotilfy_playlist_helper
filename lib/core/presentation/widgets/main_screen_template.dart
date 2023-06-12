import 'package:flutter/material.dart';

class MainScreenTemplate extends StatelessWidget {
  static const String tag = 'MainScreenTemplate';

  final Widget mainNavigation;
  final Widget playlistNavigation;
  final Widget playerWidget;
  final Widget mainContent;

  const MainScreenTemplate({
    required this.mainNavigation,
    required this.playlistNavigation,
    required this.playerWidget,
    required this.mainContent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Card(child: mainNavigation),
                        Expanded(child: Card(child: playlistNavigation)),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Card(child: mainContent),
                  ),
                ],
              ),
            ),
            Card(child: playerWidget),
          ],
        ),
      ),
    );
  }
}
