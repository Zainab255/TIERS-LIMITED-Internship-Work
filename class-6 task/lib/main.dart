import 'package:untitled/LandingPage.dart';
import 'package:flutter/material.dart';
import 'Registerpage.dart';
import 'LandingPage.dart';
import 'LoginPage.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: RegisterScreen(),
      // home : LoginScreen(),
      home: LandingScreen(),
      // home: MainContent(),
      // home: Trading(),
      // home: MyApp2(),
      // home: App1(),
      // home: Mainscreen(),
    );
  }
}