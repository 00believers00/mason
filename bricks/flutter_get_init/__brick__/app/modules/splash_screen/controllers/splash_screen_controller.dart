import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashScreenController extends GetxController {

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 1));
    Get.offNamed(AppRoutes.dashboard);
  }

}
