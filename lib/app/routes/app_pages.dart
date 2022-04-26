import 'package:get/get.dart';

import 'package:job_finder/app/modules/home/bindings/home_binding.dart';
import 'package:job_finder/app/modules/home/views/home_view.dart';
import 'package:job_finder/app/modules/login/bindings/login_binding.dart';
import 'package:job_finder/app/modules/login/views/login_view.dart';
import 'package:job_finder/app/modules/search/bindings/search_binding.dart';
import 'package:job_finder/app/modules/search/views/search_view.dart';
import 'package:job_finder/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:job_finder/app/modules/sign_up/views/sign_up_view.dart';
import 'package:job_finder/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:job_finder/app/modules/splash_screen/views/splash_screen_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL_HM = Routes.HOME;
  static const INITIAL_SS = Routes.SPLASH_SCREEN;
  static const INITIAL_LG = Routes.LOGIN;
  static const INITIAL_SU = Routes.SIGN_UP;

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
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    )
  ];
}
