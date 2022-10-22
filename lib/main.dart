import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rafid_portfolio_flutter/app/common_controllers/app_config_controller.dart';
import 'app/routes/app_pages.dart';

void main() async {
  Get.put(AppConfigController());
  runApp(
    GetMaterialApp(
      title: "Rafid Portfolio",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
