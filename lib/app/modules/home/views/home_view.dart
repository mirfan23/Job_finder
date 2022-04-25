import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HomeView'),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          Get.width,
                        ),
                        child: Image(
                          image: AssetImage(
                            'assets/images/girl-vektor.jpg',
                          ),
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Hello \nOrlando Diggs.",
                          style: TextStyle(fontSize: 30),
                        ),
                        Container(),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
