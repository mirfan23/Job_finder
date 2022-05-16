import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/styles.dart';

import '../controllers/save_job_controller.dart';

class SaveJobView extends GetView<SaveJobController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SaveJobController());
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: Obx(
          () => controller.listCompanyName.isNotEmpty
              ? SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: listNotNull(),
                  ),
                )
              : listNull(),
        ),
      ),
    );
  }

  Widget listNull() {
    return SizedBox(
      width: double.infinity,
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Spacer(),
            Text(
              "No Savings",
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
                "You don't have any jobs saved, please find it in search to save jobs",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: MyStyles.Regular,
                  fontSize: 12,
                  color: MyColors.content,
                ),
              ),
            ),
            Spacer(),
            Image(
              image: AssetImage("assets/images/Illustration.png"),
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {},
              color: MyColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "FIND A JOB",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: MyStyles.Bold,
                  fontSize: 14,
                  color: MyColors.white,
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Column listNotNull() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: Text(
                "Save Job",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: MyStyles.Bold,
                  fontSize: 20,
                  color: MyColors.primaryColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  controller.listCompanyName.clear();
                },
                child: Text(
                  "Delete all",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: MyStyles.Regular,
                    fontSize: 12,
                    color: MyColors.orange,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            return Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(Get.width),
                        child: Image(
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                          image: AssetImage(
                            controller.listIconCompany[index],
                          ),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          Get.bottomSheet(
                            Wrap(
                              children: [
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    color: MyColors.white,
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
                                                  controller.listTittleOption
                                                          .length -
                                                      1
                                              ? InkWell(
                                                  onTap: () {},
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: Container(
                                                    padding: EdgeInsets.all(15),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color:
                                                          MyColors.primaryColor,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Icon(
                                                          controller
                                                                  .listIconOption[
                                                              index],
                                                          size: 25,
                                                          color: MyColors.white,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          controller
                                                                  .listTittleOption[
                                                              index],
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontFamily: MyStyles
                                                                .Regular,
                                                            fontSize: 14,
                                                            color:
                                                                MyColors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              : ListTile(
                                                  onTap: () {},
                                                  leading: Icon(
                                                    controller
                                                        .listIconOption[index],
                                                    size: 25,
                                                    color: MyColors.subTittle,
                                                  ),
                                                  minLeadingWidth: 2,
                                                  title: Text(
                                                    controller.listTittleOption[
                                                        index],
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontFamily:
                                                          MyStyles.Regular,
                                                      fontSize: 14,
                                                      color: MyColors.subTittle,
                                                    ),
                                                  ),
                                                );
                                        },
                                        itemCount:
                                            controller.listIconOption.length,
                                        separatorBuilder: (_, __) {
                                          return SizedBox(
                                            height: 5,
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.more_vert_rounded,
                          color: MyColors.primaryColor,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    controller.listCompanyName[index],
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
                  Row(
                    children: [
                      Text(
                        "Google inc",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: MyStyles.Regular,
                          fontSize: 12,
                          color: MyColors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.circle,
                        color: MyColors.grey,
                        size: 2,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "California, USA",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: MyStyles.Regular,
                          fontSize: 12,
                          color: MyColors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: List.generate(
                      controller.listSaveJobTag.length,
                      (index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: MyColors.whiteGrey,
                          ),
                          child: Text(
                            controller.listSaveJobTag[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: MyStyles.Regular,
                              fontSize: 10,
                              color: MyColors.grey,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "25 minute ago",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: MyStyles.Regular,
                          fontSize: 12,
                          color: MyColors.grey,
                        ),
                      ),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontFamily: MyStyles.Regular,
                            fontSize: 12,
                            color: MyColors.grey,
                          ),
                          children: [
                            TextSpan(
                              text: "\$20K",
                              style: TextStyle(
                                fontFamily: MyStyles.Bold,
                                fontSize: 14,
                                color: MyColors.subTittle,
                              ),
                            ),
                            TextSpan(
                              text: "/Mo",
                              style: TextStyle(
                                fontFamily: MyStyles.Regular,
                                fontSize: 12,
                                color: MyColors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (_, __) {
            return SizedBox(
              height: 20,
            );
          },
          itemCount: controller.listCompanyName.length,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
