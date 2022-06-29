import 'package:flutter/material.dart';
import 'package:flutterspotifynav2/main.dart';
import 'package:flutterspotifynav2/screens/kochbuch/kochbuch.dart';
import 'package:flutterspotifynav2/screens/kochbuch/kochbuch_deep.dart';
import 'package:flutterspotifynav2/screens/recipe_fullscreen.dart';

class RecipeNewsScreen extends StatelessWidget {
  const RecipeNewsScreen();

  void _navigateBack(BuildContext ctx) {
    Navigator.pop(ctx);
  }

  void _navigateToFullscreenPage(BuildContext ctx) {
    appNavigatorKey.currentState?.push(
        MaterialPageRoute(builder: (ctx) => const RecipeFullscreenScreen()));
  }

  void _navigateToKochbuchPage(BuildContext ctx) {
    kochbuchNavigatorKey.currentState
        ?.push(MaterialPageRoute(builder: (ctx) => const KochbuchDeepScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 100, left: 20),
        child: Column(
          children: [
            const Text('A lot of news here, yes yes'),
            ElevatedButton(
                onPressed: () => _navigateBack(context),
                child: const Text('go back')),
            ElevatedButton(
                onPressed: () => _navigateToFullscreenPage(context),
                child: const Text(
                    'Open a full screen page from the main navigator')),
            ElevatedButton(
                onPressed: () => _navigateToKochbuchPage(context),
                child: const Text('Open a page from the other tab navigator')),
          ],
        ),
      ),
    );
  }
}
