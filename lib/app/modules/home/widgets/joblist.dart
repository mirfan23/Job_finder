import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/routes/app_pages.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';
import '../controllers/home_controller.dart';

class JobList extends GetView<HomeController> {
  const JobList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (_, __) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            // border: Border
            color: MyColors.purewhite,
          ),
          padding: EdgeInsets.all(
            20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage(
                      'assets/images/logo.png',
                    ),
                    height: 50,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        "Product Designer",
                        style: TextStyle(
                          color: MyColors.primaryColor,
                          fontFamily: MyStyles.Bold,
                          fontSize: 18,
                        ),
                      ),
                      Text("Google inc . California, USA"),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      controller.bookmark.toggle();
                    },
                    child: Obx(
                      () => Icon(
                        controller.bookmark.isTrue
                            ? Icons.bookmark
                            : Icons.bookmark_outline,
                        size: 30,
                        color: controller.bookmark.isTrue
                            ? Colors.yellow[600]
                            : MyColors.grey,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      style: TextStyle(
                        color: MyColors.primaryColor,
                        fontSize: 14,
                        fontFamily: MyStyles.Bold,
                      ),
                      text: "\$15K",
                    ),
                    TextSpan(
                      children: [
                        TextSpan(
                          style: TextStyle(
                            color: MyColors.darkGray,
                            fontSize: 13,
                          ),
                          text: "/Mo",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      color: MyColors.whiteGrey,
                    ),
                    child: Text(
                      "Senior Designer",
                      style: TextStyle(
                        color: MyColors.darkGray,
                        fontSize: 12,
                        fontFamily: MyStyles.Regular,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 13,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      color: MyColors.whiteGrey,
                    ),
                    child: Text(
                      "Full Time",
                      style: TextStyle(
                        color: MyColors.darkGray,
                        fontSize: 12,
                        fontFamily: MyStyles.Regular,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      color: MyColors.lightcream,
                    ),
                    child: InkWell(
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          color: MyColors.darkGray,
                          fontSize: 12,
                          fontFamily: MyStyles.Regular,
                        ),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.DESCRIPTION);
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
      separatorBuilder: (_, __) {
        return SizedBox(
          height: 20,
        );
      },
      itemCount: 100,
    );
  }
}
