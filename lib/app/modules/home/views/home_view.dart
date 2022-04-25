
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/styles.dart';

import '../controllers/home_controller.dart';
import '../widgets/jobhunting.dart';
import '../widgets/subtext.dart';
import '../widgets/welcome.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
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
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (_, __) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        // border: Border
                        color: MyColors.purewhite,
                      ),
                      padding: EdgeInsets.all(
                        20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/logo.png',
                                ),
                                height: 50,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Product Designer",
                                    style: TextStyle(
                                      color: MyColors.primaryColor,
                                      fontFamily: MyStyles.Bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Text("Google inc . California, USA"),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.bookmark_outline,
                                size: 30,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  style: TextStyle(
                                    color: MyColors.primaryColor,
                                    fontSize: 14,
                                    fontFamily: MyStyles.Bold,
                                  ),
                                  text: "\$15K",
                                ),
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      style: TextStyle(
                                        color: MyColors.darkGray,
                                        fontSize: 18,
                                      ),
                                      text: "/Mo",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 17,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ),
                                  color: MyColors.whiteGrey,
                                ),
                                child: Text(
                                  "Senior Designer",
                                  style: TextStyle(
                                    color: MyColors.darkGray,
                                    fontSize: 15,
                                    fontFamily: MyStyles.Regular,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 13,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ),
                                  color: MyColors.whiteGrey,
                                ),
                                child: Text(
                                  "Full Time",
                                  style: TextStyle(
                                    color: MyColors.darkGray,
                                    fontSize: 15,
                                    fontFamily: MyStyles.Regular,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ),
                                  color: MyColors.lightcream,
                                ),
                                child: Text(
                                  "Apply",
                                  style: TextStyle(
                                    color: MyColors.darkGray,
                                    fontSize: 15,
                                    fontFamily: MyStyles.Regular,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (_, __) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
