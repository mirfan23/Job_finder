import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/modules/forgot_password/views/check_email_view.dart';

class ForgotPasswordController extends GetxController {
  var emailIsError = false.obs;

  late TextEditingController emailController;

  bool emailIsValidate(String email) {
    return EmailValidator.validate(email);
  }

  void forgotPassword() {
    if (!emailIsValidate(emailController.text)) {
      emailIsError.value = true;
    } else {
      emailIsError.value = false;
    }

    if (emailIsError.value == false) {
      print("Success");
      Get.to(CheckEmailView());
    }
  }

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    emailIsError.value = false;
  }
}
