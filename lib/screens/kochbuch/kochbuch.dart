import 'package:flutter/material.dart';
import 'package:flutterspotifynav2/screens/kochbuch/kochbuch_home.dart';

final GlobalKey<NavigatorState> kochbuchNavigatorKey =
    GlobalKey<NavigatorState>();

class KochbuchScreen extends StatelessWidget {
  const KochbuchScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: kochbuchNavigatorKey,
        pages: const [
          MaterialPage(
            key: ValueKey('KochbuchHomeScreen'),
            child: KochbuchHomeScreen(),
          ),
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}
