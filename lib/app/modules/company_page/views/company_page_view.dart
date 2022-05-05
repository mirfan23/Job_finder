import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/strings.dart';
import 'package:job_finder/app/values/styles.dart';

import '../controllers/company_page_controller.dart';
import '../screens/cpn_about_us_screen.dart';

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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(
                    MyStrings.listTabCompany.length,
                    (index) {
                      return companyTab(index);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => controller.tabCompany.value == 0
                    ? CPNAboutUsScreen()
                    : controller.tabCompany.value == 1
                        ? CPNPostScreen()
                        : controller.tabCompany.value == 2
                            ? CPNJobsScreen()
                            : CPNAboutUsScreen(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
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
      ),
    );
  }

  Padding actionButton() {
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

  Stack headerCompany() {
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

  Widget companyTab(int index) {
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
  }
}

class CPNJobsScreen extends StatelessWidget {
  const CPNJobsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

class CPNPostScreen extends StatelessWidget {
  const CPNPostScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/google_logo.png"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Google Inc",
                      style: TextStyle(
                        fontFamily: MyStyles.Bold,
                        fontSize: 12,
                        color: MyColors.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          color: MyColors.grey,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "21 minuts ago",
                          style: TextStyle(
                            fontFamily: MyStyles.Regular,
                            fontSize: 10,
                            color: MyColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labo",
              style: TextStyle(
                fontFamily: MyStyles.Regular,
                fontSize: 12,
                color: MyColors.content,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: Get.height * 0.25,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/header-search.png"),
              ),
            ),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: MyColors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                height: 50,
                width: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: MyColors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(Get.width),
                ),
                child: Icon(
                  Icons.play_arrow_rounded,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "What's it like to work at Google?",
              style: TextStyle(
                fontFamily: MyStyles.Bold,
                fontSize: 12,
                color: MyColors.subTittle,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Youtube.com",
              style: TextStyle(
                fontFamily: MyStyles.Regular,
                fontSize: 10,
                color: MyColors.content,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: MyColors.secondaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(Get.width),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.favorite_outline_rounded,
                      color: MyColors.primaryColor,
                      size: 24,
                    ),
                  ),
                ),
                Text(
                  "12",
                  style: TextStyle(
                    fontFamily: MyStyles.Regular,
                    fontSize: 12,
                    color: MyColors.grey,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(Get.width),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.mode_comment_outlined,
                      color: MyColors.primaryColor,
                      size: 24,
                    ),
                  ),
                ),
                Text(
                  "12",
                  style: TextStyle(
                    fontFamily: MyStyles.Regular,
                    fontSize: 12,
                    color: MyColors.grey,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(Get.width),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.share_rounded,
                      color: MyColors.primaryColor,
                      size: 24,
                    ),
                  ),
                ),
                Text(
                  "12",
                  style: TextStyle(
                    fontFamily: MyStyles.Regular,
                    fontSize: 12,
                    color: MyColors.grey,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
