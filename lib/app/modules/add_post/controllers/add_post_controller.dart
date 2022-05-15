import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPostController extends GetxController {
  late TextEditingController postTittleController;
  late TextEditingController postDecsriptionController;

  @override
  void onInit() {
    super.onInit();
    postDecsriptionController = TextEditingController();
    postTittleController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    postTittleController.dispose();
    postDecsriptionController.dispose();
  }
}
