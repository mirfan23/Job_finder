import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SaveJobController extends GetxController {
  var listSaveJobTag = [
    "Design",
    "Full time",
    "Senior designer",
  ];

  var listIconOption = [
    Icons.send_outlined,
    Icons.share_outlined,
    Icons.delete_outline_rounded,
    Icons.check_circle_outline_rounded,
  ];

  var listTittleOption = [
    "Send message",
    "Shared",
    "Delete",
    "Apply",
  ];

  var listIconCompany = [
    "assets/images/google_logo.png",
    "assets/images/dribbble_logo.png",
    "assets/images/company_2.png",
  ];
  var listCompanyName = [
    "UI/UX Designer",
    "Lead Designer",
    "UX Researcher",
  ].obs;
}
