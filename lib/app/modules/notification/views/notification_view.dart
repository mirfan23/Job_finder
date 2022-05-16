import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/styles.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      splashRadius: 24,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        size: 24,
                        color: MyColors.grey,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        controller.readAllNotification();
                      },
                      child: Text(
                        "Read all",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: MyStyles.Regular,
                          fontSize: 12,
                          color: MyColors.orange,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Notification",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: MyStyles.Bold,
                    fontSize: 20,
                    color: MyColors.subTittle,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return _NotificationCardWidget(
                      index: index,
                    );
                  },
                  separatorBuilder: (_, __) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: controller.listNoticitaion.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NotificationCardWidget extends GetView<NotificationController> {
  const _NotificationCardWidget({
    required this.index,
    Key? key,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: controller.listNoticitaion[index]["read"] == false
              ? MyColors.secondaryColor
              : Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: MyColors.grey,
                  backgroundImage: AssetImage(
                    controller.listNoticitaion[index]["icon"].toString(),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Get.bottomSheet(
                      Wrap(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 5,
                                  width: Get.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      Get.width,
                                    ),
                                    color: MyColors.primaryColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                ListView.separated(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (_, index) {
                                    return index ==
                                            controller
                                                    .listNotificationOptionTittle
                                                    .length -
                                                1
                                        ? Container(
                                            padding: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                              color: MyColors.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: ListTile(
                                              leading: Icon(
                                                controller
                                                        .listNotificationOptionIcon[
                                                    index],
                                                color: MyColors.white,
                                              ),
                                              minLeadingWidth: 2,
                                              title: Text(
                                                controller
                                                        .listNotificationOptionTittle[
                                                    index],
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontFamily: MyStyles.Regular,
                                                  fontSize: 14,
                                                  color: MyColors.white,
                                                ),
                                              ),
                                            ),
                                          )
                                        : Padding(
                                            padding: EdgeInsets.all(2),
                                            child: ListTile(
                                              leading: Icon(
                                                controller
                                                        .listNotificationOptionIcon[
                                                    index],
                                              ),
                                              minLeadingWidth: 2,
                                              title: Text(
                                                controller
                                                        .listNotificationOptionTittle[
                                                    index],
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontFamily: MyStyles.Regular,
                                                  fontSize: 14,
                                                  color: MyColors.content,
                                                ),
                                              ),
                                            ),
                                          );
                                  },
                                  separatorBuilder: (_, __) {
                                    return SizedBox(
                                      height: 5,
                                    );
                                  },
                                  itemCount: controller
                                      .listNotificationOptionTittle.length,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  splashRadius: 20,
                  icon: Icon(
                    Icons.more_vert_rounded,
                    color: MyColors.grey,
                    size: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              controller.listNoticitaion[index]["tittle"].toString(),
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: MyStyles.Bold,
                fontSize: 14,
                color: MyColors.subTittle,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              controller.listNoticitaion[index]["content"].toString(),
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: MyStyles.Regular,
                fontSize: 12,
                color: MyColors.content,
              ),
            ),
            // RichText(
            //   textAlign: TextAlign.start,
            //   text: TextSpan(
            //     style: TextStyle(
            //       fontFamily: MyStyles.Regular,
            //       fontSize: 12,
            //       color: MyColors.content,
            //     ),
            //     children: [
            //       TextSpan(
            //         text: "Applications for ",
            //       ),
            //       TextSpan(
            //         text: "Google inc ",
            //         style: TextStyle(
            //           fontFamily: MyStyles.Bold,
            //           fontSize: 12,
            //           color: MyColors.subTittle,
            //         ),
            //       ),
            //       TextSpan(
            //         text: "have entered for company review",
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: MyColors.primaryColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    controller.listNoticitaion[index]["button"].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: MyStyles.Regular,
                      fontSize: 12,
                      color: MyColors.white,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  controller.listNoticitaion[index]["time"].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: MyStyles.Regular,
                    fontSize: 10,
                    color: MyColors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
