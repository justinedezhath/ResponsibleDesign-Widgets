 import 'package:flutter/material.dart';

class Responsivedesignexample extends StatelessWidget {
  const Responsivedesignexample ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Design Example'),
      ),
      body: Center(
        child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    height: 200,
                    child: const Center(
                      child: Text(
                        'Column 1',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                  ),
                  Expanded(child: Container(
                    color: Colors.green,
                    height: 200,
                    child : const Center(
                    child: Text(
                      'Column 2',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    )
                  ),
                  ),
              ],
            );
          } else {
            return Container(
              color: Colors.blue,
              height: 200,
              child: const Center(
                child: Text(
                  'Single Column',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            );
          }
        }
       )
      ),
    );
  }
}