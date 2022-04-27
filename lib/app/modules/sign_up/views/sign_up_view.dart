import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/modules/login/widgets/lgn_button_primary_widget.dart';
import 'package:job_finder/app/modules/login/widgets/lgn_button_secondary_widget.dart';
import 'package:job_finder/app/modules/login/widgets/lgn_question_text_button_widget.dart';
import 'package:job_finder/app/modules/login/widgets/lgn_text_field_widget.dart';
import 'package:job_finder/app/routes/app_pages.dart';
import 'package:job_finder/app/values/colors.dart';

import '../../../values/styles.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
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
                textFieldLabel("Fullname"),
                SizedBox(
                  height: 10,
                ),
                LGNTextFieldWidget(
                  textController: controller.fullnameController,
                  hint: "Your fullname here...",
                  errorController: controller.fullnameIsError,
                  errorText: "* Please enter first name and last name",
                  obscureText: false,
                  suffix: false,
                ),
                SizedBox(
                  height: 20,
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
                LGNTextFieldWidget(
                  textController: controller.passwordController,
                  hint: "Your password here...",
                  errorController: controller.passwordIsError,
                  errorText:
                      "* Password must be more then 8 character\n* First character must be uppercase\n",
                  obscureText: controller.visiblePassword.value,
                  suffix: true,
                  passwordController: controller.visiblePassword,
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
                    controller.signup();
                  },
                  text: "SIGN UP",
                  backgroundColor: MyColors.primaryColor,
                ),
                SizedBox(
                  height: 20,
                ),
                LGNButtonSecondary(
                  onPressed: () {},
                  text: "SIGN UP WITH GOOGLE",
                  image: "assets/images/google 2.png",
                ),
                SizedBox(
                  height: 20,
                ),
                LGNQuestionTextButtonWidget(
                  text: "You don't have an account yet? ",
                  textButton: "Sign In",
                  onTap: () {
                    Get.offAllNamed(AppPages.INITIAL_LG);
                  },
                ),
                SizedBox(
                  height: 20,
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
          onTap: () {},
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
