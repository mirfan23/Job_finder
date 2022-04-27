import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/routes/app_pages.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/styles.dart';

import '../controllers/login_controller.dart';
import '../widgets/lgn_button_primary_widget.dart';
import '../widgets/lgn_button_secondary_widget.dart';
import '../widgets/lgn_question_text_button_widget.dart';
import '../widgets/lgn_text_field_widget.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                tittle(),
                SizedBox(
                  height: 10,
                ),
                tittleContent(),
                SizedBox(
                  height: 40,
                ),
                textFieldLabel("Email"),
                SizedBox(
                  height: 10,
                ),
                LGNTextFieldWidget(
                  textController: controller.emailController,
                  hint: "Your email here...",
                  errorController: controller.emailIsError,
                  errorText: "* Invalid email",
                  obscureText: false,
                  suffix: false,
                ),
                SizedBox(
                  height: 20,
                ),
                textFieldLabel("Password"),
                SizedBox(
                  height: 10,
                ),
                Obx(
                  () => LGNTextFieldWidget(
                    textController: controller.passwordController,
                    hint: "Your password here...",
                    errorController: controller.passwordIsError,
                    errorText:
                        "* Password must be more then 8 character\n* First character must be uppercase\n",
                    obscureText: controller.passwordVisible.value,
                    suffix: true,
                    passwordController: controller.passwordVisible,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                rememberAndForgotPassword(),
                SizedBox(
                  height: 20,
                ),
                LGNButtonPrimary(
                  onPressed: () {
                    controller.login();
                  },
                  text: "LOGIN",
                  backgroundColor: MyColors.primaryColor,
                ),
                SizedBox(
                  height: 20,
                ),
                LGNButtonSecondary(
                  onPressed: () {},
                  text: "SIGN IN WITH GOOGLE",
                  image: "assets/images/google 2.png",
                ),
                SizedBox(
                  height: 20,
                ),
                LGNQuestionTextButtonWidget(
                  text: "You don't have an account yet? ",
                  textButton: "Sign Up",
                  onTap: () {
                    Get.toNamed(AppPages.INITIAL_SU);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget rememberAndForgotPassword() {
    return Row(
      children: [
        Obx(
          () => Container(
            decoration: BoxDecoration(
              color: MyColors.secondaryColor,
              borderRadius: BorderRadius.circular(7),
            ),
            height: 25,
            width: 25,
            child: Checkbox(
              value: controller.rememberMe.value,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide.none,
              ),
              side: BorderSide.none,
              fillColor: MaterialStateProperty.all<Color>(
                MyColors.primaryColor,
              ),
              splashRadius: 10,
              onChanged: (_) {
                controller.rememberMe.toggle();
              },
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Remember me",
          style: TextStyle(
            fontFamily: MyStyles.Regular,
            fontSize: 12,
            color: MyColors.grey50,
          ),
        ),
        Spacer(),
        InkWell(
          onTap: () {
            Get.toNamed(AppPages.INITIAL_FP);
          },
          borderRadius: BorderRadius.circular(Get.width),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Forgot Password ?",
              style: TextStyle(
                fontFamily: MyStyles.Bold,
                fontSize: 12,
                color: MyColors.primaryColor,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget textFieldLabel(String label) {
    return Text(
      label,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontFamily: MyStyles.Bold,
        fontSize: 12,
        color: MyColors.primaryColor,
      ),
    );
  }

  Widget tittleContent() {
    return Center(
      child: SizedBox(
        width: Get.width * 0.7,
        child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
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

  Widget tittle() {
    return Center(
      child: Text(
        "Welcome Back",
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
