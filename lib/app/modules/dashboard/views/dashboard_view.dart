import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rafid_portfolio_flutter/app/common_widgets/custom_appbar_widget.dart';
import 'package:rafid_portfolio_flutter/app/common_widgets/custom_layout_builder.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/constants.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/screen_utils.dart';
import 'package:rafid_portfolio_flutter/app/modules/dashboard/views/body_content_view.dart';
import '../controllers/dashboard_controller.dart';
import 'package:animate_do/animate_do.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return CustomLayoutBuilder(
      child: Obx(() {
        return FadeInUp(
          child: Scaffold(
            backgroundColor: isLightModeEnabled() ? colorWhite : colorBlack,
            body: Column(
              children: [
                CustomAppbarView(),
                BodyContentView(),
              ],
            ),
          ),
        );
      }),
    );
  }
}
