import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/styles.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HomeView'),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          Get.width,
                        ),
                        child: Image(
                          image: AssetImage(
                            'assets/images/girl-vektor.jpg',
                          ),
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Hello \nOrlando Diggs.",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: MyStyles.Bold,
                            color: MyColors.primaryColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              // width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 50,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                                color: MyColors.primaryColor,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "50% off \ntake any courses",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: MyStyles.Medium,
                                      color: MyColors.white,
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 20,
                                  // ),
                                  // SizedBox(
                                  //   height: 20,
                                  // ),
                                  // SizedBox(
                                  //   height: 20,
                                  // ),
                                  // SizedBox(
                                  //   height: 20,
                                  // ),
                                  // InkWell(
                                  //   onTap: () {},
                                  //   child: Container(
                                  //     color: MyColors.orange,
                                  //     padding: EdgeInsets.symmetric(
                                  //       horizontal: 20,
                                  //       vertical: 20,
                                  //     ),
                                  //     child: Text(
                                  //       "Join Now",
                                  //       style: TextStyle(
                                  //         color: MyColors.white,
                                  //         fontSize: 18,
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            Image(
                              image: AssetImage(
                                'assets/images/mentor.png',
                              ),
                              height: Get.width * 0.5,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
