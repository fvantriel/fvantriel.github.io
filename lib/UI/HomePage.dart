import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xff0A192F),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          primary: true,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  //Social Icon
                  Container(
                    width: size.width * 0.09,
                    height: size.height - 82,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.github),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchURL(kGithubURL);
                            }),
                        // IconButton(
                        //     icon: FaIcon(FontAwesomeIcons.twitter),
                        //     color: Color(0xffffA8B2D1),
                        //     iconSize: 16.0,
                        //     onPressed: () {
                        //       method.launchURL(kTwitterURL);
                        //     }),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.linkedin),
                          color: Color(0xffffA8B2D1),
                          onPressed: () {
                            method.launchURL(kLinkedInURL);
                          },
                          iconSize: 16.0,
                        ),
                        // IconButton(
                        //     icon: Icon(Icons.call),
                        //     color: Color(0xffffA8B2D1),
                        //     iconSize: 16.0,
                        //     onPressed: () {
                        //       method.launchCaller();
                        //     }),
                        // IconButton(
                        //     icon: Icon(Icons.mail),
                        //     color: Color(0xffffA8B2D1),
                        //     iconSize: 16.0,
                        //     onPressed: () {
                        //       method.launchEmail();
                        //     }),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
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
                      height: size.height - 82,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomScrollView(
                          slivers: <Widget>[
                            SliverList(
                                delegate: SliverChildListDelegate([
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: size.height * .06,
                                  ),
                                  CustomText(
                                    text: "Hi, my name is",
                                    textsize: 16.0,
                                    color: Color(0xff41FBDA),
                                    letterSpacing: 3.0,
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  AnimatedTextKit(
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                        kName + ".",
                                        textStyle: TextStyle(
                                            fontSize: 68.0,
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xffCCD6F6)),
                                        speed: const Duration(milliseconds: 80),
                                      ),
                                    ],
                                    totalRepeatCount: 1,
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  CustomText(
                                    text: kHeadlineText,
                                    textsize: 56.0,
                                    color: Color(0xffCCD6F6).withOpacity(0.6),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(
                                    height: size.height * .04,
                                  ),
                                  Wrap(
                                    children: [
                                      Text(
                                        kSubHeadlineText1,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20.0,
                                          letterSpacing: 2.75,
                                          wordSpacing: 0.75,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Wrap(
                                    children: [
                                      Text(
                                        kSubHeadlineText2,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20.0,
                                          letterSpacing: 2.75,
                                          wordSpacing: 0.75,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * .12,
                                  ),

                                  //get in touch text
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          method.launchEmail();
                                        },
                                        hoverColor:
                                            Color(0xff64FFDA).withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: size.height * 0.09,
                                          width: size.width * 0.14,
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
                                              fontSize: 15.0,
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
                                          width: size.width * 0.14,
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
                                              fontSize: 15.0,
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
                              SizedBox(
                                height: size.height * 0.02,
                              ),

                              //Where I've Worked
                              //TODO: Rework professional experience page
                              //Work(),
                              SizedBox(
                                height: size.height * 0.10,
                              ),

                              //Academic Background
                              //TODO: Rework education page
                              //Education(size: size),

                              SizedBox(
                                height: 6.0,
                              ),
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
                    width: MediaQuery.of(context).size.width * 0.07,
                    height: MediaQuery.of(context).size.height - 82,
                    //color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
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
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: 100,
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
