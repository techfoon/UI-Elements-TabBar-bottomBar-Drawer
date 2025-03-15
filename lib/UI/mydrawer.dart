import 'package:flutter/material.dart';
import 'package:flutter_ui_elements/UI/pages/exploar.dart';
import 'package:flutter_ui_elements/UI/pages/home.dart';
import 'package:flutter_ui_elements/UI/pages/settings.dart';
import 'package:flutter_ui_elements/UI/pages/task.dart';

class Mydrawer extends StatefulWidget {
  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  int selectedDrawerIndex = 0;

  List<Map<String, dynamic>> drawerItems = [
    {
      "leading": Icon(Icons.home),
      "title": "Home",
      "url": Home(),
    },
    {
      "leading": Icon(Icons.task),
      "title": "Task",
      "url": Task(),
    },
    {
      "leading": Icon(Icons.settings),
      "title": "Settings",
      "url": Settings(),
    },
    {
      "leading": Icon(Icons.explore),
      "title": "Exploar",
      "url": Exploar(),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        width: 300,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text(
                "Peeyush",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "sachana766@gmail.com",
                style: TextStyle(
                    fontSize: 12, color: const Color.fromARGB(255, 85, 81, 81)),
              ),
            ),
            Flexible(
              child: ListView.builder(
                  itemCount: drawerItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: drawerItems[index]['leading'],
                      title: InkWell(
                        child: Text(drawerItems[index]['title']),
                        onTap: () {
                          selectedDrawerIndex = index;

                          setState(() {});
                          Navigator.pop(context);
                        },
                      ),
                    );
                  }),
            )
          ],
        ),
        backgroundColor: Colors.blue.shade200,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(21))),
      ),
      body: drawerItems[selectedDrawerIndex]["url"],
    );
  }
}
