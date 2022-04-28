import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/routes/app_pages.dart';

class LoginController extends GetxController {
  var emailIsError = false.obs;
  var passwordIsError = false.obs;
  var rememberMe = false.obs;
  var passwordVisible = true.obs;

  late TextEditingController emailController;
  late TextEditingController passwordController;

  bool emailIsValidate(String email) {
    return EmailValidator.validate(email);
  }

  bool passwordIsValidate(String password) {
    return password.isNotEmpty &&
        password[0] == password[0].toUpperCase() &&
        password.length >= 8;
  }

  void login() {
    if (!emailIsValidate(emailController.text)) {
      emailIsError.value = true;
    } else {
      emailIsError.value = false;
    }

    if (!passwordIsValidate(passwordController.text)) {
      passwordIsError.value = true;
    } else {
      passwordIsError.value = false;
    }

    if (emailIsError.value == false && passwordIsError.value == false) {
      // Login Success
      Get.offNamed(AppPages.INITIAL_NV);
    }
  }

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    emailIsError.value = false;
    passwordIsError.value = false;
    passwordVisible.value = false;
  }
}
