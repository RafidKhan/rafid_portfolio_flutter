import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rafid_portfolio_flutter/app/common_controllers/app_config_controller.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/screen_utils.dart';

class DashboardController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var appConfigController = Get.find<AppConfigController>();
  RxBool hoverOnEmail = false.obs;
  RxBool hoverOnFB = false.obs;
  RxBool hoverOnInsta = false.obs;
  RxBool hoverOnLinkedin = false.obs;
  RxBool hoverOnDarkMode = false.obs;
  RxBool hoverOnContact = false.obs;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    hoverOnEmail.value = false;
    hoverOnFB.value = false;
    hoverOnInsta.value = false;
    hoverOnLinkedin.value = false;
    hoverOnDarkMode.value = false;
    hoverOnContact.value = false;
  }

  @override
  void onClose() {}
}
