import 'package:flutter/material.dart';

class Customwidgetsizingexample extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widget Sizing Example'),
      ),
      body: Center(
         child: Container(
          width: 200,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              // Calculate the custom widget's width and height based on constraints
            double customwidgetwidth = constraints.maxWidth * 0.7;
            double customwidgetheight = constraints.maxHeight * 0.5;

            return CustomSizedWidget(
              width: customwidgetwidth,
              height: customwidgetheight,
            );
          },
          ),
         ),
      ),
    );
  }
}

class CustomSizedWidget extends StatelessWidget {
  final double width;
  final double height;

  CustomSizedWidget({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Custom Widget',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}

