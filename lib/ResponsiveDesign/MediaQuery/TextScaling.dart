 import 'package:flutter/material.dart';

class TextScalingExample extends StatelessWidget {
  const TextScalingExample({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    // Get the text Scale factor from the MediaQuery
    final textScaleFactor = mediaQuery.textScaleFactor;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Scaling Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Text Scaling Example',
              style: TextStyle(
                fontSize: 20.0 *textScaleFactor,
              ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'This is some text that will scale with the user\'s preferred text size.',
                style: TextStyle(
                  fontSize: 16.0 *textScaleFactor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}