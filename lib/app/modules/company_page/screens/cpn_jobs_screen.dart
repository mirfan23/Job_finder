import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/styles.dart';

class CPNJobsScreen extends StatelessWidget {
  const CPNJobsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(249, 249, 249, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image(
                        height: 40,
                        width: 40,
                        image: AssetImage("assets/images/google_logo.png"),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          print("Bookmark");
                        },
                        borderRadius: BorderRadius.circular(Get.width),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.bookmark_border_rounded,
                            color: Color.fromRGBO(82, 75, 107, 1),
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "UI/UX Designer",
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Google inc",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: MyStyles.Regular,
                          fontSize: 12,
                          color: MyColors.content,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.circle,
                        color: MyColors.content,
                        size: 5,
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
                          color: MyColors.content,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: List.generate(
                      3,
                      (index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 5,
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: MyColors.whiteGrey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Design",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: MyStyles.Regular,
                              fontSize: 10,
                              color: MyColors.content,
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
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "25 minute ago",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: MyStyles.Regular,
                          fontSize: 10,
                          color: MyColors.content,
                        ),
                      ),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                              fontFamily: MyStyles.Bold,
                              fontSize: 14,
                              color: MyColors.black,
                            ),
                            children: [
                              TextSpan(text: "\$15K"),
                              TextSpan(
                                text: "/Mo",
                                style: TextStyle(
                                  fontFamily: MyStyles.Bold,
                                  fontSize: 12,
                                  color: MyColors.grey,
                                ),
                              )
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (_, __) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: 10,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
