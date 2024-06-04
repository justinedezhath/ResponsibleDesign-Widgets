import 'package:flutter/material.dart';
import 'package:responsivedesign/ResponsiveDesign/LayoutBuilder/Layoutdebugging.dart';
import 'package:responsivedesign/ResponsiveDesign/MediaQuery/TextScaling.dart';

import 'ResponsiveDesign/LayoutBuilder/Adaptivetextsizing.dart';
import 'ResponsiveDesign/LayoutBuilder/AspectRatio.dart';
import 'ResponsiveDesign/LayoutBuilder/Layoutbuilder.dart';
import 'ResponsiveDesign/LayoutBuilder/Positionelement.dart';
import 'ResponsiveDesign/LayoutBuilder/ResponsiveDesign.dart';
import 'ResponsiveDesign/LayoutBuilder/customwidgetsizing.dart';
import 'ResponsiveDesign/LayoutBuilder/nestedlayout.dart';
import 'ResponsiveDesign/MediaQuery/Orientation.dart';
import 'ResponsiveDesign/MediaQuery/SafeAreaInsect.dart';
import 'ResponsiveDesign/Mediaquery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Layoutdebuggingexample(), //Nestedlayoutexample(), //Positioningelementexample(), //Customwidgetsizingexample(), //Adaptivetextsizingexample(), //Aspectratioexample(), //Responsivedesignexample(), //Layoutbuilderexample(), // OrientationHandlingExample(),//SafeAreaInsectExample(), //MediaQueryDeviceInfoExample(), //TextScalingExample()
    );
  }
}

