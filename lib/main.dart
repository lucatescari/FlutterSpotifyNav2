import 'package:flutter/material.dart';
import 'package:flutterspotifynav2/navigators/appnavigator.dart';

import './screens/home.dart';
import './theming/maintheme.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: appNavigatorKey,
      theme: mainTheme,
      home: const HomeScreen(),
    );
  }
}
