import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/styles.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Jobspot",
                    style: TextStyle(
                      fontFamily: MyStyles.Bold,
                      fontSize: 18,
                      color: MyColors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Image(
                width: Get.width * 0.7,
                image: AssetImage("assets/images/slashscreen_vector.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
