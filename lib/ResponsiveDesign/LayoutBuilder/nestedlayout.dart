import 'package:flutter/material.dart';

class Nestedlayoutexample extends StatelessWidget {
  const Nestedlayoutexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested Layout Builder Example'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.blue,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints parentconstraints) {
            return LayoutBuilder(builder: (BuildContext context, BoxConstraints childconstraints) {
              String message = 'Parent Constraints:\n'
              'Width: ${parentconstraints.maxWidth}\n'
              'Height: ${parentconstraints.maxHeight}\n\n'
              'Child Constraints:\n'
              'Width: ${childconstraints.maxWidth}\n'
              'Height: ${childconstraints.maxHeight}';

              return Center(
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              );
            },
           );
          },
         ),
        ),
      ),
    );
  }
}