import 'package:get/get.dart';
import 'package:rafid_portfolio_flutter/app/common_controllers/app_config_controller.dart';

class DashboardController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var appConfigController = Get.find<AppConfigController>();
  RxBool hoverOnName = false.obs;
  RxBool hoverOnEmail = false.obs;
  RxBool hoverOnFB = false.obs;
  RxBool hoverOnInsta = false.obs;
  RxBool hoverOnLinkedin = false.obs;
  RxBool hoverOnDarkMode = false.obs;
  RxBool hoverOnContact = false.obs;
  RxBool hoverOnGithub = false.obs;
  RxInt initialViewType = 0.obs; //0 for dasgboard, 1 for contact
  RxBool hoverOnContactEmail = false.obs;
  RxBool hoverOnContactLinkedin = false.obs;
  RxBool hoverOnContactFacebook = false.obs;
  RxBool hoverOnContactInsta = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    hoverOnName.value = false;
    hoverOnEmail.value = false;
    hoverOnFB.value = false;
    hoverOnInsta.value = false;
    hoverOnLinkedin.value = false;
    hoverOnDarkMode.value = false;
    hoverOnContact.value = false;
    hoverOnGithub.value = false;
    initialViewType.value = 0;
  }

  @override
  void onClose() {}
}
