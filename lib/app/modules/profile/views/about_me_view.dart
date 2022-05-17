import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/modules/profile/controllers/profile_controller.dart';
import 'package:job_finder/app/values/colors.dart';

class AboutMeView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: SingleChildScrollView(),
      ),
    );
  }
}
