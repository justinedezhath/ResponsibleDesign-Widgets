 import 'package:flutter/material.dart';

class Layoutdebuggingexample extends StatelessWidget {
  const Layoutdebuggingexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Debugging Example'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.blue,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
           return Center(
            child: Text(
              'Width: ${constraints.maxWidth}\nHeight: ${constraints.maxHeight}',
              style: const TextStyle(fontSize: 18, color: Colors.white),
             ),
            ); 
          },
         ),
       ),
      ),
    );
  }
}