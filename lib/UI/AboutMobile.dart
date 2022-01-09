import 'package:flutter/material.dart';
import 'package:flutter_resume_website/Widget/CustomText.dart';
import 'package:flutter_resume_website/Model/Method.dart';

class AboutMobile extends StatelessWidget {
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
            fontSize: 12,
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              text: "01.",
              textsize: method.adaptFontSizeToScreenSize(20.0, size.width),
              color: Color(0xff61F9D5),
              fontWeight: FontWeight.w700,
            ),
            SizedBox(width: size.width * 0.001),
            CustomText(
              text: "About Me",
              textsize: method.adaptFontSizeToScreenSize(26.0, size.width),
              color: Color(0xffCCD6F6),
              fontWeight: FontWeight.w700,
            ),
            SizedBox(width: size.width * 0.001),
            Container(
              width: size.width / 4,
              height: size.height * 0.001,
              color: Color(0xff303C55),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.07),
        Container(
          height: size.height / 1.5,
          width: size.width * 0.9 / 2,
          //color: Colors.white, //used for debugging
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: size.height * 0.04,
                left: size.width * 0.120,
                child: Card(
                  color: Color(0xff61F9D5),
                  child: Container(
                    margin: EdgeInsets.all(2.75),
                    height: size.height / 2,
                    width: size.width / 5,
                    color: Color(0xff0A192F),
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.01,
                child: Container(
                  height: size.height / 2,
                  width: size.width / 5,
                  color: Colors.black54,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/fvan.jpeg"),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.01),
        //About me desc
        Wrap(
          children: [
            CustomText(
              text:
                  "Hi! I am Florian, an engineer based in Munich, Germany.\n\nI am passionate about the latest technology and aim to build products with focus on the users. In my current role I am responsible for security functionalities of central vehicle components and functions of all BMW, Mini and Rolls Royce vehicles on the road.\nAdditionally, I am the go-to person regarding information protection and secure data handling in my department.\n\n",
              textsize: method.adaptFontSizeToScreenSize(16.0, size.width),
              color: Color(0xff828DAA),
              letterSpacing: 0.75,
            ),
            CustomText(
              text:
                  "I have a master's degree in engineering from the Technical University of Dresden and wrote my thesis in a collaborative research project with the University of California at Berkeley.\n\n",
              textsize: method.adaptFontSizeToScreenSize(16.0, size.width),
              color: Color(0xff828DAA),
            ),
            CustomText(
              text:
                  "Here are a few technologies I have been working with so far:\n\n",
              textsize: method.adaptFontSizeToScreenSize(16.0, size.width),
              color: Color(0xff828DAA),
              // fontWeight: FontWeight.w500,
              letterSpacing: 0.75,
            ),
          ],
        ),
        //technologies
        Column(
          children: [
            technology(context, "Flutter / Dart"),
            technology(context, "Python"),
            technology(context, "Solidity / Web3.js"),
            technology(context, "Typescript"),
            technology(context, "AWS / GCP"),
            technology(context, "C++"),
            technology(context, "Git / SVN"),
            technology(context, "JIRA / Confluence"),
          ],
        ),
        //Profile Image
      ],
    );
  }
}
