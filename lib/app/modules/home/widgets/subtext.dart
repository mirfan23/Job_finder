import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/styles.dart';
import '../controllers/home_controller.dart';

class SubText extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      // padding: EdgeInsets.only(
      //   left: 23,
      // ),
      child: Text(
        "Find Your Job",
        style: TextStyle(
          fontFamily: MyStyles.Bold,
          fontSize: 20,
        ),
      ),
    );
  }
}

class SubText2 extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      // padding: EdgeInsets.only(
      //   left: 23,
      // ),
      child: Text(
        "Recent Job List",
        style: TextStyle(
          fontFamily: MyStyles.Bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
