import 'package:flutter/material.dart';
import 'package:flutter_ui_elements/UI/mydrawer.dart';


void main() {
  runApp(MainApp());
}


class MainApp extends StatelessWidget {
const MainApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(

      home: Mydrawer() ,
    );
  }
}