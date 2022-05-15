import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddJobController extends GetxController {
  late TextEditingController searchController;
  var searchValue = "".obs;
  var typeOfWorkplaceIndex = 0.obs;

  var jobPosition = "".obs;
  var typeOfWorkplace = "".obs;
  var jobLocation = "".obs;
  var company = "".obs;
  var employmentType = "".obs;
  var description = "".obs;

  @override
  void onInit() {
    super.onInit();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();

    jobPosition.value = "";
    typeOfWorkplace.value = "";
    jobLocation.value = "";
    company.value = "";
    employmentType.value = "";
    description.value = "";
  }

  void addJobPosition(int index) {
    jobPosition.value = listjobPosition[index].toString();
    Get.back();
  }

  void addTypeOfWorkplace(int index) {
    typeOfWorkplaceIndex.value = index + 1;
    typeOfWorkplace.value = listTypeOfWorkplace[index][0];
    Get.back();
  }

  var listjobPosition = [
    "Assistant",
    "Associate",
    "Administrative Assistant",
    "Account Manager",
    "Commission Sales Associate",
    "Sales Attendant",
    "Sales Attendant",
    "Accountant",
    "Sales Advocate",
    "Analyst",
  ];

  var listTypeOfWorkplace = [
    ["On-site", "Employees come to work"],
    ["Hybrid", "Employees work directly on site or off site"],
    ["Remote", "Employees working off site"],
  ];
}
