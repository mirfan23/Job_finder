import 'package:flutter/cupertino.dart';
import 'package:job_finder/app/values/styles.dart';

class ButtonItemSearch extends StatelessWidget {
  ButtonItemSearch({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 7,
        bottom: 7,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(245, 244, 246, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: MyStyles.Regular,
          fontSize: 12,
          color: Color.fromRGBO(101, 94, 123, 1),
        ),
      ),
    );
  }
}
