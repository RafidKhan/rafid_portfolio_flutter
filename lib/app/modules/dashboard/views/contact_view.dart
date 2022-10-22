import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rafid_portfolio_flutter/app/common_widgets/common_text_widget_black.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/constants.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/helper_methods.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/screen_utils.dart';
import 'package:rafid_portfolio_flutter/app/modules/dashboard/controllers/dashboard_controller.dart';

class ContactView extends GetView<DashboardController> {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FadeInUpBig(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 1,
          itemBuilder: (context, index) {
            if (boxConstraints!.maxWidth > 1200) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: contactContents(
                    width: boxConstraints!.biggest.width / 2, context: context),
              );
            } else if (boxConstraints!.maxWidth > 800 &&
                boxConstraints!.maxWidth < 1200) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: contactContents(
                    width: boxConstraints!.biggest.width / 2, context: context),
              );
            } else {
              return Column(
                children: contactContents(
                    width: boxConstraints!.biggest.width, context: context),
              );
            }
          },
        ),
      ),
    );
  }

  List<Widget> contactContents(
      {required double width, required BuildContext context}) {
    return <Widget>[
      Obx(() {
        return Container(
          width: screenWidth(2, context),
          height: screenHeight(1.2, context),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CommonTextWidgetBlack(
                  text: "Contact",
                  fontWeight: boldFontWeight,
                  fontSize: extraLargeFontSize,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    emailButton(),
                    facebookButton(),
                    instagramButton(),
                    linkedInButton()
                  ],
                )
              ],
            ),
          ),
        );
      }),
      Container(
        width: screenWidth(2, context),
        height: screenHeight(1.2, context),
        child: Center(
          child: Image.asset(
            "assets/rafiid_image.jpeg",
            width: width,
            height: screenHeight(1.2, context),
          ),
        ),
      ),
    ];
  }

  Widget emailButton() {
    return InkWell(
      onTap: () {
        launchEmail(myEmailAddress);
      },
      onHover: (value) {
        controller.hoverOnContactEmail.value =
            !controller.hoverOnContactEmail.value;
      },
      hoverColor: colorTransparent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "assets/gmail_icon_color.svg",
            height: 40,
            width: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          CommonTextWidgetBlack(
            text: "Email",
            fontWeight: controller.hoverOnContactEmail.isTrue
                ? boldFontWeight
                : normalFontWeight,
            fontSize: controller.hoverOnContactEmail.isTrue
                ? largeFontSize
                : normalFontSize,
            maxLines: 1,
          ),
        ],
      ),
    );
  }

  Widget facebookButton() {
    return InkWell(
      onTap: () {
        launchUrlInBrowser(facebookUrl);
      },
      onHover: (value) {
        controller.hoverOnContactFacebook.value =
            !controller.hoverOnContactFacebook.value;
      },
      hoverColor: colorTransparent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "assets/facebook_icon_color.svg",
            height: 40,
            width: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          CommonTextWidgetBlack(
            text: "Facebook",
            fontWeight: controller.hoverOnContactFacebook.isTrue
                ? boldFontWeight
                : normalFontWeight,
            fontSize: controller.hoverOnContactFacebook.isTrue
                ? largeFontSize
                : normalFontSize,
            maxLines: 1,
          ),
        ],
      ),
    );
  }

  Widget instagramButton() {
    return InkWell(
      onTap: () {
        launchUrlInBrowser(instagramUrl);
      },
      onHover: (value) {
        controller.hoverOnContactInsta.value =
            !controller.hoverOnContactInsta.value;
      },
      hoverColor: colorTransparent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "assets/instagram_icon_color.svg",
            height: 40,
            width: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          CommonTextWidgetBlack(
            text: "Instagram",
            fontWeight: controller.hoverOnContactInsta.isTrue
                ? boldFontWeight
                : normalFontWeight,
            fontSize: controller.hoverOnContactInsta.isTrue
                ? largeFontSize
                : normalFontSize,
            maxLines: 1,
          ),
        ],
      ),
    );
  }

  Widget linkedInButton() {
    return InkWell(
      onTap: () {
        launchUrlInBrowser(linkedinUrl);
      },
      onHover: (value) {
        controller.hoverOnContactLinkedin.value =
            !controller.hoverOnContactLinkedin.value;
      },
      hoverColor: colorTransparent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "assets/linkedin_icon_color.svg",
            height: 40,
            width: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          CommonTextWidgetBlack(
            text: "Linkedin",
            fontWeight: controller.hoverOnContactLinkedin.isTrue
                ? boldFontWeight
                : normalFontWeight,
            fontSize: controller.hoverOnContactLinkedin.isTrue
                ? largeFontSize
                : normalFontSize,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
