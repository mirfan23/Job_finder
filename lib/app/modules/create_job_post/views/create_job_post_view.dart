import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_job_post_controller.dart';

class CreateJobPostView extends GetView<CreateJobPostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Wrap(
            //   children: [
            //     Container(
            //       width: Get.width,
            //       padding: EdgeInsets.only(
            //         top: MediaQuery.of(context).padding.top + 20,
            //         left: 20,
            //         right: 20,
            //         bottom: 20,
            //       ),
            //       decoration: BoxDecoration(
            //         color: Color.fromRGBO(41, 33, 78, 1),
            //         borderRadius: BorderRadius.only(
            //           bottomLeft: Radius.circular(20),
            //           bottomRight: Radius.circular(20),
            //         ),
            //       ),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "Hi, Orlando Diggs",
            //                 textAlign: TextAlign.start,
            //                 style: TextStyle(
            //                   fontFamily: MyStyles.Medium,
            //                   fontSize: 14,
            //                   color: MyColors.white,
            //                 ),
            //               ),
            //               Spacer(),
            //               InkWell(
            //                 onTap: () {},
            //                 borderRadius: BorderRadius.circular(Get.width),
            //                 child: Padding(
            //                   padding: EdgeInsets.all(10),
            //                   child: Stack(
            //                     alignment: Alignment.topRight,
            //                     children: [
            //                       Icon(
            //                         Icons.notifications_outlined,
            //                         color: MyColors.white,
            //                         size: 24,
            //                       ),
            //                       Container(
            //                         padding: EdgeInsets.all(1),
            //                         height: 12,
            //                         width: 12,
            //                         alignment: Alignment.center,
            //                         decoration: BoxDecoration(
            //                           borderRadius: BorderRadius.circular(
            //                             Get.width,
            //                           ),
            //                           color: MyColors.red,
            //                         ),
            //                         child: Text(
            //                           "5",
            //                           textAlign: TextAlign.center,
            //                           style: TextStyle(
            //                             fontFamily: MyStyles.Bold,
            //                             fontSize: 8,
            //                             color: MyColors.white,
            //                           ),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(
            //                 width: 5,
            //               ),
            //               Container(
            //                 width: 36,
            //                 height: 36,
            //                 decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(Get.width),
            //                   image: DecorationImage(
            //                     fit: BoxFit.cover,
            //                     image: AssetImage(
            //                       "assets/images/toa-heftiba-O3ymvT7Wf9U-unsplash.jpg",
            //                     ),
            //                   ),
            //                 ),
            //               )
            //             ],
            //           ),
            //           SizedBox(
            //             height: 20,
            //           ),
            //           SizedBox(
            //             width: Get.width * 0.5,
            //             child: Text(
            //               "Find your dream job here!",
            //               textAlign: TextAlign.start,
            //               style: TextStyle(
            //                 fontFamily: MyStyles.Bold,
            //                 fontSize: 20,
            //                 color: MyColors.white,
            //               ),
            //             ),
            //           ),
            //           SizedBox(
            //             height: 20,
            //           ),
            //           Row(
            //             children: [
            //               Expanded(
            //                 flex: 5,
            //                 child: TextField(
            //                   style: TextStyle(
            //                     fontFamily: MyStyles.Regular,
            //                     fontSize: 12,
            //                     color: MyColors.black,
            //                   ),
            //                   cursorColor: MyColors.grey,
            //                   textAlignVertical: TextAlignVertical.center,
            //                   decoration: InputDecoration(
            //                     filled: true,
            //                     fillColor: MyColors.white,
            //                     prefixIcon: Padding(
            //                       padding: EdgeInsets.only(left: 20, right: 10),
            //                       child: Icon(
            //                         Icons.search_rounded,
            //                         color: MyColors.grey,
            //                       ),
            //                     ),
            //                     hintText: "Search",
            //                     hintStyle: TextStyle(
            //                       fontFamily: MyStyles.Regular,
            //                       fontSize: 12,
            //                       color: MyColors.grey,
            //                     ),
            //                     border: InputBorder.none,
            //                     focusedBorder: OutlineInputBorder(
            //                       borderRadius: BorderRadius.circular(10),
            //                     ),
            //                     enabledBorder: OutlineInputBorder(
            //                       borderRadius: BorderRadius.circular(10),
            //                     ),
            //                     contentPadding: EdgeInsets.all(20),
            //                     isCollapsed: true,
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(
            //                 width: 10,
            //               ),
            //               Expanded(
            //                 flex: 1,
            //                 child: InkWell(
            //                   onTap: () {},
            //                   borderRadius: BorderRadius.circular(10),
            //                   child: Container(
            //                     padding: EdgeInsets.all(16),
            //                     decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.circular(10),
            //                       color: MyColors.orange,
            //                     ),
            //                     child: Image(
            //                       width: 25,
            //                       height: 25,
            //                       image: AssetImage(
            //                         "assets/icons/icon_filter.png",
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               )
            //             ],
            //           )
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
