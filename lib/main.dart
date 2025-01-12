import 'package:flutter/material.dart';
import 'package:flutter_ui_elements/UI/pages/exploar.dart';
import 'package:flutter_ui_elements/UI/pages/home.dart';
import 'package:flutter_ui_elements/UI/pages/settings.dart';
import 'package:flutter_ui_elements/UI/pages/task.dart';
import 'dart:developer';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> AllTab = [Home(), Task(), Settings(), Exploar()];
    return MaterialApp(
      home: DefaultTabController(
        length: AllTab.length,
        child: Scaffold(
            appBar: AppBar(
              title: Text("abc"),
              bottom: TabBar(
                
                
             //   isScrollable: true,
                indicatorColor: Colors.pink, tabs: [
                  
                Tab(
                  child: Row(
                    children: [Icon(Icons.home), Text("Home")],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [Icon(Icons.task), Text("Task")],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [Icon(Icons.explore), Text("Expl")],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [Icon(Icons.settings), Text("Setting")],
                  ),
                ),
              ]),
            ),
            body:
                TabBarView(children: [Home(), Task(), Settings(), Exploar()])),
      ),
    );
  }
}
