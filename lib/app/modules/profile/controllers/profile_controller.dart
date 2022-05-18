import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/modules/profile/views/about_me_view.dart';
import 'package:job_finder/app/modules/profile/views/add_appreciation_view.dart';
import 'package:job_finder/app/modules/profile/views/add_education_view.dart';
import 'package:job_finder/app/modules/profile/views/add_skill_view.dart';
import 'package:job_finder/app/modules/profile/views/add_work_experience_view.dart.dart';
import 'package:job_finder/app/modules/profile/views/language_view.dart';

class ProfileController extends GetxController {
  // About me
  late TextEditingController aboutMeController;

  // Add work experience
  var positionNow = false.obs;
  late TextEditingController jobTitleController;
  late TextEditingController companyController;
  late TextEditingController startDateController;
  late TextEditingController endDateController;
  late TextEditingController descriptionWorkController;

  void addAboutMe() {
    listValueController[0] = aboutMeController.text;
    Get.back();
    Get.back();
  }

  void addWorkExperience() {
    listWorkExperience.add([
      jobTitleController.text,
      companyController.text,
      startDateController.text,
      endDateController.text,
      positionNow.value,
      descriptionWorkController.text,
    ]);
    print(listWorkExperience);
    jobTitleController.text = "";
    companyController.text = "";
    startDateController.text = "";
    endDateController.text = "";
    positionNow.value = false;
    descriptionWorkController.text = "";
    Get.back();
    Get.back();
  }

  void editWorkExperience(int index) {
    print(listWorkExperience[index]);
    jobTitleController.text = listWorkExperience[index][0];
    companyController.text = listWorkExperience[index][1];
    startDateController.text = listWorkExperience[index][2];
    endDateController.text = listWorkExperience[index][3];
    positionNow.value = listWorkExperience[index][4] == "true" ? true : false;
    descriptionWorkController.text = listWorkExperience[index][5];

    Get.to(AddWorkExperienceView());
  }

  @override
  void onInit() {
    super.onInit();
    // about me
    aboutMeController = TextEditingController();
    // add work experience
    jobTitleController = TextEditingController();
    companyController = TextEditingController();
    startDateController = TextEditingController();
    endDateController = TextEditingController();
    descriptionWorkController = TextEditingController();

    try {
      print(listWorkExperience[0].isNotEmpty);
    } catch (err) {
      print(err);
    }
  }

  @override
  void dispose() {
    super.dispose();
    // about me
    aboutMeController.dispose();
    // add work experience
    jobTitleController.dispose();
    companyController.dispose();
    startDateController.dispose();
    endDateController.dispose();
    descriptionWorkController.dispose();
  }

  var listProfileMenu = [
    "About me",
    "Work Experience",
    "Education",
    "Skill",
    "Language",
    "Appreciation",
  ];

  var listProfileMenuIcon = [
    Icons.person_outline,
    Icons.work_outline_rounded,
    Icons.school_outlined,
    Icons.ac_unit_rounded,
    Icons.language_rounded,
    Icons.auto_awesome_outlined,
  ];

  var listValueController = [
    "",
    "",
    "",
    "",
    "",
    "",
  ].obs;

  var listWorkExperience = [].obs;

  var listPageClicked = [
    AboutMeView(),
    AddWorkExperienceView(),
    AddEducationView(),
    AddSkillView(),
    LanguageView(),
    AddAppreciationView(),
  ];
}
