// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/styles.dart';

class ItemListFilter extends StatelessWidget {
  ItemListFilter({
    required this.title,
    required this.state,
    Key? key,
  }) : super(key: key);
  final String title;
  final RxBool state;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () => state.toggle(),
        child: Container(
          // width: 100,
          decoration: BoxDecoration(
              color: state.value
                  ? Color.fromRGBO(19, 1, 96, 1)
                  : Color.fromRGBO(237, 237, 240, 1),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
            child: Center(
                child: Text(
              title,
              style: TextStyle(
                fontFamily: MyStyles.Medium,
                fontSize: Get.width * 0.035,
                color:
                    state.value ? Colors.white : Color.fromRGBO(82, 75, 107, 1),
              ),
            )),
          ),
        ),
      ),
    );
  }
}

class ItemFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(19, 1, 96, 1),
              borderRadius: BorderRadius.circular(13)),
          child: Padding(
            padding: EdgeInsets.all(Get.width * 0.025),
            child: Image.asset('assets/icons/icon_filter.png'),
          ),
        ),
      ],
    );
  }
}
