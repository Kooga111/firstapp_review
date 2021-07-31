import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:review_first_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "trial app",
      home: HomeScreen(),
    );
  }
}
