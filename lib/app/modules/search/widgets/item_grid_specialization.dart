import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/values/styles.dart';

class ItemGridSpecialization extends StatelessWidget {
  ItemGridSpecialization({
    required this.title,
    required this.totalJobs,
    required this.image,
    required this.state,
    Key? key,
  }) : super(key: key);

  final String title;
  final String totalJobs;
  final String image;
  final RxBool state;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx(() => InkWell(
          onTap: () => state.toggle(),
          child: Container(
            decoration: BoxDecoration(
              color:
                  state.value ? Colors.white : Color.fromRGBO(252, 163, 77, 1),
              borderRadius: BorderRadius.circular(Get.width * 0.08),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: Get.width * 0.17,
                  child: Padding(
                    padding: EdgeInsets.all(Get.width * 0.04),
                    child: Image.asset(image),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: state.value
                        ? Color.fromRGBO(255, 244, 233, 1)
                        : Colors.white,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: MyStyles.Medium,
                    color: state.value ? Colors.black : Colors.white,
                    fontSize: Get.width * 0.04,
                  ),
                ),
                Text(
                  totalJobs,
                  style: TextStyle(
                    fontFamily: MyStyles.Medium,
                    color: state.value
                        ? Color.fromRGBO(170, 166, 185, 1)
                        : Colors.white,
                    fontSize: Get.width * 0.03,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
