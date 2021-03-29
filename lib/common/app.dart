import 'package:flutter/material.dart';
import 'package:flutter_command_pattern_demo/home/view/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'FlutterCommandPatternDemo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen());
}
