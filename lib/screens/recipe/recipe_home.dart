import 'package:flutter/material.dart';
import 'package:flutterspotifynav2/screens/recipe/recipe_news.dart';
import 'package:flutterspotifynav2/services/navigationservice.dart';

class RecipeHomeScreen extends StatelessWidget {
  const RecipeHomeScreen();

  @override
  Widget build(BuildContext context) {
    void _goToNews() {
      print('navigating to news screen');
      NavigationService()
          .navigateToRecipeScreen(context, const RecipeNewsScreen());
    }

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 100, left: 20),
        child: Column(
          children: [
            const Text('Recipe Home Screen'),
            ElevatedButton(
                onPressed: _goToNews, child: const Text('Go to recipe news'))
          ],
        ),
      ),
    );
  }
}
