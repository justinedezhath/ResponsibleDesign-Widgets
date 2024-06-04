 import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Aspectratioexample extends StatelessWidget {
  const Aspectratioexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aspect Ratio Inforcement Example'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {            
          final aspectRatio = 16/9;
          final height = constraints.maxWidth/aspectRatio;

          print("width :"+constraints.maxWidth.toString() + "height :"+height.toString());

          return Container(
            width: constraints.maxWidth,
            height: height,
            color: Colors.blue,
            child: Center(
              child: Image.network(
                "https://scaler.com/topics/images/use-of-placeholder-in-a-form.webp",
                fit:BoxFit.cover,
              ),
            ),
          );
          }),
        ),
      ),
    );
  }
}