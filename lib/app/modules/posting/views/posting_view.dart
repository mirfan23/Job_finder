import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/modules/navigation/controllers/navigation_controller.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/styles.dart';

import '../controllers/posting_controller.dart';

class PostingView extends GetView<PostingController> {
  @override
  Widget build(BuildContext context) {
    var navigationController = Get.put(NavigationController());
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    navigationController.navigationIndex.value = 0;
                  },
                  borderRadius: BorderRadius.circular(Get.width),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: MyColors.primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            color: MyColors.grey.withOpacity(0.2),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(Get.width),
                                    child: Image(
                                      height: Get.width * 0.15,
                                      width: Get.width * 0.15,
                                      image: AssetImage(
                                        "assets/images/dribbble_logo.png",
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Rafi Fitra Alamsyah",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: MyStyles.Bold,
                                            fontSize: 12,
                                            color: MyColors.black,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                              "21 minutes ago",
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontFamily: MyStyles.Regular,
                                                  fontSize: 10,
                                                  color: MyColors.grey),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "What are the characteristics of a fake job call form?",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontFamily: MyStyles.Bold,
                                    fontSize: 12,
                                    color: MyColors.primaryColor),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Because I always find fake job calls so I'm confused which job to take can you share your knowledge here? thank you",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontFamily: MyStyles.Regular,
                                    fontSize: 12,
                                    color: MyColors.primaryColor),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: MyColors.secondaryColor.withOpacity(0.8),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.favorite_rounded,
                                color: MyColors.red,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "12",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: MyStyles.Bold,
                                  fontSize: 14,
                                  color: MyColors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.insert_comment_outlined,
                                color: MyColors.grey,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "12",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: MyStyles.Bold,
                                  fontSize: 14,
                                  color: MyColors.grey,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_sharp,
                                color: MyColors.grey,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "12",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: MyStyles.Bold,
                                  fontSize: 14,
                                  color: MyColors.grey,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (_, index) {
                    return index == 0
                        ? Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                customButton(
                                  () {
                                    print("Posting");
                                  },
                                  MyColors.secondaryColor,
                                  MyColors.primaryColor,
                                  "Posting",
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                customButton(
                                  () {
                                    print("My Connection");
                                  },
                                  MyColors.primaryColor,
                                  MyColors.white,
                                  "My connection",
                                ),
                              ],
                            ),
                          )
                        : SizedBox(
                            height: 10,
                          );
                  },
                  itemCount: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded customButton(
    Function() onPressed,
    Color backgroundColor,
    Color textColor,
    String text,
  ) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
              vertical: 15,
            ),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: MyStyles.Bold,
            fontSize: 14,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
