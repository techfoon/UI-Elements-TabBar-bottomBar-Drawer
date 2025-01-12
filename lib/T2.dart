import 'package:flutter/material.dart';
import 'package:flutter_ui_elements/UI/pages/exploar.dart';
import 'package:flutter_ui_elements/UI/pages/home.dart';
import 'package:flutter_ui_elements/UI/pages/settings.dart';
import 'package:flutter_ui_elements/UI/pages/task.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  TabController? myTabContro; // Declare as a class-level variable

  @override
  void initState() {
    super.initState();
    myTabContro =
        TabController(length: 4, vsync: this); // Proper initialization
  }

  List<Widget> allTabs = [Home(), Task(), Settings(), Exploar()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("abc"),
          bottom: TabBar(
            controller: myTabContro,
            indicatorColor: Colors.pink,
            tabs: [
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
            ],
          ),
        ),
        body: TabBarView(
          controller: myTabContro,
          children: allTabs, // Use the defined list of tabs
        ),
      ),
    );
  }
}
