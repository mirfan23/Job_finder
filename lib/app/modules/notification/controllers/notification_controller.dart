import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  void readAllNotification() {
    if (listNoticitaion
        .where((element) => element["read"] == false)
        .isNotEmpty) {
      listNoticitaion[listNoticitaion
          .indexWhere((element) => element["read"] == false)]["read"] = true;
    }
    listNoticitaion.refresh();
    print(listNoticitaion.where((element) => element["read"] == true).toList());
  }

  var listNotificationOptionIcon = [
    Icons.delete_outline_rounded,
    Icons.notifications_off_outlined,
    Icons.settings_outlined,
  ];
  var listNotificationOptionTittle = [
    "Delete",
    "Turn off notifications",
    "Setting",
  ];

  var listNoticitaion = [
    {
      "id": "1",
      "icon": "assets/images/google_logo.png",
      "tittle": "Application sent",
      "content": "Applications for Google inc have entered for company review",
      "button": "Application details",
      "read": false,
      "time": "25 minutes",
    },
    {
      "id": "2",
      "icon": "assets/images/google_icon.png",
      "tittle": "Your job notification",
      "content":
          "Brandon, there are 10+ new jobs for UI/UX Designer in California,USA",
      "button": "See new job",
      "read": true,
      "time": "1 hour",
    },
    {
      "id": "3",
      "icon": "assets/images/dribbble_logo.png",
      "tittle": "Your social media notification",
      "content":
          "Twitter inc is looking for a UI/UX Designer. Check out this and 9 other job recommendations",
      "button": "See job",
      "read": true,
      "time": "6 hours",
    },
  ].obs;
}
