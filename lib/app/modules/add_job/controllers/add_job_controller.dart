import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddJobController extends GetxController {
  late TextEditingController searchController;
  late TextEditingController descriptionController;

  var typeOfWorkplaceIndex = 0.obs;
  var jobTypeIndex = 0.obs;

  var searchValue = "".obs;
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
    descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
    descriptionController.dispose();

    jobPosition.value = "";
    typeOfWorkplace.value = "";
    jobLocation.value = "";
    company.value = "";
    employmentType.value = "";
    description.value = "";
  }

  void addJobPosition(int index) {
    jobPosition.value = listjobPosition[index].toString();
    backResetSearch();
  }

  void addTypeOfWorkplace(int index) {
    typeOfWorkplaceIndex.value = index + 1;
    typeOfWorkplace.value = listTypeOfWorkplace[index][0];
    Get.back();
  }

  void addJobLocation(int index) {
    jobLocation.value = listLocation[index].toString();
    backResetSearch();
  }

  void addJobCompany(int index) {
    company.value = listJobCompany[index][0].toString();
    backResetSearch();
  }

  void addJobType(int index) {
    jobTypeIndex.value = index + 1;
    employmentType.value = listJobType[index];
    backResetSearch();
  }

  void addDescription(String value) {
    description.value = value;
    backResetSearch();
  }

  void backResetSearch() {
    searchController.text = "";
    searchValue.value = "";
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
  var listLocation = [
    "Califon, United States",
    "California, United States",
    "California City, United States",
  ];

  var listTypeOfWorkplace = [
    ["On-site", "Employees come to work"],
    ["Hybrid", "Employees work directly on site or off site"],
    ["Remote", "Employees working off site"],
  ];

  var listJobCompany = [
    [
      "Google",
      "Company",
      "Internet",
    ],
    [
      "Apple",
      "Company",
      "Electronic goods",
    ],
    [
      "Amazon",
      "Company",
      "Internet",
    ],
    [
      "Dribbble",
      "Company",
      "Design",
    ],
    [
      "Twitter",
      "Company",
      "Internet",
    ],
    [
      "Facebook",
      "Company",
      "Internet",
    ],
    [
      "Microsoft",
      "Company",
      "Computer software",
    ],
    [
      "Allianz",
      "Company",
      "Financial services",
    ],
    [
      "Adobe",
      "Company",
      "Computer software",
    ],
    [
      "AXA",
      "Company",
      "Insurance",
    ],
  ];

  var listJobType = [
    "Full time",
    "Part time",
    "Contract",
    "Temporary",
    "Volunteer",
    "Apprenticeship",
  ];
}
