import 'package:flutter/material.dart';
import 'package:flutter_ui_elements/UI/bottomNavigation.dart';
import 'package:flutter_ui_elements/UI/NavigationType2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BottomNavigation2());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return BottomNavigation();
                  }));
                },
                child: Text("NavigationType1")),


                   ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return BottomNavigation2();
                  }));
                },
                child: Text("NavigationType2 recommanded way")),
          ],
        ),
      ),
    );
  }
}
