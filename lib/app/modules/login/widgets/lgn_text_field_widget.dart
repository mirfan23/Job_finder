import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class LGNTextFieldWidget extends StatelessWidget {
  const LGNTextFieldWidget({
    Key? key,
    required this.textController,
    required this.hint,
    required this.errorController,
    required this.errorText,
    required this.obscureText,
    required this.suffix,
    this.passwordController,
  }) : super(key: key);

  final TextEditingController textController;
  final String hint;
  final RxBool errorController;
  final String errorText;
  final bool obscureText;
  final bool suffix;
  final RxBool? passwordController;

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
                          passwordController!.toggle();
                        },
                        borderRadius: BorderRadius.circular(Get.width),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            passwordController!.isTrue
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
