import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/modules/login/widgets/lgn_text_field_widget.dart';
import 'package:job_finder/app/values/colors.dart';

import '../../../values/styles.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              tittle("Create an Account"),
              SizedBox(
                height: 10,
              ),
              tittleContent(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
              ),
              SizedBox(
                height: 40,
              ),
              Image(
                image: AssetImage("assets/images/forgot_image.png"),
              ),
              SizedBox(
                height: 40,
              ),
              LGNTextFieldWidget(
                textController: controller.emailController,
                hint: "Your email here...",
                errorController: controller.emailIsError,
                errorText: "* Invalid email",
                obscureText: false,
                suffix: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tittleContent(String tittleContent) {
    return Center(
      child: SizedBox(
        width: Get.width * 0.7,
        child: Text(
          tittleContent,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: MyStyles.Regular,
            fontSize: 12,
            color: MyColors.disable,
          ),
        ),
      ),
    );
  }

  Widget tittle(String tittle) {
    return Center(
      child: Text(
        tittle,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: MyStyles.Bold,
          fontSize: 30,
          color: MyColors.primaryColor,
        ),
      ),
    );
  }
}
