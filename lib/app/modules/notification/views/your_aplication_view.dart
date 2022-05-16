import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/modules/notification/controllers/notification_controller.dart';
import 'package:job_finder/app/values/colors.dart';

import '../../../values/styles.dart';

class YourAplicationView extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: MyColors.grey,
                      size: 24,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Your application",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: MyStyles.Bold,
                        fontSize: 20,
                        color: MyColors.subTittle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            controller.listNoticitaion[0]["icon"].toString(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "UI/UX Designer",
                          textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              size: 5,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "California, USA",
                              textAlign: TextAlign.center,
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
                        PointCard(
                          content: "Shipped on February 14, 2022 at 11:30 am",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        PointCard(
                          content: "Updated by recruiter 8 hours ago",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Job details",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: MyStyles.Bold,
                            fontSize: 14,
                            color: MyColors.subTittle,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        PointCard(
                          content: "Senior designer",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        PointCard(
                          content: "Full time",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        PointCard(
                          content: "1-3 Years work experience",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Application details",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: MyStyles.Bold,
                            fontSize: 14,
                            color: MyColors.subTittle,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        PointCard(
                          content: "CV/Resume",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DottedBorder(
                          dashPattern: [8, 4],
                          borderType: BorderType.RRect,
                          radius: Radius.circular(20),
                          color: MyColors.grey,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: MyColors.secondaryColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage("assets/images/PDF.png"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "Jamet kudasi - CV - UI/UX Designer.PDF",
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
                                          style: TextStyle(
                                            fontFamily: MyStyles.Regular,
                                            fontSize: 12,
                                            color: MyColors.subTittle,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "867 Kb",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: MyStyles.Regular,
                                            fontSize: 10,
                                            color: MyColors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.circle,
                                          color: MyColors.grey,
                                          size: 5,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "14 Feb 2022 at 11:30 am",
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
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
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: MaterialButton(
                      onPressed: () {},
                      color: MyColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        child: Text(
                          "APPLY FOR MORE JOBS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: MyStyles.Bold,
                            fontSize: 14,
                            color: MyColors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PointCard extends StatelessWidget {
  const PointCard({
    Key? key,
    required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.circle,
          color: MyColors.content,
          size: 5,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          content,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: MyStyles.Regular,
            fontSize: 12,
            color: MyColors.content,
          ),
        ),
      ],
    );
  }
}
