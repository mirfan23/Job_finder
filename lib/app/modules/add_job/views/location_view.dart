import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/modules/add_job/controllers/add_job_controller.dart';
import 'package:job_finder/app/values/colors.dart';

import '../../../values/styles.dart';

class LocationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AddJobController());
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
                height: 20,
              ),
              InkWell(
                onTap: () {
                  controller.backResetSearch();
                },
                borderRadius: BorderRadius.circular(Get.width),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    size: 24,
                    color: MyColors.primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Job Position",
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
              Obx(
                () => TextField(
                  onChanged: (_) {
                    controller.searchValue.value =
                        controller.searchController.text;
                  },
                  controller: controller.searchController,
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
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
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontFamily: MyStyles.Regular,
                      fontSize: 12,
                      color: MyColors.grey,
                    ),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      size: 24,
                      color: MyColors.grey,
                    ),
                    suffixIcon: controller.searchValue.value.isNotEmpty ||
                            controller.searchValue.value != ""
                        ? InkWell(
                            onTap: () {
                              controller.searchController.text = "";
                            },
                            child: Icon(
                              Icons.close_rounded,
                              size: 15,
                              color: MyColors.grey,
                            ),
                          )
                        : null,
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
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () {
                      controller.addJobLocation(index);
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Text(
                        controller.listLocation[index],
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: MyStyles.Regular,
                          fontSize: 12,
                          color: MyColors.subTittle,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (_, __) {
                  return SizedBox(
                    height: 20,
                  );
                },
                itemCount: controller.listLocation.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
