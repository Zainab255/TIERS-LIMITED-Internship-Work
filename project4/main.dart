// import 'package:dialog/Drawer/bottom-drawer/mainbottom.dart';
// import 'package:dialog/class-11/radiowidget.dart';
// import 'package:dialog/class-11/stack-widget.dart';
// import 'package:dialog/Drawer/custom-drawer/mainpage.dart';
import 'package:flutter/material.dart';
// import 'class 15/mainscreen.dart';
import 'package:dialog/new/class 15/mainscreen.dart';
// import 'project-4/tasklistscreen.dart';
import 'new/project-4/screens/note_list.dart';
import 'package:dialog/new/todo6/screens/home.dart';


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

     // home: TaskListScreen(),
     //  home: StudentScreen(),
      home: Home(),
      // home: form(),
    );
  }
}

