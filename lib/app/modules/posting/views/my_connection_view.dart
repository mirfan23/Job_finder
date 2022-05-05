// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/modules/navigation/controllers/navigation_controller.dart';
import 'package:job_finder/app/modules/posting/controllers/posting_controller.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/styles.dart';

class MyConnectionView extends GetView<PostingController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(PostingController());
    var navigationController = Get.put(NavigationController());
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      customButton(
                        () {
                          Get.back();
                        },
                        MyColors.secondaryColor,
                        MyColors.primaryColor,
                        "Posting",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      customButton(
                        () {},
                        MyColors.primaryColor,
                        MyColors.white,
                        "My connection",
                      ),
                    ],
                  ),
                ),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: (Get.width * 0.83 / Get.width),
                  children: List.generate(
                    6,
                    (index) {
                      return InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: MyColors.secondaryColor.withOpacity(0.2),
                          ),
                          child: Column(
                            children: [
                              Image(
                                height: Get.width * 0.15,
                                width: Get.width * 0.15,
                                image: AssetImage(
                                  "assets/images/dribbble_logo.png",
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Dribbble Inc",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: MyStyles.Bold,
                                  fontSize: 14,
                                  color: MyColors.primaryColor,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "1M Followers",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: MyStyles.Regular,
                                  fontSize: 12,
                                  color: MyColors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        Get.width,
                                      ),
                                      side: BorderSide(
                                        color: MyColors.secondaryColor,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Colors.white,
                                  ),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.symmetric(
                                      horizontal: Get.width * 0.1,
                                      vertical: 10,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Follow",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: MyStyles.Regular,
                                    fontSize: 12,
                                    color: MyColors.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded customButton(
    Function() onPressed,
    Color backgroundColor,
    Color textColor,
    String text,
  ) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
              vertical: 15,
            ),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: MyStyles.Bold,
            fontSize: 14,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
