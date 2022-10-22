import 'package:get/get.dart';

class AppConfigController extends GetxController {
  RxBool isLightMode = true.obs;
  RxDouble currentScreenWidth = 0.0.obs;
  RxBool hoverOnEmail = false.obs;
  RxBool hoverOnFB = false.obs;
  RxBool hoverOnInsta = false.obs;
  RxBool hoverOnLinkedin = false.obs;
  RxBool hoverOnDarkMode = false.obs;
  RxBool hoverOnContact = false.obs;

  @override
  void onInit() {
    super.onInit();
    isLightMode.value = true;
  }
}
