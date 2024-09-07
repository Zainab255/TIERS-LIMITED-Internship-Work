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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Alert_dialog(),
      // home: HomeScreen1(),
      // home: HomeScreen2(),
      // routes: {
      //   '/screenA': (context) => ScreenA(),
      //   '/screenB': (context) => ScreenB(),
      // },
      // home: HomeScreen3(),
      // home: HomeScreen4(),


      home: HomeScreen5(),
    );
  }
}

