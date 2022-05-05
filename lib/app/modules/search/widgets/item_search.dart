import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/modules/search/widgets/button_item_search.dart';
import 'package:job_finder/app/values/styles.dart';

class ItemSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: Get.height * 0.07,
                  height: Get.height * 0.07,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/images/google_logo.png",
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/Save.png',
                  height: 35,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'UI/UX Designer',
              style: TextStyle(
                fontFamily: 'DMSansBold',
                fontSize: Get.width * 0.045,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Google inc . California, USA',
              style: TextStyle(
                fontFamily: 'DMSansRegular',
                fontSize: Get.width * 0.04,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonItemSearch(title: 'Design'),
                ButtonItemSearch(title: 'Full Time'),
                ButtonItemSearch(title: 'Senior Designer'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '25 minute ago',
                  style: TextStyle(
                      color: Color.fromRGBO(170, 167, 185, 1),
                      fontFamily: MyStyles.Regular),
                ),
                RichText(
                  text: TextSpan(
                    // Here is the explicit parent TextStyle
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: '\$15K',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: MyStyles.Bold)),
                      TextSpan(
                        text: '/Mo',
                        style: TextStyle(
                            color: Color.fromRGBO(170, 166, 185, 1),
                            fontFamily: MyStyles.Regular),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
