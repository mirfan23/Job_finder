import 'package:get/get.dart';
import 'package:job_finder/app/modules/upload_cv/views/upload_success_view.dart';

import '../modules/description/bindings/description_binding.dart';
import '../modules/description/views/description_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/upload_cv/bindings/upload_cv_binding.dart';
import '../modules/upload_cv/views/upload_cv_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL_HM = Routes.HOME;
  static const INITIAL_SS = Routes.SPLASH_SCREEN;
  static const INITIAL_LG = Routes.LOGIN;
  static const INITIAL_DC = Routes.DESCRIPTION;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DESCRIPTION,
      page: () => DescriptionView(),
      binding: DescriptionBinding(),
    ),
    GetPage(
      name: _Paths.UPLOAD_CV,
      page: () => UploadCvView(),
      binding: UploadCvBinding(),
    ),
    GetPage(
      name: _Paths.UPLOAD_SUCCESS,
      page: () => UploadSuccessView(),
      binding: UploadCvBinding(),
    )
  ];
}
