import 'package:get/get.dart';

import '../controllers/company_page_controller.dart';

class CompanyPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompanyPageController>(
      () => CompanyPageController(),
    );
  }
}
