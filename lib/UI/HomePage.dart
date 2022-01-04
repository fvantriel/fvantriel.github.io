import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_resume_website/Data/ProjectList.dart';
import 'package:flutter_resume_website/Model/Method.dart';
import 'package:flutter_resume_website/UI/About.dart';
import 'package:flutter_resume_website/UI/FeatureProject.dart';
import 'package:flutter_resume_website/UI/Work.dart';
import 'package:flutter_resume_website/Widget/AppBarTitle.dart';
import 'package:flutter_resume_website/Widget/CustomText.dart';
import 'package:flutter_resume_website/Widget/MainTiitle.dart';
import 'package:flutter_resume_website/Widget/OSImages.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:flutter_resume_website/Data/Contents.dart';

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

  List<FeatureProject> populateFeatureProjects(String projectList) {
    List<FeatureProject> listOfFeatureProjects = [];
    List<Map> projectContentList = [];
    var project;

    //projectList1 is the first list of projects before the screenshots of various apps and projectList2 is the second list that comes right after
    if (projectList == "ProjectList1") {
      projectContentList = getProjectList1();
    } else if (projectList == "ProjectList2") {
      projectContentList = getProjectList2();
    }

    if (projectContentList.length > 0) {
      for (var i = 0; i < projectContentList.length; i++) {
        project = FeatureProject(
          imagePath: projectContentList[i]['imagePath'],
          linkURL: projectContentList[i]['linkURL'],
          projectDesc: projectContentList[i]['projectDesc'],
          projectTitle: projectContentList[i]['projectTitle'],
          tech1: projectContentList[i]['tech1'],
          tech2: projectContentList[i]['tech2'],
          tech3: projectContentList[i]['tech3'],
        );
        listOfFeatureProjects.add(project);
      }
    }
    return listOfFeatureProjects;
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
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.twitter),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchURL(kTwitterURL);
                            }),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.linkedin),
                          color: Color(0xffffA8B2D1),
                          onPressed: () {
                            method.launchURL(kLinkedInURL);
                          },
                          iconSize: 16.0,
                        ),
                        IconButton(
                            icon: Icon(Icons.call),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchCaller();
                            }),
                        IconButton(
                            icon: Icon(Icons.mail),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchEmail();
                            }),
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
                                  CustomText(
                                    text: kName + ".",
                                    textsize: 68.0,
                                    color: Color(0xffCCD6F6),
                                    fontWeight: FontWeight.w900,
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
                                        kSubHeadlineText,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16.0,
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
                                  InkWell(
                                    onTap: () {
                                      method.launchEmail();
                                    },
                                    hoverColor:
                                        Color(0xff64FFDA).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(4.0),
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

                                  SizedBox(
                                    height: size.height * 0.20,
                                  ),
                                ],
                              ),

                              //About M
                              About(),
                              SizedBox(
                                height: size.height * 0.02,
                              ),

                              //Where I've Worked
                              Work(),
                              SizedBox(
                                height: size.height * 0.10,
                              ),

                              //Some Things I've Built Main Project
                              Column(
                                children: [
                                  MainTiitle(
                                    number: "0.3",
                                    text: "Some Things I've Built",
                                  ),
                                  SizedBox(
                                    height: size.height * 0.04,
                                  ),
                                  // ...populateFeatureProjects("ProjectList1"), //Using spread operator (...) to insert listelements into list without creating a nested list

                                  SizedBox(
                                    height: size.height * 0.04,
                                  ),

                                  //...populateFeatureProjects("ProjectList2"), //Using spread operator (...) to insert listelements into list without creating a nested list
                                ],
                              ),

                              SizedBox(
                                height: 6.0,
                              ),

                              //Get In Touch
                              Column(
                                children: [
                                  Container(
                                    height: size.height * 0.68,
                                    width:
                                        MediaQuery.of(context).size.width - 100,
                                    // color: Colors.orange,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomText(
                                          text: "0.4 What's Next?",
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
                                                color: Colors.white
                                                    .withOpacity(0.4),
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
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                            child: Container(
                                              margin: EdgeInsets.all(0.85),
                                              height: size.height * 0.09,
                                              width: size.width * 0.10,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Color(0xff0A192F),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
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
                                    height:
                                        MediaQuery.of(context).size.height / 6,
                                    width:
                                        MediaQuery.of(context).size.width - 100,
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
                              ),
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
