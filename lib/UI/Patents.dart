import 'package:flutter/material.dart';
import 'package:flutter_resume_website/Widget/MainTitle.dart';

class Patents extends StatelessWidget {
  const Patents({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainTitle(
          number: "0.4",
          text: "Patents and Qualifications",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
      ],
    );
  }
}
