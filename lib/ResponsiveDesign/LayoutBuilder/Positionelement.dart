 import 'package:flutter/material.dart';

class Positioningelementexample extends StatelessWidget {
  const Positioningelementexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioning Elements Example'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.blue,
          child: LayoutBuilder(
          builder: (BuildContext context,BoxConstraints constraints) {
            final textX = constraints.maxWidth/3.6;
            final textY = constraints.maxHeight/2.3;

            return Stack(
              children: [
                Positioned(
                  left: textX,
                  top: textY,
                  child: const Text(
                  'Positioned Text',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ), )
              ],
            );
          },
          ),
        ),
      ),
    );
  }
}