import 'package:get/get.dart';

class AppConfigController extends GetxController {
  RxBool isLightMode = true.obs;

  @override
  void onInit() {
    super.onInit();
    isLightMode.value = true;
  }
}
