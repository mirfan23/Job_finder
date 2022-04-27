import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';
import '../controllers/home_controller.dart';

class JobHunting extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.width * 0.5,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: MyColors.blue,
                    ),
                    height: Get.height * 0.30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
              ],
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: MyColors.purple,
                    ),
                    width: Get.width * 0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: MyColors.cream,
                    ),
                    width: Get.width * 0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
