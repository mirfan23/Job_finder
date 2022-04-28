import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/modules/description/views/appbar_custom.dart';
import 'package:job_finder/app/routes/app_pages.dart';
import 'package:job_finder/app/values/colors.dart';

import '../controllers/upload_cv_controller.dart';

class UploadCvView extends GetView<UploadCvController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBarCustom("assets/images/google_icon.png", "UI/UX Designer",
          "Google", "California", "1 days ago", null),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Upload CV",
                  style: TextStyle(
                    color: MyColors.primaryColor,
                    fontSize: 14,
                    fontFamily: "DMSansBold",
                  ),
                ),
                const SizedBox(height: 11),
                Text(
                  "Add your CV/Resume to apply for a job",
                  style: TextStyle(
                    color: MyColors.primaryColor,
                    fontSize: 12,
                    fontFamily: "DMSansRegular",
                  ),
                ),
                const SizedBox(height: 20),
                controller.directoryPath.isEmpty
                    ? InkWell(
                        onTap: () {
                          controller.uploadFile();
                        },
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          color: MyColors.grey90,
                          radius: Radius.circular(12),
                          child: Container(
                            height: Get.height * 0.075,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/upload.png'),
                                const SizedBox(width: 15),
                                Text(
                                  "Upload CV/Resume",
                                  style: TextStyle(
                                    color: MyColors.primaryColor,
                                    fontSize: 12,
                                    fontFamily: "DMSansRegular",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : DottedBorder(
                        borderType: BorderType.RRect,
                        color: MyColors.grey90,
                        radius: Radius.circular(12),
                        child: Container(
                          height: Get.height * 0.16,
                          width: Get.width,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                const SizedBox(height: 24),
                                InkWell(
                                  onTap: () {
                                    controller.removeFile();
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.delete_outline,
                                        color: MyColors.red,
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        "Remove file",
                                        style: TextStyle(
                                          color: MyColors.red,
                                          fontSize: 12,
                                          fontFamily: "DMSansRegular",
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                const SizedBox(height: 30),
                Text(
                  "Information",
                  style: TextStyle(
                      color: MyColors.primaryColor,
                      fontFamily: "DMSansBold",
                      fontSize: 14),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.grey50),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.grey50),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText:
                        "Explain why you are the right person for this job",
                    hintStyle: TextStyle(
                      color: MyColors.grey50,
                      fontSize: 12,
                      fontFamily: "DMSansRegular",
                    ),
                  ),
                  maxLines: 10,
                )
              ],
            );
          }),
        ),
      ),
      bottomNavigationBar: Container(
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
            if (controller.directoryPath.isEmpty) {
              Get.snackbar(
                "Upload CV/Resume",
                "CV/Resume cannot be empty",
                backgroundColor: MyColors.red,
                snackPosition: SnackPosition.BOTTOM,
              );
            } else {
              Get.toNamed(Routes.UPLOAD_SUCCESS);
            }
          },
          style: ElevatedButton.styleFrom(
            primary: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
