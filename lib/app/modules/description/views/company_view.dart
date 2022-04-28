import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_finder/app/modules/description/views/information_view.dart';
import 'package:job_finder/app/values/colors.dart';

class CompanyView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About Company",
                style: TextStyle(
                  color: MyColors.primaryColor,
                  fontFamily: "DMSansBold",
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 21),
              Text(
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\n\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas .\n\nNor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain.",
                style: TextStyle(
                  color: MyColors.primaryColor,
                  fontFamily: "DMSansRegular",
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              InformationView("Website", "https://www.google.com", 14, 12),
              const SizedBox(height: 20),
              InformationView("Industry", "Internet product", 14, 12),
              const SizedBox(height: 20),
              InformationView("Employee size", "132,121 Employees", 14, 12),
              const SizedBox(height: 20),
              InformationView("Head office",
                  "Mountain View, California, Amerika Serikat", 14, 12),
              const SizedBox(height: 20),
              InformationView("Type", "Multinational company", 14, 12),
              const SizedBox(height: 20),
              InformationView("Since", "1998", 14, 12),
              const SizedBox(height: 20),
              InformationView("Since", "1998", 14, 12),
              const SizedBox(height: 20),
              InformationView(
                  "Specialization",
                  "Search technology, Web computing, Software and Online advertising",
                  14,
                  12),
              const SizedBox(height: 20),
              Text(
                "Company Gallery",
                style: TextStyle(
                  color: MyColors.primaryColor,
                  fontFamily: "DMSansBold",
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/company_1.png",
                      width: 158,
                      height: 115,
                    ),
                  ),
                  const SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      Get.snackbar(
                        "Coming Soon",
                        "This feature will be coming soon",
                        backgroundColor: Colors.lightBlue,
                        colorText: Colors.white,
                        duration: Duration(seconds: 1),
                      );
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/company_2.png",
                            width: 158,
                            height: 115,
                          ),
                        ),
                        Container(
                          width: 158,
                          height: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff0C3648).withOpacity(0.5),
                          ),
                          child: Center(
                            child: Text(
                              "+5 Picture",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "DMSansMedium",
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
