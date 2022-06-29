import 'package:flutter/material.dart';
import 'package:flutterspotifynav2/screens/home.dart';

Navigator appNavigator = Navigator(
  pages: const [
    MaterialPage(
      key: ValueKey('HomeScreen'),
      child: HomeScreen(),
    )
  ],
  onPopPage: (route, result) => route.didPop(result),
);
