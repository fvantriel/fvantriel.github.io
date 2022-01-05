import 'package:flutter/widgets.dart';
import 'package:flutter_resume_website/UI/HomePage.dart';
import 'package:flutter_resume_website/UI/MobileHome.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        //Currently the mobile page has not been reworked so we only show the webpage for now
        // if (constraints.maxWidth >= 1000) {
        //   return HomePage();
        // } else {
        //   return MobileHome();
        // }
        return HomePage();
      },
    );
  }
}
