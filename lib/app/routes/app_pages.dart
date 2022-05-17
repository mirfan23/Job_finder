import 'package:get/get.dart';

import 'package:job_finder/app/modules/company_page/bindings/company_page_binding.dart';
import 'package:job_finder/app/modules/company_page/views/company_page_view.dart';
import 'package:job_finder/app/modules/create_job_post/bindings/create_job_post_binding.dart';
import 'package:job_finder/app/modules/create_job_post/views/create_job_post_view.dart';
import 'package:job_finder/app/modules/forgot_password/bindings/forgot_password_binding.dart';
import 'package:job_finder/app/modules/forgot_password/views/forgot_password_view.dart';
import 'package:job_finder/app/modules/home/bindings/home_binding.dart';
import 'package:job_finder/app/modules/home/views/home_view.dart';
import 'package:job_finder/app/modules/login/bindings/login_binding.dart';
import 'package:job_finder/app/modules/login/views/login_view.dart';
import 'package:job_finder/app/modules/message/bindings/message_binding.dart';
import 'package:job_finder/app/modules/message/views/message_view.dart';
import 'package:job_finder/app/modules/navigation/bindings/navigation_binding.dart';
import 'package:job_finder/app/modules/navigation/views/navigation_view.dart';
import 'package:job_finder/app/modules/notification/bindings/notification_binding.dart';
import 'package:job_finder/app/modules/notification/views/notification_view.dart';
import 'package:job_finder/app/modules/posting/bindings/posting_binding.dart';
import 'package:job_finder/app/modules/posting/views/posting_view.dart';
import 'package:job_finder/app/modules/profile/bindings/profile_binding.dart';
import 'package:job_finder/app/modules/profile/views/profile_view.dart';
import 'package:job_finder/app/modules/save_job/bindings/save_job_binding.dart';
import 'package:job_finder/app/modules/save_job/views/save_job_view.dart';
import 'package:job_finder/app/modules/search/bindings/search_binding.dart';
import 'package:job_finder/app/modules/search/views/search_view.dart';
import 'package:job_finder/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:job_finder/app/modules/sign_up/views/sign_up_view.dart';
import 'package:job_finder/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:job_finder/app/modules/splash_screen/views/splash_screen_view.dart';
import 'package:job_finder/app/modules/upload_cv/views/upload_success_view.dart';

import '../modules/add_job/bindings/add_job_binding.dart';
import '../modules/add_job/views/add_job_view.dart';
import '../modules/add_post/bindings/add_post_binding.dart';
import '../modules/add_post/views/add_post_view.dart';
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
  static const INITIAL_SU = Routes.SIGN_UP;
  static const INITIAL_NV = Routes.NAVIGATION;
  static const INITIAL_S = Routes.SEARCH;
  static const INITIAL_MS = Routes.MESSAGE;
  static const INITIAL_PS = Routes.POSTING;
  static const INITIAL_SJ = Routes.SAVE_JOB;
  static const INITIAL_FP = Routes.FORGOT_PASSWORD;
  static const INITIAL_CP = Routes.COMPANY_PAGE;
  static const INITIAL_AJ = Routes.ADD_JOB;
  static const INITIAL_AP = Routes.ADD_POST;
  static const INITIAL_NT = Routes.NOTIFICATION;
  static const INITIAL_PR = Routes.PROFILE;

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
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => NavigationView(),
      binding: NavigationBinding(),
    ),
    GetPage(
      name: _Paths.POSTING,
      page: () => PostingView(),
      binding: PostingBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGE,
      page: () => MessageView(),
      binding: MessageBinding(),
    ),
    GetPage(
      name: _Paths.SAVE_JOB,
      page: () => SaveJobView(),
      binding: SaveJobBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.COMPANY_PAGE,
      page: () => CompanyPageView(),
      binding: CompanyPageBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_JOB_POST,
      page: () => CreateJobPostView(),
      binding: CreateJobPostBinding(),
    ),
    GetPage(
      name: _Paths.ADD_JOB,
      page: () => AddJobView(),
      binding: AddJobBinding(),
    ),
    GetPage(
      name: _Paths.ADD_POST,
      page: () => AddPostView(),
      binding: AddPostBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
