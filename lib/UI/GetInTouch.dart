import 'package:flutter/material.dart';
import 'package:flutter_resume_website/Model/Method.dart';
import 'package:flutter_resume_website/Widget/CustomText.dart';
import 'package:flutter_resume_website/Data/Contents.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({
    Key? key,
    required this.size,
    required this.method,
  }) : super(key: key);

  final Size size;
  final Method method;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height * 0.68,
          width: MediaQuery.of(context).size.width - 100,
          // color: Colors.orange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "0.5 What's Next?",
                textsize: 16.0,
                color: Color(0xff41FBDA),
                letterSpacing: 3.0,
              ),
              SizedBox(
                height: 16.0,
              ),
              CustomText(
                text: "Get In Touch",
                textsize: 42.0,
                color: Colors.white,
                letterSpacing: 3.0,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: 16.0,
              ),
              Wrap(
                children: [
                  Text(
                    kFinalText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      letterSpacing: 0.75,
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32.0,
              ),
              InkWell(
                onTap: () {
                  method.launchEmail();
                },
                child: Card(
                  elevation: 4.0,
                  color: Color(0xff64FFDA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(0.85),
                    height: size.height * 0.09,
                    width: size.width * 0.10,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xff0A192F),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Text(
                        "Say Hello",
                        style: TextStyle(
                          color: Color(0xff64FFDA),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        //Footer
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 6,
          width: MediaQuery.of(context).size.width - 100,
          //color: Colors.white,
          child: Text(
            "Designed & Built by Tushar Nikam 💙 Flutter",
            style: TextStyle(
              color: Colors.white.withOpacity(0.4),
              letterSpacing: 1.75,
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }
}
