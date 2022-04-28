import 'package:flutter/material.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class LGNQuestionTextButtonWidget extends StatelessWidget {
  const LGNQuestionTextButtonWidget({
    Key? key,
    required this.text,
    required this.textButton,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final String textButton;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
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
          onTap: onTap,
          child: Text(
            textButton,
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontFamily: MyStyles.Regular,
              fontSize: 12,
              color: MyColors.orange,
            ),
          ),
        ),
      ],
    );
  }
}
