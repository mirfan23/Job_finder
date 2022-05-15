import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';
import '../controllers/add_post_controller.dart';

class AddPostView extends GetView<AddPostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    borderRadius: BorderRadius.circular(Get.width),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: MyColors.primaryColor,
                        size: 24,
                      ),
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Post",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: MyStyles.Bold,
                        fontSize: 12,
                        color: MyColors.orange,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Get.width),
                      color: MyColors.grey,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/toa-heftiba-O3ymvT7Wf9U-unsplash.jpg",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Orlando Diggs",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: MyStyles.Bold,
                          fontSize: 14,
                          color: MyColors.subTittle,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "California, USA",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: MyStyles.Regular,
                          fontSize: 12,
                          color: MyColors.content,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Post title",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: MyStyles.Bold,
                  fontSize: 12,
                  color: MyColors.subTittle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: controller.postTittleController,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.text,
                cursorColor: MyColors.primaryColor,
                style: TextStyle(
                  fontFamily: MyStyles.Regular,
                  fontSize: 12,
                  color: MyColors.subTittle,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  hintText: "Write the title of your post here",
                  hintStyle: TextStyle(
                    fontFamily: MyStyles.Regular,
                    fontSize: 12,
                    color: MyColors.grey,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Description",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: MyStyles.Bold,
                  fontSize: 12,
                  color: MyColors.subTittle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: controller.postDecsriptionController,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.multiline,
                maxLines: 10,
                cursorColor: MyColors.primaryColor,
                style: TextStyle(
                  fontFamily: MyStyles.Regular,
                  fontSize: 12,
                  color: MyColors.subTittle,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  hintText: "What do you want to talk about?",
                  hintStyle: TextStyle(
                    fontFamily: MyStyles.Regular,
                    fontSize: 12,
                    color: MyColors.grey,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: Get.width,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(Get.width),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.camera_alt_rounded,
                    color: MyColors.orange,
                    size: 24,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(Get.width),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.image,
                    color: MyColors.orange,
                    size: 24,
                  ),
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Add hashtag",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: MyStyles.Bold,
                    fontSize: 12,
                    color: MyColors.orange,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
