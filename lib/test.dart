import 'package:collegeproject/input.dart';
import 'package:collegeproject/splashscreen.dart';
import 'package:collegeproject/test1.dart';
import 'package:flutter/material.dart';

import 'firstscreen.dart';

void main() {
  runApp(Test());
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: SplashScreen(),
    );
  }
}
