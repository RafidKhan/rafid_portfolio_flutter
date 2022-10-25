import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rafid_portfolio_flutter/app/common_widgets/common_text_widget_black.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/constants.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/screen_utils.dart';
import 'package:rafid_portfolio_flutter/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:rafid_portfolio_flutter/app/modules/dashboard/views/projects_view.dart';
import '../../../common_widgets/custom_text_widget_fix_color.dart';

class BodyContentView extends GetView<DashboardController> {
  const BodyContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FadeInUpBig(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 1,
          itemBuilder: (context, index) {
            if (boxConstraints!.maxWidth > 1200) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: bodyContents(
                        width: boxConstraints!.biggest.width / 2,
                        context: context),
                  ),
                  ProjectsView()
                ],
              );
            } else if (boxConstraints!.maxWidth > 800 &&
                boxConstraints!.maxWidth < 1200) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: bodyContents(
                        width: boxConstraints!.biggest.width / 2,
                        context: context),
                  ),
                  ProjectsView()
                ],
              );
            } else {
              return Column(
                children: [
                  Column(
                    children: bodyContents(
                        width: boxConstraints!.biggest.width, context: context),
                  ),
                  ProjectsView()
                ],
              );
            }
          },
        ),
      ),
    );
  }

  List<Widget> bodyContents(
      {required double width, required BuildContext context}) {
    return <Widget>[
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: screenWidth(3, context),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonTextWidgetBlack(
                text: "<Coder>",
                fontWeight: boldFontWeight,
                fontSize: largeFontSize,
                maxLines: 1,
              ),
              CommonTextWidgetColorFixed(
                text: myBio,
                fontWeight: boldFontWeight,
                fontSize: largeFontSize,
                textColor: colorGrey,
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        width: screenWidth(3, context),
        child: Image.asset(
          "assets/rafiid_image.jpeg",
          width: width,
          height: screenHeight(1.2, context),
        ),
      ),
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: screenWidth(3, context),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonTextWidgetBlack(
                  text: workExperience3,
                  fontWeight: boldFontWeight,
                  fontSize: largeFontSize,
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 5,
                ),
                CommonTextWidgetColorFixed(
                  text: workExperience2,
                  fontWeight: boldFontWeight,
                  fontSize: normalFontSize,
                  maxLines: 2,
                  textColor: colorGrey,
                ),
                const SizedBox(
                  height: 5,
                ),
                CommonTextWidgetColorFixed(
                  text: workExperience1,
                  fontWeight: boldFontWeight,
                  fontSize: normalFontSize,
                  maxLines: 2,
                  textColor: colorGrey,
                ),
              ],
            ),
          )),
    ];
  }
}
