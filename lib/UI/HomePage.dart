import 'package:flutter/material.dart';
import 'package:flutter_resume_website/Data/StyleConstants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_resume_website/Model/Method.dart';
import 'package:flutter_resume_website/UI/About.dart';
import 'package:flutter_resume_website/UI/Work.dart';
import 'package:flutter_resume_website/Widget/CustomText.dart';
import 'package:flutter_resume_website/Data/Contents.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_resume_website/UI/Education.dart';
import 'package:flutter_resume_website/UI/Patents.dart';
import 'package:flutter_resume_website/UI/GetInTouch.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Method method = Method();

  @override
  void initState() {
    super.initState();
  }

  double _adaptFontSizeToScreenSize(double fontSize, double screenWidth) {
    double newFontSize = fontSize;
    double width = screenWidth;
    if (width <= 800) {
      newFontSize = newFontSize * 0.7;
    } else if (width > 800 && width <= 1100) newFontSize = newFontSize * 0.9;
    print(width);
    return newFontSize;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          primary: true,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  //Social Icon
                  Container(
                    width: size.width * 0.09,
                    height: size.height * 0.95,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: size.height * 0.06),
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.github),
                            color: kIconColor,
                            iconSize: kIconSize,
                            onPressed: () {
                              method.launchURL(kGithubURL);
                            }),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.linkedin),
                          color: kIconColor,
                          onPressed: () {
                            method.launchURL(kLinkedInURL);
                          },
                          iconSize: kIconSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.01),
                          child: Container(
                            height: size.height * 0.20,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: size.height * 0.9,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.03),
                        child: CustomScrollView(
                          slivers: <Widget>[
                            SliverList(
                                delegate: SliverChildListDelegate([
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: size.height * 0.06),
                                  CustomText(
                                    text: "Hi, my name is",
                                    textsize: _adaptFontSizeToScreenSize(
                                        22.0, size.width),
                                    color: Color(0xff41FBDA),
                                    letterSpacing: 3.0,
                                  ),
                                  SizedBox(height: size.height * 0.01),
                                  AnimatedTextKit(
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                        kName + ".",
                                        textStyle: TextStyle(
                                            fontSize:
                                                _adaptFontSizeToScreenSize(
                                                    68.0, size.width),
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xffCCD6F6)),
                                        speed: const Duration(milliseconds: 80),
                                      ),
                                    ],
                                    totalRepeatCount: 1,
                                  ),
                                  SizedBox(height: size.height * 0.01),
                                  CustomText(
                                    text: kHeadlineText,
                                    textsize: _adaptFontSizeToScreenSize(
                                        40.0, size.width),
                                    color: Color(0xffCCD6F6).withOpacity(0.6),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(
                                    height: size.height * .04,
                                  ),
                                  Text(
                                    kSubHeadlineText1,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: _adaptFontSizeToScreenSize(
                                          22, size.width),
                                      letterSpacing: 2.75,
                                      wordSpacing: 0.75,
                                    ),
                                  ),
                                  SizedBox(height: size.height * 0.015),
                                  Text(
                                    kSubHeadlineText2,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: _adaptFontSizeToScreenSize(
                                          22, size.width),
                                      letterSpacing: 2.75,
                                      wordSpacing: 0.75,
                                    ),
                                  ),
                                  SizedBox(height: size.height * 0.015),
                                  Text(
                                    kSubHeadlineText3,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: _adaptFontSizeToScreenSize(
                                          22, size.width),
                                      letterSpacing: 2.75,
                                      wordSpacing: 0.75,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * .05,
                                  ),

                                  //get in touch text
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          method.launchURL(kLinkedInURL);
                                        },
                                        hoverColor:
                                            Color(0xff64FFDA).withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: size.height * 0.09,
                                          width: size.width * 0.25,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xff64FFDA),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: Text(
                                            "Get In Touch",
                                            style: TextStyle(
                                              color: Color(0xff64FFDA),
                                              letterSpacing: 2.75,
                                              wordSpacing: 1.0,
                                              fontSize:
                                                  _adaptFontSizeToScreenSize(
                                                      20, size.width),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: size.width * 0.017),
                                      InkWell(
                                        onTap: () {
                                          method.launchURL(kResumeLink);
                                        },
                                        hoverColor:
                                            Color(0xff64FFDA).withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: size.height * 0.09,
                                          width: size.width * 0.25,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xff64FFDA),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: Text(
                                            "Resume",
                                            style: TextStyle(
                                              color: Color(0xff64FFDA),
                                              letterSpacing: 2.75,
                                              wordSpacing: 1.0,
                                              fontSize:
                                                  _adaptFontSizeToScreenSize(
                                                      20, size.width),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: size.height * 0.20,
                                  ),
                                ],
                              ),
                              //About Me
                              About(), //TODO: Rework about me page

                              //Where I've Worked
                              //TODO: Rework professional experience page
                              //Work(),

                              //Academic Background
                              //TODO: Rework education page
                              //Education(size: size),

                              //Academic Background
                              //TODO: Rework patent page
                              //Patents(size: size),

                              //Get In Touch
                              //TODO: Rework GetInTouch Page
                              //GetInTouch(size: size, method: method),
                            ])),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.09,
                    height: size.height * 0.95,
                    //color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: size.height * 0.06),
                        RotatedBox(
                          quarterTurns: 45,
                          child: Text(
                            kMailAddress,
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              letterSpacing: 3.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.01),
                          child: Container(
                            height: size.height * 0.20,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
