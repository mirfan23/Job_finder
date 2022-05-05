import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/modules/description/views/appbar_custom.dart';
import 'package:job_finder/app/modules/description/views/company_view.dart';
import 'package:job_finder/app/modules/description/views/detail_view.dart';
import 'package:job_finder/app/routes/app_pages.dart';
import 'package:job_finder/app/values/colors.dart';

import '../controllers/description_controller.dart';

class DescriptionView extends GetView<DescriptionController> {
  TabBar _myTabBar() {
    return TabBar(
      controller: controller.tab,
      tabs: controller.myTabs,
      indicatorColor: Colors.transparent,
      unselectedLabelColor: MyColors.grey50,
      padding: EdgeInsets.all(14),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.myTabs.length,
      child: Scaffold(
        appBar: AppBarCustom("assets/images/google_icon.png", "UI/UX Designer",
            "Google", "California", "1 days ago", _myTabBar()),
        body: TabBarView(
          controller: controller.tab,
          children: [
            DetailView(),
            CompanyView(),
          ],
        ),
        bottomNavigationBar: bottomButton(),
      ),
    );
  }

  Row bottomButton() {
    return Row(
      children: [
        Obx(() {
          return Expanded(
            child: IconButton(
              icon: controller.isBookmark.isFalse
                  ? Icon(Icons.bookmark_border, color: MyColors.primaryColor)
                  : Icon(Icons.bookmark, color: MyColors.primaryColor),
              onPressed: () {
                controller.isBookmark.toggle();
                if (controller.isBookmark.isTrue) {
                  Get.snackbar(
                    "Bookmark",
                    "Add to bookmark",
                    backgroundColor: Colors.green.withOpacity(0.5),
                    duration: Duration(seconds: 1),
                  );
                } else {
                  Get.snackbar(
                    "Bookmark",
                    "Remove from bookmark",
                    backgroundColor: Colors.red.withOpacity(0.5),
                    duration: Duration(seconds: 1),
                  );
                }
              },
            ),
          );
        }),
        Expanded(
          flex: 4,
          child: Container(
            height: Get.height * 0.1,
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 14.0,
            ),
            child: ElevatedButton(
              child: Text(
                "APPLY NOW",
                style: TextStyle(fontFamily: "DMSansBold"),
              ),
              onPressed: () {
                Get.toNamed(Routes.UPLOAD_CV);
              },
              style: ElevatedButton.styleFrom(
                primary: MyColors.primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
