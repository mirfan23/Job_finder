import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class CPNPostScreen extends StatelessWidget {
  const CPNPostScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: MyColors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/google_logo.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Google Inc",
                          style: TextStyle(
                            fontFamily: MyStyles.Bold,
                            fontSize: 12,
                            color: MyColors.primaryColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
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
                              "21 minuts ago",
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
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labo",
                  style: TextStyle(
                    fontFamily: MyStyles.Regular,
                    fontSize: 12,
                    color: MyColors.content,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: Get.height * 0.25,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/header-search.png"),
                  ),
                ),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: MyColors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: MyColors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(Get.width),
                    ),
                    child: Icon(
                      Icons.play_arrow_rounded,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "What's it like to work at Google?",
                  style: TextStyle(
                    fontFamily: MyStyles.Bold,
                    fontSize: 12,
                    color: MyColors.subTittle,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Youtube.com",
                  style: TextStyle(
                    fontFamily: MyStyles.Regular,
                    fontSize: 10,
                    color: MyColors.content,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: MyColors.secondaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(Get.width),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.favorite_outline_rounded,
                          color: MyColors.primaryColor,
                          size: 24,
                        ),
                      ),
                    ),
                    Text(
                      "12",
                      style: TextStyle(
                        fontFamily: MyStyles.Regular,
                        fontSize: 12,
                        color: MyColors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(Get.width),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.mode_comment_outlined,
                          color: MyColors.primaryColor,
                          size: 24,
                        ),
                      ),
                    ),
                    Text(
                      "12",
                      style: TextStyle(
                        fontFamily: MyStyles.Regular,
                        fontSize: 12,
                        color: MyColors.grey,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(Get.width),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.share_rounded,
                          color: MyColors.primaryColor,
                          size: 24,
                        ),
                      ),
                    ),
                    Text(
                      "12",
                      style: TextStyle(
                        fontFamily: MyStyles.Regular,
                        fontSize: 12,
                        color: MyColors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
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
    );
  }
}
