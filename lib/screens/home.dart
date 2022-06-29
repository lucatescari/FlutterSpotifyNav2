import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterspotifynav2/screens/kochbuch/kochbuch.dart';
import 'package:flutterspotifynav2/screens/recipe/recipe.dart';
import 'package:flutterspotifynav2/uiwidgets/customtabbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  void tabBarClickedCallback(int index) {
    print('tabBarClickedCallback: $index');

    setState(() {
      selectedindex = index;
    });
  }

  final List<Widget> mainTabScreens = <Widget>[
    const RecipeScreen(),
    const KochbuchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: mainTabScreens.elementAt(selectedindex),
      ),
      bottomNavigationBar: CustomTabBar(tabBarClickedCallback, selectedindex),
    );
  }
}
