import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/styles.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 20,
                left: 20,
                right: 20,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: MyColors.primaryColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/Background.png",
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        splashRadius: 24,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          size: 24,
                          color: MyColors.white,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        splashRadius: 24,
                        icon: Icon(
                          Icons.ios_share_outlined,
                          size: 24,
                          color: MyColors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {},
                        splashRadius: 24,
                        icon: Icon(
                          Icons.settings_outlined,
                          size: 24,
                          color: MyColors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: MyColors.white,
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/images/toa-heftiba-O3ymvT7Wf9U-unsplash.jpg",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Orlando Diggs",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: MyStyles.Bold,
                      fontSize: 14,
                      color: MyColors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "California, USA",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: MyStyles.Regular,
                      fontSize: 12,
                      color: MyColors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      _ProfileRichTextWidget(
                        value: "120k ",
                        text: "Follower",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      _ProfileRichTextWidget(
                        value: "23k ",
                        text: "Following",
                      ),
                      Spacer(),
                      MaterialButton(
                        onPressed: () {},
                        color: MyColors.white.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Edit profile",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: MyStyles.Regular,
                                fontSize: 12,
                                color: MyColors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.edit_outlined,
                              color: MyColors.white,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return _ProfileCardWidget(
                    onTap: () {
                      Get.to(controller.listPageClicked[index]);
                    },
                    index: index,
                    text: controller.listValueController[index],
                  );
                },
                separatorBuilder: (_, __) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: controller.listProfileMenu.length,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileCardWidget extends GetView<ProfileController> {
  const _ProfileCardWidget({
    Key? key,
    required this.index,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final int index;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                controller.listProfileMenuIcon[index],
                color: MyColors.orange,
                size: 24,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                controller.listProfileMenu[index],
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: MyStyles.Bold,
                  fontSize: 14,
                  color: MyColors.subTittle,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(Get.width),
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: MyColors.orange.withOpacity(0.3),
                  child: Icon(
                    controller.listValueController[index].isEmpty
                        ? Icons.add_rounded
                        : Icons.edit_outlined,
                    color: MyColors.orange,
                    size: 15,
                  ),
                ),
              )
            ],
          ),
          Obx(
            () {
              return controller.listValueController[index].isEmpty
                  ? SizedBox()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Get.width),
                            color: MyColors.whiteGrey,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          controller.listValueController[index],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: MyStyles.Regular,
                            fontSize: 14,
                            color: MyColors.content,
                          ),
                        )
                      ],
                    );
            },
          ),
        ],
      ),
    );
  }
}

class _ProfileRichTextWidget extends StatelessWidget {
  const _ProfileRichTextWidget({
    Key? key,
    required this.value,
    required this.text,
  }) : super(key: key);

  final String value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: TextStyle(
          fontFamily: MyStyles.Regular,
          fontSize: 12,
          color: MyColors.white,
        ),
        children: [
          TextSpan(
            style: TextStyle(
              fontFamily: MyStyles.Bold,
              fontSize: 14,
              color: MyColors.white,
            ),
            text: value,
          ),
          TextSpan(text: text),
        ],
      ),
    );
  }
}
