// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:job_finder/app/values/colors.dart';

class InformationView extends StatelessWidget {
  String title;
  String subtitle;
  double fontSize;
  double fontSizeSub;
  InformationView(this.title, this.subtitle, this.fontSize, this.fontSizeSub);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            fontFamily: "DMSansBold",
            color: MyColors.primaryColor,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: fontSizeSub,
            fontFamily: "DMSansRegular",
            color: MyColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
