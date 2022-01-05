import 'package:flutter/material.dart';
import 'package:flutter_resume_website/UI/Home.dart';
import 'Model/WebPageTransitionDisabler.dart';

void main() {
  runApp(MyApp());
}

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
