 import 'package:flutter/material.dart';

class Adaptivetextsizingexample extends StatelessWidget {
  const Adaptivetextsizingexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adaptive Text Sizing Example'),
      ),
      body: Center(
        child: Container(
          width: 200,
          child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
           double fontsize =constraints.maxWidth/10;
           String text ='Adaptive Text Sizing';

           return Text(
            text,
            style: TextStyle(
              fontSize: fontsize,
            ),
           );
          }),
        ),
      ),
    );
  }
}