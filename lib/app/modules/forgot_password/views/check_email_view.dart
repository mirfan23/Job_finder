import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/modules/forgot_password/controllers/forgot_password_controller.dart';
import 'package:job_finder/app/modules/forgot_password/views/successfully_view.dart';
import 'package:job_finder/app/modules/login/widgets/lgn_question_text_button_widget.dart';
import 'package:job_finder/app/routes/app_pages.dart';
import 'package:job_finder/app/values/colors.dart';

import '../../../values/styles.dart';

class CheckEmailView extends GetView<ForgotPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                tittle("Check Your Email"),
                SizedBox(
                  height: 10,
                ),
                tittleContent(
                  "We have sent the reset password to the email address brandonelouis@gmial.com",
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Image(
                    image: AssetImage(
                        "assets/images/undraw_message_sent_re_q2kl 1.png"),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                customButton(
                  () {
                    Get.to(SuccessfullyView());
                  },
                  "OPEN YOUR EMAIL",
                  MyColors.primaryColor,
                ),
                SizedBox(
                  height: 20,
                ),
                customButton(
                  () {
                    Get.offAllNamed(AppPages.INITIAL_LG);
                  },
                  "BACK TO LOGIN",
                  MyColors.secondaryColor,
                ),
                SizedBox(
                  height: 20,
                ),
                LGNQuestionTextButtonWidget(
                  text: "You have not received the email?",
                  textButton: "Resend",
                  onTap: () {
                    print("Resend");
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

  Widget customButton(
    Function() onPressed,
    String text,
    Color backgroundColor,
  ) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          backgroundColor,
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(
            vertical: 15,
          ),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontFamily: MyStyles.Bold,
              fontSize: 14,
              color: MyColors.white,
            ),
          ),
        ],
      ),
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
