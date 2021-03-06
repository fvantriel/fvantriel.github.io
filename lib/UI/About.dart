import 'package:flutter/material.dart';
import 'package:flutter_resume_website/Widget/CustomText.dart';
import 'package:flutter_resume_website/Model/Method.dart';

class About extends StatelessWidget {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Method method = Method();
    return Column(
      children: [
        Container(
          width: size.width * 0.82,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // CustomText(
              //   text: "01.",
              //   textsize: 20.0,
              //   color: Color(0xff61F9D5),
              //   fontWeight: FontWeight.w700,
              // ),
              // SizedBox(width: 12.0),
              CustomText(
                text: "About Me",
                textsize: 26,
                color: Color(0xffCCD6F6),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(width: size.width * 0.01),
              Container(
                width: size.width * 0.82 / 4,
                height: 1.10,
                color: Color(0xff303C55),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.07,
          width: size.width * 0.82,
        ),
        Container(
          width: size.width * 0.82,
          child: Row(
            children: [
              //About me
              Container(
                height: size.height,
                width: size.width * 0.82 * 0.5,
                child: Column(
                  children: [
                    //About me desc
                    Wrap(
                      children: [
                        CustomText(
                          text:
                              "Hi! I am Florian, an engineer based in Munich, Germany.\n\nI am passionate about the latest technology and aim to build products with focus on the users. In my current role I am responsible for security functionalities of central vehicle components and functions of all BMW, Mini and Rolls Royce vehicles on the road.\nAdditionally, I am the go-to person regarding information protection and secure data handling in my department.\n\n",
                          textsize: 16,
                          color: Color(0xff828DAA),
                          letterSpacing: 0.75,
                        ),
                        CustomText(
                          text:
                              "I have a master's degree in engineering from the Technical University of Dresden and wrote my thesis in a collaborative research project with the University of California at Berkeley.\n\n",
                          textsize: 16,
                          color: Color(0xff828DAA),
                        ),
                        CustomText(
                          text:
                              "Here are a few technologies I have been working with so far:\n\n",
                          textsize: 16,
                          color: Color(0xff828DAA),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.75,
                        ),
                      ],
                    ),

                    Container(
                      height: size.height * 0.15,
                      width: size.width,
                      child: Wrap(
                        children: [
                          Container(
                            width: size.width * 0.20,
                            height: size.height * 0.15,
                            child: Column(
                              children: [
                                technology(context, "Flutter / Dart"),
                                technology(context, "Python"),
                                technology(context, "Git / SVN"),
                                technology(context, "HTML / CSS"),
                              ],
                            ),
                          ),
                          Container(
                            width: size.width * 0.15,
                            height: size.height * 0.15,
                            child: Column(
                              children: [
                                technology(context, "AWS / GCP"),
                                technology(context, "C++"),
                                technology(context, "JIRA / Confluence"),
                                technology(context, "Javascript / Node.js"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //Profile Image
              Container(
                height: size.height,
                width: size.width * 0.82 * 0.5,
                //color: Colors.white, //used for debugging
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: size.height * 0.05,
                      left: size.width * 0.1,
                      child: Card(
                        color: Color(0xff61F9D5),
                        child: Container(
                          margin: EdgeInsets.all(2.75),
                          height: size.height * 0.9 / 2,
                          width: size.width * 0.8 / 5,
                          color: Color(0xff0A192F),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.1,
                      left: size.width * 0.12,
                      child: Container(
                        height: size.height * 0.9 / 2,
                        width: size.width * 0.8 / 5,
                        color: Colors.black54,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/IMG_4691.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
