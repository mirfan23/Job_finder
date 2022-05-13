import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/modules/search/views/spezialication_view.dart';
import 'package:job_finder/app/modules/search/widgets/item_list_filter.dart';
import 'package:job_finder/app/modules/search/widgets/item_search.dart';
// import 'package:job_finder/app/values/styles.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  final List<String> filterList = [
    'Senior Designer',
    'Fultime Designer',
    'Designer',
    'Senior Designer',
    'Fultime Designer',
    'Designer',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Get.height * 0.35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: Color.fromRGBO(59, 56, 74, 1),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  InkWell(
                    onTap: () => Get.back(),
                    child: Image.asset(
                      'assets/icons/icon_white_back.png',
                      width: Get.width * 0.09,
                    ),
                  ),
                  Spacer(
                    flex: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.025,
                    ),
                    child: InkWell(
                      onTap: () => Get.to(SpezialicationView()),
                      child: Container(
                        height: 50,
                        // width: Get.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                bottom: 10.0,
                                left: 20,
                              ),
                              child:
                                  Image.asset('assets/icons/icon_search.png'),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Design',
                              style: TextStyle(
                                fontFamily: 'DMSansRegular',
                                fontSize: 17,
                                color: Color.fromRGBO(170, 166, 185, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.025,
                    ),
                    child: Container(
                      height: 50,
                      // width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              bottom: 10.0,
                              left: 20,
                            ),
                            child:
                                Image.asset('assets/icons/icon_location.png'),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'California, USA',
                            style: TextStyle(
                              fontFamily: 'DMSansRegular',
                              fontSize: 17,
                              color: Color.fromRGBO(170, 166, 185, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 5,
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              SizedBox(
                height: 0,
              ),
              SizedBox(
                  height: Get.height * 0.06,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (__, int index) {
                        if (index > 0) {
                          return ItemListFilter(
                              title: filterList[index],
                              state: controller.filterMark);
                        } else {
                          return ItemFilter();
                        }
                      },
                      separatorBuilder: (_, __) => SizedBox(
                            width: 10,
                          ),
                      itemCount: filterList.length)),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (_, __) {
                      return ItemSearch();
                    },
                    separatorBuilder: (_, __) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 15),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
