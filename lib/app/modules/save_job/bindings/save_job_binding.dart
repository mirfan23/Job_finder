import 'package:get/get.dart';

import '../controllers/save_job_controller.dart';

class SaveJobBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SaveJobController>(
      () => SaveJobController(),
    );
  }
}
