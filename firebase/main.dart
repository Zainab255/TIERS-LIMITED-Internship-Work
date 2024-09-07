// import 'package:dialog/Drawer/bottom-drawer/mainbottom.dart';
// import 'package:dialog/class-11/radiowidget.dart';
// import 'package:dialog/class-11/stack-widget.dart';
// import 'package:dialog/Drawer/custom-drawer/mainpage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'class 15/mainscreen.dart';
import 'package:dialog/new/class 15/mainscreen.dart';
// import 'project-4/tasklistscreen.dart';
import 'new/project-4/screens/note_list.dart';
// import 'package:dialog/new/todo6/screens/home.dart';
import 'package:dialog/new/todo-app/app/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dialog/new/class-11/radiowidget.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

      options: DefaultFirebaseOptions.currentPlatform
  );
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

     // home: FlutterRiverpodTodoApp(),
     //  home: StudentScreen(),
     //  home: Home(),
      home: form(),
    );
  }
}



class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for windows - '
            'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
            'DefaultFirebaseOptions have not been configured for iOS'
                'you can reconfigure this by running the FlutterFire CLI again.',

        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
            'DefaultFirebaseOptions have not been configured for macOS'
                'you can reconfigure this by running the FlutterFire CLI  again.',

        );
      case TargetPlatform.windows:
        throw UnsupportedError(
            'DefaultFirebaseOptions have not been configured for windows'
                'you can reconfigure this by running the FlutterFire CLI again.',

        );
      case TargetPlatform.linux:
        throw UnsupportedError(
            'DefaultFirebaseOptions have not been configured for linux'
                'you can reconfigure this by running the FlutterFire CLI again.',

        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }
  static const FirebaseOptions android = FirebaseOptions(
      apiKey: "AIzaSyB5vi09Hbawmw8xY1_IgN0B9uVlidEPJC8",
      appId: "1:431892606977:android:52cc1d6c555caeed8f1000",
      messagingSenderId: '431892606977',
      projectId: "flutter-project-f47f8",
  );
}