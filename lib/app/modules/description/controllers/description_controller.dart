import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:job_finder/app/values/colors.dart';

class DescriptionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? tab;

  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Container(
        decoration: BoxDecoration(
            color: MyColors.primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            "Description",
            style: TextStyle(fontSize: 14, fontFamily: 'DMSansBold'),
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        decoration: BoxDecoration(
            color: MyColors.whiteGrey, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            "Company",
            style: TextStyle(
                fontSize: 14,
                color: MyColors.primaryColor,
                fontFamily: 'DMSansBold'),
          ),
        ),
      ),
    )
  ];

  var isReadMore = false.obs;
  var isBookmark = false.obs;

  late Completer<GoogleMapController> mapC;

  @override
  void onInit() {
    tab = TabController(length: myTabs.length, vsync: this);
    mapC = Completer();
    super.onInit();
  }

  @override
  void onClose() {
    tab?.dispose();
    super.onClose();
  }
}
