import 'package:flutter/material.dart';
import 'package:main/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Catalogue',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
