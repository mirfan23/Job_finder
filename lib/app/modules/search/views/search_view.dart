
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/modules/search/views/item_search.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
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
              padding: EdgeInsets.only(
                right: 30,
                left: 30,
              ),
              child: Column(
                children: [
                  Spacer(
                    flex: 13,
                  ),
                  Container(
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
                          child: Image.asset('assets/icons/icon_search.png'),
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
                  Spacer(
                    flex: 2,
                  ),
                  Container(
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
                          child: Image.asset('assets/icons/icon_location.png'),
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
                  Spacer(
                    flex: 5,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, __) {
                  return ItemSearch();
                },
                separatorBuilder: (_, __) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: 3),
          )
        ],
      ),
    );
  }
}
