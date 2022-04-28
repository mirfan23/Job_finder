import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/modules/description/views/appbar_custom.dart';
import 'package:job_finder/app/modules/upload_cv/controllers/upload_cv_controller.dart';
import 'package:job_finder/app/routes/app_pages.dart';
import 'package:job_finder/app/values/colors.dart';

class UploadSuccessView extends GetView<UploadCvController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom("assets/images/google_icon.png", "UI/UX Designer",
          "Google", "California", "1 days ago", null),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              DottedBorder(
                borderType: BorderType.RRect,
                color: MyColors.grey90,
                radius: Radius.circular(12),
                child: Container(
                  width: Get.width,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 8.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/PDF.png'),
                            const SizedBox(width: 15),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${controller.directoryPath}",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    softWrap: true,
                                    style: TextStyle(
                                      color: MyColors.primaryColor,
                                      fontSize: 12,
                                      fontFamily: "DMSansRegular",
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "${controller.fileSize} Kb . ${controller.date}",
                                    style: TextStyle(
                                      color: MyColors.grey50,
                                      fontSize: 12,
                                      fontFamily: "DMSansRegular",
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 19),
              Image.asset(
                "assets/images/success_upload.png",
              ),
              const SizedBox(height: 30),
              Text(
                "Success",
                style: TextStyle(
                  color: MyColors.primaryColor,
                  fontFamily: "DMSansBold",
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Congratulations, your application has been sent",
                style: TextStyle(
                  color: MyColors.primaryColor,
                  fontFamily: "DMSansRegular",
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: Get.height * 0.1,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 58.0,
              vertical: 14.0,
            ),
            child: ElevatedButton(
              child: Text(
                "FIND A SIMILAR JOB",
                style: TextStyle(
                  fontFamily: "DMSansBold",
                  color: MyColors.primaryColor,
                ),
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: MyColors.whiteGrey,
              ),
            ),
          ),
          Container(
            height: Get.height * 0.1,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 58.0,
              vertical: 14.0,
            ),
            child: ElevatedButton(
              child: Text(
                "BACK TO HOME",
                style: TextStyle(fontFamily: "DMSansBold"),
              ),
              onPressed: () {
                Get.toNamed(Routes.HOME);
              },
              style: ElevatedButton.styleFrom(
                primary: MyColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
