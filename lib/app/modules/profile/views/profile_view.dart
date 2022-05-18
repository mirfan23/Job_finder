// ignore_for_file: prefer_typing_uninitialized_variables

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
    required this.onTap,
    // this.title,
    // this.company,
    // this.time,
  }) : super(key: key);

  final int index;
  // final title;
  // final company;
  // final time;
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
                  child: Obx(
                    () => Icon(
                      controller.listValueController[index].isEmpty
                          ? Icons.add_rounded
                          : Icons.edit_outlined,
                      color: MyColors.orange,
                      size: 15,
                    ),
                  ),
                ),
              )
            ],
          ),
          // Obx(
          //   () {
          //     return
          index == 0 && controller.listValueController[0].isNotEmpty
              ? _cardCustomDefault()
              : index == 1 && controller.listWorkExperience.isNotEmpty
                  ? _cardCustomDetailWidget()
                  : SizedBox(),
          // return controller.listValueController[0].isEmpty
          //     ? Container(
          //         height: 20,
          //         width: 100,
          //         color: Colors.red,
          //       )
          //     : index == 0
          //         ? _cardCustomDefault()
          //         : _cardCustomDetailWidget();
          //   },
          // ),
        ],
      ),
    );
  }

  Widget _cardCustomDefault() {
    return Column(
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
  }

  Widget _cardCustomDetailWidget() {
    return Column(
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
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (_, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.listWorkExperience[index][0].toString(),
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
                        controller.listWorkExperience[index][1].toString(),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: MyStyles.Regular,
                          fontSize: 12,
                          color: MyColors.content,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            controller.listWorkExperience[index][2].toString() +
                                " - " +
                                controller.listWorkExperience[index][3]
                                    .toString(),
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
                            size: 5,
                            color: MyColors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${int.parse(controller.listWorkExperience[index][3].toString().split(" ")[0]) - int.parse(controller.listWorkExperience[index][3].toString().split(" ")[0])} Years",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: MyStyles.Regular,
                              fontSize: 12,
                              color: MyColors.content,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.editWorkExperience(index);
                  },
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: MyColors.orange.withOpacity(0.3),
                    child: Icon(
                      Icons.edit_rounded,
                      color: MyColors.orange,
                      size: 12,
                    ),
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (_, __) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: controller.listWorkExperience.length,
        ),
      ],
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
