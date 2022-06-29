import 'package:flutter/material.dart';
import 'package:flutterspotifynav2/screens/recipe/recipe_home.dart';
import 'package:flutterspotifynav2/screens/recipe/recipe_news.dart';

final GlobalKey<NavigatorState> recipeNavigatorKey =
    GlobalKey<NavigatorState>();

class RecipeScreen extends StatelessWidget {
  const RecipeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: recipeNavigatorKey,
        pages: const [
          MaterialPage(
            key: ValueKey('RecipeHomeScreen'),
            child: RecipeHomeScreen(),
          ),
        ],
        onPopPage: (route, result) => route.didPop(result),
        //onPopPage: null,
      ),
    );
  }
}
