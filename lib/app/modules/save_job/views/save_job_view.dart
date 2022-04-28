import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/save_job_controller.dart';

class SaveJobView extends GetView<SaveJobController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SaveJobView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SaveJobView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
