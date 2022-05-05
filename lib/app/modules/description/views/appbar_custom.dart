import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:job_finder/app/modules/description/controllers/description_controller.dart';
import 'package:job_finder/app/values/colors.dart';

class AppBarCustom extends GetView<DescriptionController>
    implements PreferredSizeWidget {
  String image;
  String job;
  String company;
  String place;
  String days;
  TabBar? tabBar;
  AppBarCustom(
      this.image, this.job, this.company, this.place, this.days, this.tabBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      excludeHeaderSemantics: false,
      centerTitle: true,
      elevation: 0,
      backgroundColor: MyColors.white,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(
          Icons.arrow_back,
          color: MyColors.primaryColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: MyColors.primaryColor,
          ),
        ),
      ],
      toolbarHeight: 35,
      bottom: PreferredSize(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.topCenter,
              // mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: MyColors.bgHeader,
                  ),
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 14,
                          bottom: 16,
                        ),
                        child: Text(
                          job,
                          style: TextStyle(
                            fontSize: 16,
                            color: MyColors.primaryColor,
                            fontFamily: 'DMSansBold',
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            company,
                            style: TextStyle(
                              fontSize: 16,
                              color: MyColors.primaryColor,
                              fontFamily: 'DMSansBold',
                            ),
                          ),
                          Container(
                            width: 7,
                            height: 7,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: MyColors.primaryColor),
                          ),
                          Text(
                            place,
                            style: TextStyle(
                              fontSize: 16,
                              color: MyColors.primaryColor,
                              fontFamily: 'DMSansBold',
                            ),
                          ),
                          Container(
                            width: 7,
                            height: 7,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: MyColors.primaryColor),
                          ),
                          Text(
                            days,
                            style: TextStyle(
                              fontSize: 16,
                              color: MyColors.primaryColor,
                              fontFamily: 'DMSansBold',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -Get.height * 0.07,
                  child: Image.asset(
                    image,
                    width: 84,
                    height: 84,
                  ),
                ),
              ],
            ),
            tabBar != null ? tabBar! : Container(),
          ],
        ),
        preferredSize: tabBar != null
            ? Size.fromHeight(Get.height * 0.35)
            : Size.fromHeight(Get.height * 0.25),
      ),
    );
  }

  @override
  Size get preferredSize => tabBar != null
      ? Size.fromHeight(Get.height * 0.35)
      : Size.fromHeight(Get.height * 0.25);
}
