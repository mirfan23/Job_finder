// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class LGNButtonPrimary extends StatelessWidget {
  LGNButtonPrimary({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.backgroundColor,
  }) : super(key: key);

  final Function() onPressed;
  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.1,
      ),
      child: ElevatedButton(
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
      ),
    );
  }
}
