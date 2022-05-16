import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'app/routes/app_pages.dart';
import 'app/values/colors.dart';

void main() {
  if (defaultTargetPlatform == TargetPlatform.android) {
    AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
  }
  runApp(
    AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //set as per your  status bar color
        systemNavigationBarColor:
            MyColors.white, //set as per your navigation bar color
        statusBarIconBrightness:
            Brightness.dark, //set as per your status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL_NT,
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
