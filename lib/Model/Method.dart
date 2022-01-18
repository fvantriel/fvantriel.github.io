import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_resume_website/Data/Contents.dart';

class Method {
  launchURL(String link) async {
    var url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchCaller() async {
    const url = "tel:" + kPhoneNumber;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchEmail() async {
    if (await canLaunch("mailto:" + kMailAddress)) {
      await launch("mailto:" + kMailAddress);
    } else {
      throw 'Could not launch';
    }
  }

  double adaptFontSizeToScreenSize(double fontSize, double screenWidth) {
    double newFontSize = fontSize;
    double width = screenWidth;
    if (width <= 800) {
      newFontSize = newFontSize * 0.7;
    } else if (width > 800 && width <= 1100) {
      newFontSize = newFontSize * 0.9;
    }
    return newFontSize;
  }
}
