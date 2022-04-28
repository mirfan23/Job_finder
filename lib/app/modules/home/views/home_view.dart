// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/values/colors.dart';

import '../controllers/home_controller.dart';
import '../widgets/jobhunting.dart';
import '../widgets/joblist.dart';
import '../widgets/subtext.dart';
import '../widgets/welcome.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: MyColors.white.withOpacity(0.99),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                WelcomeWidget(),
                SizedBox(
                  height: 25,
                ),
                SubText(),
                SizedBox(
                  height: 20,
                ),
                JobHunting(),
                SizedBox(
                  height: 20,
                ),
                SubText2(),
                JobList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
