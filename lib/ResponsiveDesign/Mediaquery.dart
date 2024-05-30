 import 'package:flutter/material.dart';

class MediaQueryDeviceInfoExample extends StatelessWidget {
  const MediaQueryDeviceInfoExample({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final screensize =mediaQuery.size;
    final Orientation =mediaQuery.orientation;
    final pixelRatio =mediaQuery.devicePixelRatio;


    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          width: screensize.width-100,
          child: Text(
            'Screen Size: $screensize/n'
            'Orientation: $Orientation/n'
            'Pixel Ratio: $pixelRatio',
          ),
        ),
      ),
    );
  }
}