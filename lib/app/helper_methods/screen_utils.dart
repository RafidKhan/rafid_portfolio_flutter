import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rafid_portfolio_flutter/app/common_controllers/app_config_controller.dart';

double screenHeight(var multiply, BuildContext context) {
  double height = MediaQuery.of(context).size.height / multiply;
  return height;
}

double screenWidth(var multiply, BuildContext context) {
  double width = MediaQuery.of(context).size.width / multiply;
  return width;
}

var appConfigController = Get.find<AppConfigController>();

bool isLightModeEnabled() {
  return appConfigController.isLightMode.isTrue ? true : false;
}

toggleMode() {
  appConfigController.isLightMode.value =
      !appConfigController.isLightMode.value;
  appConfigController.update();
}
