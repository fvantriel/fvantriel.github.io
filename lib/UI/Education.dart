import 'package:flutter/material.dart';
import 'package:flutter_resume_website/Widget/MainTitle.dart';
import 'package:flutter_resume_website/Data/ProjectList.dart';
import 'package:flutter_resume_website/UI/FeatureProject.dart';

class Education extends StatelessWidget {
  const Education({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  List<FeatureProject> populateFeatureProjects(String projectList) {
    List<FeatureProject> listOfFeatureProjects = [];
    List<Map> projectContentList = [];
    var project;

    //projectList1 is the first list of projects before the screenshots of various apps and projectList2 is the second list that comes right after
    if (projectList == "ProjectList1") {
      projectContentList = getProjectList1();
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
    return Column(
      children: [
        MainTitle(
          number: "0.3",
          text: "Academic Work and Education",
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
    );
  }
}
