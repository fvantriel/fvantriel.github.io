import 'package:flutter/material.dart';
import 'package:flutter_resume_website/Widget/CustomText.dart';

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
    return Container(
      height: size.height,
      width: size.width - 100,
      child: Row(
        children: [
          //About me
          Container(
            height: size.height * 0.9,
            width: size.width / 2 - 100,
            child: Column(
              children: [
                //About me title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "01.",
                      textsize: 20.0,
                      color: Color(0xff61F9D5),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    CustomText(
                      text: "About Me",
                      textsize: 26.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(width: size.width * 0.01),
                    Container(
                      width: size.width / 4,
                      height: 1.10,
                      color: Color(0xff303C55),
                    ),
                  ],
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                //About me desc
                Wrap(
                  children: [
                    CustomText(
                      text:
                          "Hi! I am Florian, an engineer based in Munich, Germany.\n\nI am passionate about the latest technology and aim to build products with focus on the users.\nIn my current role I am responsible for security functionalities of central vehicle components and functions of all vehicles that BMW, Mini and Rolls Royce put on the road.\nFurthermore, I am the go-to person regarding information protection and secure data handling at my department.\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                          "I have a master's degree in engineeringfrom the Technical University of Dresden and wrote my thesis in a collaborative research project with the University of California at Berkeley.\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                    ),
                    CustomText(
                      text:
                          "Here are a few technologies I've been working with recently:\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      // fontWeight: FontWeight.w500,
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
                            technology(context, "Solidity / Web3.js"),
                            technology(context, "Typescript"),
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
                            technology(context, "Git / SVN"),
                            technology(context, "JIRA / Confluence"),
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
          Expanded(
            child: Container(
              height: size.height / 1.5,
              width: size.width / 2 - 100,
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
          ),
        ],
      ),
    );
  }
}
