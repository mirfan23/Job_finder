import 'package:get/get.dart';

class CompanyPageController extends GetxController {
  var tabCompany = 0.obs;
  var bookmarkCompany = false.obs;

  @override
  void dispose() {
    super.dispose();
    tabCompany.value = 0;
    bookmarkCompany.value = false;
  }
}
