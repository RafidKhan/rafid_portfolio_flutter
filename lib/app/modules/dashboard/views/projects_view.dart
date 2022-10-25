import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rafid_portfolio_flutter/app/common_widgets/custom_text_widget_fix_color.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/constants.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/screen_utils.dart';
import 'package:rafid_portfolio_flutter/app/modules/dashboard/controllers/dashboard_controller.dart';

class ProjectsView extends GetView<DashboardController> {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      width: screenWidth(1, context),
      color: colorGreyLite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 0.5,
                  color: colorGrey,
                  margin: const EdgeInsets.only(right: 20),
                ),
              ),
              CommonTextWidgetColorFixed(
                text: "Some of my latest works",
                fontWeight: boldFontWeight,
                fontSize: largeFontSize,
                maxLines: 1,
                textColor: colorBlack,
              ),
              Expanded(
                child: Container(
                  height: 0.5,
                  margin: const EdgeInsets.only(left: 20),
                  color: colorGrey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
