import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/modules/profile/views/about_me_view.dart';
import 'package:job_finder/app/modules/profile/views/add_appreciation_view.dart';
import 'package:job_finder/app/modules/profile/views/add_education_view.dart';
import 'package:job_finder/app/modules/profile/views/add_skill_view.dart';
import 'package:job_finder/app/modules/profile/views/add_work_experience_view.dart.dart';
import 'package:job_finder/app/modules/profile/views/language_view.dart';

class ProfileController extends GetxController {
  late TextEditingController aboutMeController;

  void addAboutMe() {
    listValueController[0] = aboutMeController.text;
    Get.back();
    Get.back();
  }

  @override
  void onInit() {
    super.onInit();
    aboutMeController = TextEditingController();
    // listValueController[0] =
    //     "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus id commodo egestas metus interdum dolor.";
  }

  @override
  void dispose() {
    super.dispose();
    aboutMeController.dispose();
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
