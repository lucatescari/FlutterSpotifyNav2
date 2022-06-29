import 'package:flutter/material.dart';

class KochbuchDeepScreen extends StatelessWidget {
  const KochbuchDeepScreen();

  void _navigateBack(BuildContext ctx) {
    Navigator.pop(ctx);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 100, left: 20),
        child: Column(
          children: [
            const Text(
                'this is the deeper kochbuch screen, there is some stuff going on here, this is a lot, very text, many yes yes.'),
            ElevatedButton(
                onPressed: () => _navigateBack(context),
                child: const Text('go back')),
          ],
        ),
      ),
    );
  }
}
