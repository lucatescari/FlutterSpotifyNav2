import 'package:flutter/material.dart';
import 'package:flutterspotifynav2/screens/kochbuch/kochbuch_deep.dart';

class KochbuchHomeScreen extends StatelessWidget {
  const KochbuchHomeScreen();

  @override
  Widget build(BuildContext context) {
    void _goToDeeper() {
      print('navigating to deeper screen');
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const KochbuchDeepScreen()));
    }

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 100, left: 20),
        child: Column(
          children: [
            const Text('Kochbuch Home Screen'),
            ElevatedButton(
                onPressed: _goToDeeper,
                child: const Text('Go to kochbuch deeper'))
          ],
        ),
      ),
    );
  }
}
