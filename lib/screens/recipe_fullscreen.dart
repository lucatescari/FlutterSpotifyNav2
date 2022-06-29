import 'package:flutter/material.dart';
import 'package:flutterspotifynav2/services/navigationservice.dart';

class RecipeFullscreenScreen extends StatelessWidget {
  const RecipeFullscreenScreen();

  void _navigateBack(BuildContext ctx) {
    NavigationService().goBackApp(ctx);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 100, left: 20),
        child: Column(
          children: [
            const Text('I am a fullscreen thingymajig yes yes very cool'),
            ElevatedButton(
                onPressed: () => _navigateBack(context),
                child: const Text('go back')),
          ],
        ),
      ),
    );
  }
}
