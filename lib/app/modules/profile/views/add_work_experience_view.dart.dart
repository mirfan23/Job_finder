// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/modules/profile/controllers/profile_controller.dart';
import 'package:job_finder/app/values/colors.dart';

import '../../../values/styles.dart';

class AddWorkExperienceView extends GetView<ProfileController> {
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
                  child: SizedBox(
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
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
                          "Add work experience",
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
                        _WorkExperienceTextFieldidget(
                          title: "Job title",
                          hint: "Write your job title here.",
                          textController: controller.jobTitleController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        _WorkExperienceTextFieldidget(
                          title: "Company",
                          hint: "Write your company title here.",
                          textController: controller.companyController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: _WorkExperienceTextFieldidget(
                                title: "Start date",
                                textController: controller.startDateController,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: _WorkExperienceTextFieldidget(
                                title: "End date",
                                textController: controller.endDateController,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Obx(
                              () => InkWell(
                                onTap: () {
                                  controller.positionNow.toggle();
                                },
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                  child: controller.positionNow.isTrue
                                      ? Icon(
                                          Icons.check_rounded,
                                          color: MyColors.subTittle,
                                          size: 20,
                                        )
                                      : null,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "This is my position now",
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
                        _WorkExperienceTextFieldidget(
                          title: "Description",
                          textController: controller.descriptionWorkController,
                          hint: "Write additional information here",
                          maxLines: 10,
                          textInputType: TextInputType.multiline,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Obx(
                  () {
                    return controller.listValueController[1].isNotEmpty
                        ? Expanded(
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    Get.width,
                                                  ),
                                                  color: MyColors.primaryColor,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Text(
                                                "Remove Work Experience ?",
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
                                                "Are you sure you want to delete this work experience?",
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
                                                        controller
                                                                .listValueController[
                                                            1] = "";
                                                        Get.back();
                                                        Get.back();
                                                      },
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        vertical: 15,
                                                        horizontal: 20,
                                                      ),
                                                      color:
                                                          MyColors.primaryColor,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Text(
                                                        "CONTINUE FILLING",
                                                        style: TextStyle(
                                                          fontFamily:
                                                              MyStyles.Bold,
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
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        vertical: 15,
                                                        horizontal: 20,
                                                      ),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      color: MyColors
                                                          .secondaryColor,
                                                      child: Text(
                                                        "UNDO CHANGES",
                                                        style: TextStyle(
                                                          fontFamily:
                                                              MyStyles.Bold,
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
                                padding: EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 20,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: MyColors.secondaryColor,
                                child: Text(
                                  "REMOVE",
                                  style: TextStyle(
                                    fontFamily: MyStyles.Bold,
                                    fontSize: 14,
                                    color: MyColors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox();
                  },
                ),
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
                                              controller.addWorkExperience();
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
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: MyColors.primaryColor,
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

class _WorkExperienceTextFieldidget extends GetView<ProfileController> {
  const _WorkExperienceTextFieldidget({
    Key? key,
    required this.title,
    this.hint,
    this.maxLines,
    this.textInputType,
    required this.textController,
  }) : super(key: key);

  final String title;
  final hint;
  final maxLines;
  final textInputType;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: MyStyles.Bold,
            fontSize: 12,
            color: MyColors.subTittle,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: textController,
          style: TextStyle(
            fontFamily: MyStyles.Regular,
            fontSize: 12,
            color: MyColors.content,
          ),
          keyboardType: textInputType ?? TextInputType.text,
          maxLines: maxLines ?? 1,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hint ?? "",
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
    );
  }
}
