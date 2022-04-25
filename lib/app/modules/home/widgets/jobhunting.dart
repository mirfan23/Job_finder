import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';
import '../controllers/home_controller.dart';

class JobHunting extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: MyColors.blue,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 45,
            ),
            height: Get.height * 0.30,
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                    "assets/images/jobhunting.png",
                  ),
                  height: Get.width * 0.1,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "44.5k",
                  style: TextStyle(
                    color: MyColors.primaryColor,
                    fontFamily: MyStyles.Bold,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Remote Job",
                  style: TextStyle(
                    color: MyColors.primaryColor,
                    fontFamily: MyStyles.Regular,
                    fontSize: 22,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: MyColors.purple,
                ),
                padding: EdgeInsets.all(
                  17,
                ),
                width: Get.width * 0.8,
                child: Column(
                  children: [
                    Text(
                      "66.8k",
                      style: TextStyle(
                        color: MyColors.primaryColor,
                        fontFamily: MyStyles.Bold,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Full Time",
                      style: TextStyle(
                        color: MyColors.primaryColor,
                        fontFamily: MyStyles.Regular,
                        fontSize: 19,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: MyColors.cream,
                ),
                padding: EdgeInsets.all(
                  17,
                ),
                width: Get.width * 0.8,
                child: Column(
                  children: [
                    Text(
                      "38.9k",
                      style: TextStyle(
                        color: MyColors.primaryColor,
                        fontFamily: MyStyles.Bold,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Part Time",
                      style: TextStyle(
                        color: MyColors.primaryColor,
                        fontFamily: MyStyles.Regular,
                        fontSize: 19,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
