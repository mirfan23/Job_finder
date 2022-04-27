import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/posting_controller.dart';

class PostingView extends GetView<PostingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PostingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PostingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
