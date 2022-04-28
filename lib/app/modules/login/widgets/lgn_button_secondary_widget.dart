import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class LGNButtonSecondary extends StatelessWidget {
  const LGNButtonSecondary({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.image,
  }) : super(key: key);

  final String text;
  final Function() onPressed;
  final String image;

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
            MyColors.secondaryColor,
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
            Image(
              height: 15,
              width: 15,
              image: AssetImage(
                image,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: MyStyles.Bold,
                fontSize: 14,
                color: MyColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
