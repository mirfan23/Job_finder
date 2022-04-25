import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/routes/app_pages.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/styles.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
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
              Spacer(),
              Center(
                child: Image(
                  width: Get.width * 0.7,
                  image: AssetImage("assets/images/slashscreen_vector.png"),
                ),
              ),
              Spacer(),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: MyStyles.Bold,
                    fontSize: 40,
                    color: MyColors.black,
                    height: 0.9,
                  ),
                  children: [
                    TextSpan(text: "Find Your\n"),
                    TextSpan(
                      text: "Dream Job\n",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: MyColors.orange,
                        fontFamily: MyStyles.Bold,
                        fontSize: 40,
                        height: 0.9,
                      ),
                    ),
                    TextSpan(text: "Here!"),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Explore all the most exciting job roles based on your interest and study major.",
                style: TextStyle(
                  fontFamily: MyStyles.Regular,
                  fontSize: 14,
                  color: MyColors.disable,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Tooltip(
                  message: "Next",
                  child: InkWell(
                    onTap: () {
                      Get.offNamed(AppPages.INITIAL_HM);
                    },
                    borderRadius: BorderRadius.circular(Get.width),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Get.width),
                        color: MyColors.primaryColor,
                      ),
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: MyColors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
