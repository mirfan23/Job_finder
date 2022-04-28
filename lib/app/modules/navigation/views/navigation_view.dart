import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/modules/add_job/views/add_job_view.dart';
import 'package:job_finder/app/modules/home/views/home_view.dart';
import 'package:job_finder/app/modules/message/views/message_view.dart';
import 'package:job_finder/app/modules/posting/views/posting_view.dart';
import 'package:job_finder/app/modules/save_job/views/save_job_view.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/strings.dart';

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
            AddJobView(),
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
              return buttomNavigation(
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

  Widget buttomNavigation(Function() onTap, AssetImage assetImage, int index) {
    return Obx(
      () => Expanded(
        child: SizedBox(
          height: 30,
          width: 30,
          child: InkWell(
            onTap: onTap,
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
    );
  }
}
