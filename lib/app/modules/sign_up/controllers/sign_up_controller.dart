import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var fullnameIsError = false.obs;
  var emailIsError = false.obs;
  var passwordIsError = false.obs;

  var visiblePassword = true.obs;
  var rememberMe = false.obs;

  late TextEditingController fullnameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  bool fullnameIsValidate(String fullname) {
    return fullname.split(' ').length > 1;
  }

  bool emailIsValidate(String email) {
    return EmailValidator.validate(email);
  }

  bool passwordIsValidate(String password) {
    return password.isNotEmpty &&
        password[0] == password[0].toUpperCase() &&
        password.length >= 8;
  }

  void signup() {
    if (!fullnameIsValidate(fullnameController.text)) {
      fullnameIsError.value = true;
    } else {
      fullnameIsError.value = false;
    }

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

    if (emailIsError.value == false &&
        passwordIsError.value == false &&
        fullnameIsError.value == false) {
      // Login Success
      // Get.offNamed(AppPages.INITIAL_HM);
    }
  }

  @override
  void onInit() {
    super.onInit();
    fullnameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    fullnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    visiblePassword.value = false;
    fullnameIsError.value = false;
    emailIsError.value = false;
    passwordIsError.value = false;
  }
}
