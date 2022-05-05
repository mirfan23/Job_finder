import 'dart:io';
import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';

class UploadCvController extends GetxController {
  var directoryPath = "".obs;
  var fileSize = 0.obs;
  var date = "".obs;
  File? file;

  uploadFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.any,
      );
      if (result != null) {
        file = File(result.files.single.path!);
        if (!file!.path.isPDFFileName) {
          Get.snackbar("Upload CV/Resume", "Only for pdf file",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red,
              colorText: Colors.white);
        } else {
          directoryPath.value = basename(file!.path);
          var size = await file?.length();
          fileSize.value = size! ~/ pow(1024, 1);
          date.value = DateFormat.yMd().add_jm().format(DateTime.now());

          print("nama file : $directoryPath");
        }
      }
    } catch (e) {
      print(e);
    }
  }

  removeFile() async {
    await FilePicker.platform.clearTemporaryFiles().then((value) {
      Get.snackbar("Remove file",
          value == true ? "Success remove file" : "Failed to remove file");
      directoryPath.value = "";
    });
  }

  @override
  void onClose() {
    FilePicker.platform.clearTemporaryFiles();
    super.onClose();
  }
}
