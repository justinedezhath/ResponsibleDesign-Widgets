 import 'package:flutter/material.dart';

class SafeAreaInsectExample extends StatelessWidget {
  const SafeAreaInsectExample({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final EdgeInsets safeareainsects = mediaQuery.padding;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Safe Area Insect Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Top Safe Area Insect: ${safeareainsects.top}',
            style: const TextStyle(fontSize: 18),
          ),
          Text(
            'Bottom Safe Area Insects: ${safeareainsects.bottom}',
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}