import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/modules/profile/controllers/profile_controller.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/styles.dart';

class AboutMeView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      IconButton(
                        onPressed: () {},
                        splashRadius: 24,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: MyColors.subTittle,
                          size: 24,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "About me",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: MyStyles.Bold,
                          fontSize: 16,
                          color: MyColors.subTittle,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: controller.aboutMeController,
                        keyboardType: TextInputType.multiline,
                        minLines: 10,
                        maxLines: 20,
                        style: TextStyle(
                          fontFamily: MyStyles.Regular,
                          fontSize: 12,
                          color: MyColors.content,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Tell me about you.",
                          hintStyle: TextStyle(
                            fontFamily: MyStyles.Regular,
                            fontSize: 12,
                            color: MyColors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: MaterialButton(
                      onPressed: () {
                        Get.bottomSheet(
                          Wrap(
                            children: [
                              Container(
                                width: Get.width,
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
                                      width: Get.width * 0.2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Get.width,
                                        ),
                                        color: MyColors.primaryColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Undo Changes ?",
                                      style: TextStyle(
                                        fontFamily: MyStyles.Bold,
                                        fontSize: 16,
                                        color: MyColors.subTittle,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Are you sure you want to change what you entered?",
                                      style: TextStyle(
                                        fontFamily: MyStyles.Regular,
                                        fontSize: 12,
                                        color: MyColors.content,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: MaterialButton(
                                            onPressed: () {
                                              controller.addAboutMe();
                                            },
                                            padding: EdgeInsets.symmetric(
                                              vertical: 15,
                                              horizontal: 20,
                                            ),
                                            color: MyColors.primaryColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Text(
                                              "CONTINUE FILLING",
                                              style: TextStyle(
                                                fontFamily: MyStyles.Bold,
                                                fontSize: 14,
                                                color: MyColors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: MaterialButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            padding: EdgeInsets.symmetric(
                                              vertical: 15,
                                              horizontal: 20,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            color: MyColors.secondaryColor,
                                            child: Text(
                                              "UNDO CHANGES",
                                              style: TextStyle(
                                                fontFamily: MyStyles.Bold,
                                                fontSize: 14,
                                                color: MyColors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      padding: EdgeInsets.symmetric(vertical: 15),
                      color: MyColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "SAVE",
                        style: TextStyle(
                          fontFamily: MyStyles.Bold,
                          fontSize: 14,
                          color: MyColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
