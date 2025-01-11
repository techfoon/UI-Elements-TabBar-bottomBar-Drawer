import 'package:flutter/material.dart';
import 'package:flutter_ui_elements/UI/pages/exploar.dart';
import 'package:flutter_ui_elements/UI/pages/home.dart';
import 'package:flutter_ui_elements/UI/pages/settings.dart';
import 'package:flutter_ui_elements/UI/pages/task.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int SelectiedNavigationIndex = 0;

  List NavPages = [Home(), Tasks(), Exploar(), Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: NavPages[SelectiedNavigationIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: "Task"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "exploar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "settings"),
       
       
       
       
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedFontSize: BorderSide.strokeAlignCenter,
        currentIndex: SelectiedNavigationIndex,
        onTap: (Value) {
          SelectiedNavigationIndex = Value;

          setState(() {});
        },
      ),
    );
  }
}
