import 'package:flutter/material.dart';
import 'package:flutter_ui_elements/UI/pages/exploar.dart';
import 'package:flutter_ui_elements/UI/pages/home.dart';
import 'package:flutter_ui_elements/UI/pages/settings.dart';
import 'package:flutter_ui_elements/UI/pages/task.dart';

class BottomNavigation2 extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation2> {
  int SelectiedNavigationIndex = 0;

  List NavPages = [Home(), Tasks(), Exploar(), Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NavPages[SelectiedNavigationIndex],
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: "home",
              selectedIcon: Icon(
                Icons.home_outlined,
                color: Colors.blue,
              ),
            ),
            NavigationDestination(
              icon: Icon(Icons.task),
              label: "Task",
              selectedIcon: Icon(
                Icons.task_outlined,
                color: Colors.blue,
              ),
            ),
            NavigationDestination(
              icon: Icon(Icons.explore),
              label: "explore",
              selectedIcon: Icon(
                Icons.explore_outlined,
                color: Colors.blue,
              ),
            ),
            NavigationDestination(
                icon: Icon(Icons.settings), label: "settings"),
          ],
          selectedIndex: SelectiedNavigationIndex,
          onDestinationSelected: (value) {
            SelectiedNavigationIndex = value;
            setState(() {});
          },

          // backgroundColor: Colors.blue,
        ));
  }
}
