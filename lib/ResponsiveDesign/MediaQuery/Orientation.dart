 import 'package:flutter/material.dart';

class OrientationHandlingExample extends StatelessWidget {
  const OrientationHandlingExample({super.key});

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);

    final orientation = mediaQuery.orientation;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientation Handling Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Current Orientation: ${orientation == Orientation.portrait ? 'Protrait' : 'Landscape'}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            if(orientation == Orientation.portrait)
            const Text(
              'This is portrait mode content.',
              style: TextStyle(fontSize: 18),
            ),
            if (orientation == Orientation.landscape)
            const Text(
              'This is landscape mode content.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}