import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/strings.dart';
import 'package:job_finder/app/values/styles.dart';

import '../controllers/company_page_controller.dart';
import '../screens/cpn_about_us_screen.dart';
import '../screens/cpn_jobs_screen.dart';
import '../screens/cpn_post_screen.dart';

class CompanyPageView extends GetView<CompanyPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 246, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerCompany(),
              SizedBox(
                height: 10,
              ),
              actionButton(),
              SizedBox(
                height: 20,
              ),
              companyTab(),
              SizedBox(
                height: 20,
              ),
              screenController()
            ],
          ),
        ),
      ),
      bottomNavigationBar: navigationBottom(),
    );
  }

  Widget navigationBottom() {
    return Container(
      width: Get.width,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                controller.bookmarkCompany.toggle();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  MyColors.secondaryColor.withOpacity(0.3),
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.all(15),
                ),
                elevation: MaterialStateProperty.all<double>(0),
              ),
              child: Obx(
                () => Icon(
                  Icons.bookmark_outline_outlined,
                  color: controller.bookmarkCompany.value
                      ? MyColors.orange
                      : MyColors.primaryColor,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    MyColors.primaryColor,
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(vertical: 15),
                  ),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                child: Text(
                  "APPLY NOW",
                  style: TextStyle(
                    fontFamily: MyStyles.Bold,
                    fontSize: 14,
                    color: MyColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget screenController() {
    return Obx(
      () => controller.tabCompany.value == 0
          ? CPNAboutUsScreen()
          : controller.tabCompany.value == 1
              ? CPNPostScreen()
              : controller.tabCompany.value == 2
                  ? CPNJobsScreen()
                  : CPNAboutUsScreen(),
    );
  }

  Widget actionButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromRGBO(250, 235, 235, 1),
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 15),
                ),
                elevation: MaterialStateProperty.all<double>(0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_rounded,
                    size: 15,
                    color: Color.fromRGBO(252, 70, 70, 1),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Follow",
                    style: TextStyle(
                      fontFamily: MyStyles.Regular,
                      fontSize: 12,
                      color: Color.fromRGBO(252, 70, 70, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromRGBO(250, 235, 235, 1),
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 15),
                ),
                elevation: MaterialStateProperty.all<double>(0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.ios_share_rounded,
                    size: 15,
                    color: Color.fromRGBO(252, 70, 70, 1),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Visit website",
                    style: TextStyle(
                      fontFamily: MyStyles.Regular,
                      fontSize: 12,
                      color: Color.fromRGBO(252, 70, 70, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget headerCompany() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                borderRadius: BorderRadius.circular(
                  Get.width,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: MyColors.primaryColor,
                    size: 25,
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(Get.width),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage(
                      "assets/icons/Options.png",
                    ),
                    height: 25,
                    width: 25,
                  ),
                ),
              )
            ],
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  color: MyColors.black.withOpacity(0.05),
                  margin: EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "UI/UX Designer",
                        style: TextStyle(
                          fontFamily: MyStyles.Bold,
                          fontSize: 16,
                          color: MyColors.primaryColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Google",
                            style: TextStyle(
                              fontFamily: MyStyles.Regular,
                              fontSize: 16,
                              color: MyColors.primaryColor,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: MyColors.primaryColor,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "California",
                            style: TextStyle(
                              fontFamily: MyStyles.Regular,
                              fontSize: 16,
                              color: MyColors.primaryColor,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: MyColors.primaryColor,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "1 day ago",
                            style: TextStyle(
                              fontFamily: MyStyles.Regular,
                              fontSize: 16,
                              color: MyColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Image(
                  image: AssetImage("assets/images/google_logo.png"),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget companyTab() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: List.generate(
          MyStrings.listTabCompany.length,
          (index) {
            return Obx(
              () => Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: ElevatedButton(
                    onPressed: () {
                      controller.tabCompany.value = index;
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        controller.tabCompany.value == index
                            ? MyColors.orange
                            : MyColors.white,
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(vertical: 15),
                      ),
                      elevation: MaterialStateProperty.all<double>(0),
                    ),
                    child: Text(
                      MyStrings.listTabCompany[index],
                      style: TextStyle(
                        fontFamily: MyStyles.Bold,
                        fontSize: 14,
                        color: controller.tabCompany.value == index
                            ? MyColors.white
                            : MyColors.black,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
