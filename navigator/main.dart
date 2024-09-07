import 'package:dialog/Drawer/bottom-drawer/mainbottom.dart';
import 'package:dialog/Drawer/custom-drawer/mainpage.dart';
import 'package:flutter/material.dart';
import 'Dialogs/Exercise 1 .dart';
import 'Dialogs/Exercise2.dart';
import 'Dialogs/Exercise3.dart';
import 'Dialogs/Exercise4.dart';
import 'Dialogs/Exercise5.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     
      home: MyHomePage(),
    );
  }
}

