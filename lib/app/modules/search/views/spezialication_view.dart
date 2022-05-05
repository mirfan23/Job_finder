import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/modules/search/controllers/search_controller.dart';
import 'package:job_finder/app/modules/search/widgets/item_grid_specialization.dart';
import 'package:job_finder/app/values/styles.dart';

class SpezialicationView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Get.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Get.back(),
                child: Image.asset(
                  'assets/icons/icon_black_back.png',
                  height: Get.width * 0.09,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: Get.width * 0.94,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      obscureText: false,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        isCollapsed: true,
                        alignLabelWithHint: true,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/icons/icon_search.png',
                            height: 10,
                          ),
                        ),
                        hintText: ('Search'),
                        hintStyle: TextStyle(
                          fontFamily: MyStyles.Medium,
                          color: Color.fromRGBO(170, 166, 185, 1),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Spezialication',
                style: TextStyle(
                    fontFamily: MyStyles.Bold, fontSize: Get.width * 0.05),
              ),
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 10),
                    itemCount: 200,
                    itemBuilder: (__, int index) {
                      return ItemGridSpecialization(
                          title: 'Design',
                          totalJobs: '140 Jobs',
                          image: 'assets/images/spec_design.png',
                          state: controller.stateSpecialization);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
