import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/values/colors.dart';
import 'package:job_finder/app/values/styles.dart';

import '../controllers/login_controller.dart';

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
                Center(
                  child: Text(
                    "Welcome Back",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: MyStyles.Bold,
                      fontSize: 30,
                      color: MyColors.primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
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
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Email",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: MyStyles.Bold,
                    fontSize: 12,
                    color: MyColors.primaryColor,
                  ),
                ),
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
                Text(
                  "Password",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: MyStyles.Bold,
                    fontSize: 12,
                    color: MyColors.primaryColor,
                  ),
                ),
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
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
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
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                  child: ElevatedButton(
                    onPressed: () {
                      controller.login();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        MyColors.primaryColor,
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(
                          // horizontal: Get.width * 0.3,
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
                          "LOGIN",
                          style: TextStyle(
                            fontFamily: MyStyles.Bold,
                            fontSize: 14,
                            color: MyColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                  child: ElevatedButton(
                    onPressed: () {
                      // Redirect to Google account
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        MyColors.secondaryColor,
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(
                          // horizontal: Get.width * 0.3,
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
                        Image(
                          height: 15,
                          width: 15,
                          image: AssetImage(
                            "assets/images/google 2.png",
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "SIGN IN WITH GOOGLE",
                          style: TextStyle(
                            fontFamily: MyStyles.Bold,
                            fontSize: 14,
                            color: MyColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You don't have an account yet? ",
                      style: TextStyle(
                        fontFamily: MyStyles.Regular,
                        fontSize: 12,
                        color: MyColors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Redirect to Sign Up page
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: MyStyles.Regular,
                          fontSize: 12,
                          color: MyColors.orange,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LGNTextFieldWidget extends GetView<LoginController> {
  const LGNTextFieldWidget({
    Key? key,
    required this.textController,
    required this.hint,
    required this.errorController,
    required this.errorText,
    required this.obscureText,
    required this.suffix,
  }) : super(key: key);

  final TextEditingController textController;
  final String hint;
  final RxBool errorController;
  final String errorText;
  final bool obscureText;
  final bool suffix;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadowColor: MyColors.primaryColor.withOpacity(0.1),
          child: Obx(
            () => TextField(
              controller: textController,
              cursorColor:
                  errorController.isTrue ? MyColors.red : MyColors.primaryColor,
              obscureText: obscureText,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                  fontFamily: MyStyles.Regular,
                  fontSize: 12,
                  color: MyColors.primaryColor.withOpacity(0.6)),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: hint,
                hintStyle: TextStyle(
                  fontFamily: MyStyles.Regular,
                  fontSize: 12,
                ),
                filled: true,
                fillColor: MyColors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 4,
                    color: MyColors.red,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1,
                    color: MyColors.red,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1,
                    color:
                        errorController.isTrue ? MyColors.red : MyColors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1,
                    color: errorController.isTrue
                        ? MyColors.red
                        : MyColors.secondaryColor,
                  ),
                ),
                suffixIcon: suffix == true
                    ? InkWell(
                        onTap: () {
                          controller.passwordVisible.toggle();
                        },
                        borderRadius: BorderRadius.circular(Get.width),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            controller.passwordVisible.isTrue
                                ? Icons.remove_red_eye_outlined
                                : Icons.remove_red_eye_rounded,
                          ),
                        ),
                      )
                    : SizedBox(),
              ),
            ),
          ),
        ),
        Obx(
          () => errorController.isTrue
              ? Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    errorText,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: MyStyles.Regular,
                      fontSize: 12,
                      color: MyColors.red,
                    ),
                  ),
                )
              : SizedBox(),
        ),
      ],
    );
  }
}
