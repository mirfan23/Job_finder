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
    listValueController[1] =
        "${jobTitleController.text}\n${companyController.text}\n${startDateController.text} - ${endDateController.text} • ${int.parse(endDateController.text.split(" ")[0]) - int.parse(startDateController.text.split(" ")[0])}";
    Get.back();
    Get.back();
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
  var listPageClicked = [
    AboutMeView(),
    AddWorkExperienceView(),
    AddEducationView(),
    AddSkillView(),
    LanguageView(),
    AddAppreciationView(),
  ];
}
