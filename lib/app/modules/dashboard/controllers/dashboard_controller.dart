import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rafid_portfolio_flutter/app/common_controllers/app_config_controller.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/screen_utils.dart';

class DashboardController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var appConfigController = Get.find<AppConfigController>();


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    //currentScreenWidth.value = screenWidth(1, Get.context!);
  }

  @override
  void onClose() {}
}
