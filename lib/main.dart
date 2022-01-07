import 'package:flutter/material.dart';
import 'package:flutter_resume_website/UI/Home.dart';
import 'Model/WebPageTransitionDisabler.dart';
import 'package:flutter_resume_website/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

//Run application with firebase services connected
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

//
// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Florian van Triel',
      theme: ThemeData(pageTransitionsTheme: NoTransitionsOnWeb()),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
