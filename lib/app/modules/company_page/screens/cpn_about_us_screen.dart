import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_finder/app/modules/company_page/controllers/company_page_controller.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class CPNAboutUsScreen extends GetView<CompanyPageController> {
  const CPNAboutUsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tittle("About Company"),
        SizedBox(
          height: 10,
        ),
        content(
          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
        ),
        SizedBox(
          height: 10,
        ),
        content(
          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
        ),
        SizedBox(
          height: 20,
        ),
        tittle("Website"),
        SizedBox(
          height: 10,
        ),
        content("https://www.google.com"),
        SizedBox(
          height: 20,
        ),
        tittle("Industry"),
        SizedBox(
          height: 10,
        ),
        content("Internet product"),
        SizedBox(
          height: 20,
        ),
        tittle("Employee size"),
        SizedBox(
          height: 10,
        ),
        content("132,121 Employees"),
        SizedBox(
          height: 20,
        ),
        tittle("Head office"),
        SizedBox(
          height: 10,
        ),
        content("Mountain View, California, Amerika Serikat"),
        SizedBox(
          height: 20,
        ),
        tittle("Type"),
        SizedBox(
          height: 10,
        ),
        content("Multinational company"),
        SizedBox(
          height: 20,
        ),
        tittle("Since"),
        SizedBox(
          height: 10,
        ),
        content("1998"),
        SizedBox(
          height: 20,
        ),
        tittle("Specialization"),
        SizedBox(
          height: 10,
        ),
        content(
            "Search technology, Web computing, Software and Online advertising"),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Company Gallery",
            style: TextStyle(
              fontFamily: MyStyles.Bold,
              fontSize: 14,
              color: MyColors.primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  height: Get.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/header-search.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: Get.height * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/header-search.png"),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "+5 pictures",
                        style: TextStyle(
                          fontFamily: MyStyles.Bold,
                          fontSize: 14,
                          color: MyColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget tittle(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: MyStyles.Bold,
          fontSize: 14,
          color: MyColors.primaryColor,
        ),
      ),
    );
  }

  Widget content(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontFamily: MyStyles.Regular,
          fontSize: 12,
          color: MyColors.content,
        ),
      ),
    );
  }
}
