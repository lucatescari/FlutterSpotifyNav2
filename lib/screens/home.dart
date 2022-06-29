import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterspotifynav2/screens/kochbuch/kochbuch.dart';
import 'package:flutterspotifynav2/screens/recipe/recipe.dart';
import 'package:flutterspotifynav2/services/navigationservice.dart';
import 'package:flutterspotifynav2/uiwidgets/customtabbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  void tabBarClickedCallback(int index) {
    print('clicked tabbar, setting it to $index');
    NavigationService().setCurrentTabIdStream(index);
  }

  final List<Widget> mainTabScreens = <Widget>[
    const RecipeScreen(),
    const KochbuchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder<int>(
            stream: NavigationService().getCurrentTabIdStream().stream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                return mainTabScreens.elementAt(snapshot.data ?? 0);
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return mainTabScreens.elementAt(0);
              } else {
                print('waiting for first value');
                return const SizedBox.shrink();
              }
            }),
      ),
      bottomNavigationBar: StreamBuilder<int>(
          stream: NavigationService().getCurrentTabIdStream().stream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              return CustomTabBar(tabBarClickedCallback, (snapshot.data ?? 0));
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return CustomTabBar(tabBarClickedCallback, 0);
            } else {
              print('waiting for first value');
              return const SizedBox.shrink();
            }
          }),
    );
  }
}
