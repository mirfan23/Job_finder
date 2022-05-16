import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/modules/home/views/home_view.dart';
import 'package:job_finder/app/modules/message/views/message_view.dart';
import 'package:job_finder/app/modules/posting/views/posting_view.dart';
import 'package:job_finder/app/modules/save_job/views/save_job_view.dart';
import 'package:job_finder/app/routes/app_pages.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/strings.dart';

import '../../../values/styles.dart';
import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.navigationIndex.value,
          children: [
            HomeView(),
            PostingView(),
            PostingView(),
            MessageView(),
            SaveJobView(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: Get.height * 0.1,
        width: Get.width,
        child: Row(
          children: List.generate(
            5,
            (index) {
              return index == 2
                  ? Expanded(
                      child: SizedBox(
                      height: Get.height * 0.1,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Get.bottomSheet(
                              dialogBottomSheet(),
                              isDismissible: true,
                            );
                          },
                          borderRadius: BorderRadius.circular(Get.width),
                          highlightColor: MyColors.white,
                          focusColor: MyColors.white,
                          hoverColor: MyColors.white,
                          splashColor: MyColors.white,
                          child: CircleAvatar(
                            backgroundColor: MyColors.primaryColor,
                            child: Icon(
                              Icons.add_rounded,
                              color: MyColors.white,
                            ),
                          ),
                        ),
                      ),
                    ))
                  : buttomNavigation(
                      () {
                        controller.navigationIndex.value = index;
                      },
                      MyStrings.listNavigationIcon[index],
                      index,
                    );
            },
          ),
        ),
      ),
    );
  }

  Widget dialogBottomSheet() {
    return Container(
      width: Get.width,
      height: Get.height * 0.4,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: MyColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 5,
            width: 40,
            decoration: BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.circular(Get.width),
            ),
          ),
          Spacer(),
          Text(
            "What would you like to add?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: MyStyles.Bold,
              fontSize: 16,
              color: MyColors.subTittle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: Get.width * 0.7,
            child: Text(
              "Would you like to post your tips and experiences or create a job?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: MyStyles.Regular,
                fontSize: 12,
                color: MyColors.content,
              ),
            ),
          ),
          Spacer(),
          buttonDialog(
            () {
              Get.toNamed(AppPages.INITIAL_AP);
            },
            MyColors.primaryColor,
            "POST",
          ),
          SizedBox(
            height: 10,
          ),
          buttonDialog(
            () {
              Get.toNamed(AppPages.INITIAL_AJ);
            },
            MyColors.secondaryColor,
            "MAKE A JOB",
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget buttonDialog(Function()? onPressed, Color color, String text) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          color,
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(
            vertical: 15,
          ),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontFamily: MyStyles.Bold,
              fontSize: 14,
              color: MyColors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget buttomNavigation(Function() onTap, AssetImage assetImage, int index) {
    return Obx(
      () => Expanded(
        child: SizedBox(
          height: Get.height * 0.1,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Image(
                image: assetImage,
                color: controller.navigationIndex.value == index
                    ? MyColors.primaryColor
                    : MyColors.grey.withOpacity(
                        0.5,
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
