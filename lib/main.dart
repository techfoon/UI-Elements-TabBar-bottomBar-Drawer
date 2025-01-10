import 'package:flutter/material.dart';
import 'package:flutter_ui_elements/UI/bottomNavigation.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigation()
    );
  }
}
