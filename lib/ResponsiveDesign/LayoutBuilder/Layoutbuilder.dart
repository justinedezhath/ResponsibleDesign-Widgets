 import 'package:flutter/material.dart';

class Layoutbuilderexample extends StatelessWidget {
  const Layoutbuilderexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return Container(
            color: Colors.blue,
            child: const Text(
              'Wide Layout',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          );
        } else {
          return Container(
            color: Colors.green,
            child: const Text(
              'Narrow Layout',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          );
        }
      },
       ),
     ),
    );
  }
}