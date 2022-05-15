import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/modules/add_job/views/job_position_view.dart';
import 'package:job_finder/app/modules/add_job/views/location_view.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';
import '../controllers/add_job_controller.dart';
import 'company_view.dart';

class AddJobView extends GetView<AddJobController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: MediaQuery.of(context).padding.top,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    borderRadius: BorderRadius.circular(Get.width),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.close_rounded,
                        color: MyColors.primaryColor,
                        size: 24,
                      ),
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Post",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: MyStyles.Bold,
                        fontSize: 12,
                        color: MyColors.orange,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Add a job",
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
              addJobField(
                () {
                  Get.to(JobPositionView());
                },
                "Job position*",
                controller.jobPosition,
              ),
              SizedBox(
                height: 10,
              ),
              addJobField(
                () {
                  Get.bottomSheet(
                    addJobFieldBottomSheet(),
                  );
                },
                "Type of workplace",
                controller.typeOfWorkplace,
              ),
              SizedBox(
                height: 10,
              ),
              addJobField(
                () {
                  Get.to(LocationView());
                },
                "Job location",
                controller.jobLocation,
              ),
              SizedBox(
                height: 10,
              ),
              addJobField(
                () {
                  Get.to(AddCompanyView());
                },
                "Company",
                controller.company,
              ),
              SizedBox(
                height: 10,
              ),
              addJobField(
                () {
                  Get.bottomSheet(
                    addEmploymentTypeBottomShet(),
                  );
                },
                "Employment type",
                controller.employmentType,
              ),
              SizedBox(
                height: 10,
              ),
              addJobField(
                () {
                  Get.dialog(
                    Dialog(
                      child: Wrap(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "Add Description",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: MyStyles.Bold,
                                    fontSize: 14,
                                    color: MyColors.subTittle,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  controller: controller.descriptionController,
                                  textAlign: TextAlign.start,
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 10,
                                  cursorColor: MyColors.primaryColor,
                                  style: TextStyle(
                                    fontFamily: MyStyles.Regular,
                                    fontSize: 12,
                                    color: MyColors.subTittle,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: InputBorder.none,
                                    hintText: "What do you want to talk about?",
                                    hintStyle: TextStyle(
                                      fontFamily: MyStyles.Regular,
                                      fontSize: 12,
                                      color: MyColors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                    contentPadding: EdgeInsets.all(20),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    controller.addDescription(
                                      controller.descriptionController.text,
                                    );
                                  },
                                  style: ButtonStyle(
                                    minimumSize:
                                        MaterialStateProperty.all<Size>(
                                      Size(
                                        double.infinity,
                                        45,
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      MyColors.primaryColor,
                                    ),
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "Add",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: MyStyles.Bold,
                                      fontSize: 14,
                                      color: MyColors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                "Description",
                controller.description,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget addJobFieldBottomSheet() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 5,
            width: Get.width * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Get.width),
              color: MyColors.primaryColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Choose the type of workplace",
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
          Text(
            "Decide and choose the type of place to work according to what you want",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: MyStyles.Regular,
              fontSize: 12,
              color: MyColors.content,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(
              3,
              (index) {
                return addTypeOfWorkplaceButton(index);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget addEmploymentTypeBottomShet() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: MyColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width * 0.3,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Get.width),
              color: MyColors.primaryColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Choose Job Type",
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
            width: Get.width * 0.8,
            child: Text(
              "Determine and choose the type of work according to what you want",
              textAlign: TextAlign.center,
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
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) {
                return InkWell(
                  onTap: () {
                    controller.addJobType(index);
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.listJobType[index].toString(),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: MyStyles.Bold,
                          fontSize: 14,
                          color: MyColors.subTittle,
                        ),
                      ),
                      Spacer(),
                      Obx(
                        () {
                          return controller.jobTypeIndex.value == index + 1
                              ? Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      Get.width,
                                    ),
                                    color: MyColors.orange,
                                  ),
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        Get.width,
                                      ),
                                      border: Border.all(
                                        width: 2,
                                        color: MyColors.white,
                                      ),
                                      color: MyColors.orange,
                                    ),
                                  ),
                                )
                              : Container(
                                  height: 15,
                                  width: 15,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      Get.width,
                                    ),
                                    border: Border.all(
                                      width: 2,
                                      color: MyColors.primaryColor,
                                    ),
                                    color: MyColors.white,
                                  ),
                                );
                        },
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
              itemCount: controller.listJobType.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget addTypeOfWorkplaceButton(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          controller.addTypeOfWorkplace(index);
        },
        borderRadius: BorderRadius.circular(10),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.listTypeOfWorkplace[index][0],
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
                  controller.listTypeOfWorkplace[index][1],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: MyStyles.Regular,
                    fontSize: 12,
                    color: MyColors.content,
                  ),
                ),
              ],
            ),
            Spacer(),
            Obx(
              () => controller.typeOfWorkplaceIndex.value == index + 1
                  ? Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Get.width,
                        ),
                        color: MyColors.orange,
                      ),
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            Get.width,
                          ),
                          border: Border.all(
                            width: 2,
                            color: MyColors.white,
                          ),
                          color: MyColors.orange,
                        ),
                      ),
                    )
                  : Container(
                      height: 15,
                      width: 15,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Get.width,
                        ),
                        border: Border.all(
                          width: 2,
                          color: MyColors.primaryColor,
                        ),
                        color: MyColors.white,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget addJobField(
    Function() onTap,
    String text,
    RxString value,
  ) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                text,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: MyStyles.Bold,
                  fontSize: 14,
                  color: MyColors.subTittle,
                ),
              ),
              Spacer(),
              Obx(
                () => InkWell(
                  onTap: onTap,
                  borderRadius: BorderRadius.circular(Get.width),
                  child: Container(
                    padding:
                        value.isEmpty ? EdgeInsets.all(2) : EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: MyColors.orange.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(Get.width),
                    ),
                    child: value.isEmpty
                        ? Icon(
                            Icons.add_rounded,
                            size: 20,
                            color: MyColors.orange,
                          )
                        : Icon(
                            Icons.edit_rounded,
                            color: MyColors.orange,
                            size: 15,
                          ),
                  ),
                ),
              )
            ],
          ),
          Obx(
            () => value.isNotEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          value.value,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: MyStyles.Regular,
                            fontSize: 12,
                            color: MyColors.content,
                          ),
                        ),
                      ),
                    ],
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
