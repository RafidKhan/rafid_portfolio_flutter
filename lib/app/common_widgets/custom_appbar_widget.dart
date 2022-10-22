import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rafid_portfolio_flutter/app/common_controllers/app_config_controller.dart';
import 'package:rafid_portfolio_flutter/app/common_widgets/common_text_widget_white.dart';
import 'package:rafid_portfolio_flutter/app/common_widgets/custom_text_widget_fix_color.dart';
import 'package:rafid_portfolio_flutter/app/common_widgets/menu_button_white.dart';
import 'package:rafid_portfolio_flutter/app/common_widgets/white_divider.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/helper_methods.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/screen_utils.dart';

import '../helper_methods/constants.dart';

class CustomAppbarView extends StatelessWidget {
  const CustomAppbarView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return appBarView(context);
  }

  Widget appBarView(context) {
    return GetBuilder<AppConfigController>(
      assignId: true,
      builder: (controller) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
          width: screenWidth(1, context),
          color: isLightModeEnabled() ? colorBlack : colorWhite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonTextWidgetWhite(
                    text: myName,
                    fontWeight: boldFontWeight,
                    fontSize: largeFontSize,
                    maxLines: 1,
                  ),
                  CommonTextWidgetWhite(
                    text: myDesignation,
                    fontWeight: normalFontWeight,
                    fontSize: normalFontSize,
                    maxLines: 1,
                  ),
                ],
              ),
              const Spacer(),
              isDesktopViewNavbar.isTrue
                  ? const SizedBox()
                  : CustomMenuButtonWhite(
                onPressed: () {
                  showToolbarDialog();
                },
              ),
              ////contact
              isDesktopViewNavbar.isTrue ? contactButton() : const SizedBox(),
              ////email
              isDesktopViewNavbar.isTrue ? emailButton() : const SizedBox(),

              SizedBox(
                width: isDesktopViewNavbar.isTrue ? 10 : 0,
              ),
              ////facebook
              isDesktopViewNavbar.isTrue ? facebookButton() : const SizedBox(),
              SizedBox(
                width: isDesktopViewNavbar.isTrue ? 10 : 0,
              ),
              ////instagram
              isDesktopViewNavbar.isTrue ? instagramButton() : const SizedBox(),
              SizedBox(
                width: isDesktopViewNavbar.isTrue ? 10 : 0,
              ),
              ////linkedin
              isDesktopViewNavbar.isTrue ? linkedInButton() : const SizedBox(),
              SizedBox(
                width: isDesktopViewNavbar.isTrue ? 10 : 0,
              ),
              ////dark mode toggle
              isDesktopViewNavbar.isTrue ? darkModeButton() : const SizedBox()
            ],
          ),
        );
      },
    );
  }

  Widget darkModeButton({bool? isPopUp}) {
    return GetBuilder<AppConfigController>(builder: (controller) {
      return InkWell(
        onTap: () {
          toggleMode();
          if (isPopUp != null && isPopUp == true) {
            Get.back();
          }
          controller.update();
        },
        onHover: (value) {
          controller.hoverOnDarkMode.value = !controller.hoverOnDarkMode.value;
          controller.update();
        },
        child: Icon(
          isLightModeEnabled() ? Icons.dark_mode : Icons.light_mode_outlined,
          color: controller.hoverOnDarkMode.isTrue
              ? colorGrey
              : isLightModeEnabled()
              ? colorWhite
              : colorBlack,
          size: 40,
        ),
      );
    });
  }

  Widget instagramButton({bool? isPopUp}) {
    return GetBuilder<AppConfigController>(
      assignId: true,
      builder: (controller) {
        return InkWell(
          onTap: () {
            launchUrlInBrowser(instagramUrl);
            if (isPopUp != null && isPopUp == true) {
              Get.back();
            }
            controller.update();
          },
          onHover: (value) {
            controller.hoverOnInsta.value = !controller.hoverOnInsta.value;
            controller.update();
          },
          child: SvgPicture.asset(
            "assets/instagram_icon.svg",
            color: controller.hoverOnInsta.isTrue
                ? colorGrey
                : isLightModeEnabled()
                ? colorWhite
                : colorBlack,
            height: 40,
            width: 40,
          ),
        );
      },
    );
  }

  Widget facebookButton({bool? isPopUp}) {
    return GetBuilder<AppConfigController>(
      assignId: true,
      builder: (controller) {
        return InkWell(
          onTap: () {
            launchUrlInBrowser(facebookUrl);
            if (isPopUp != null && isPopUp == true) {
              Get.back();
            }
            controller.update();
          },
          onHover: (value) {
            controller.hoverOnFB.value = !controller.hoverOnFB.value;
            controller.update();
          },
          child: Icon(
            Icons.facebook,
            color: controller.hoverOnFB.isTrue
                ? colorGrey
                : isLightModeEnabled()
                ? colorWhite
                : colorBlack,
            size: 40,
          ),
        );
      },
    );
  }

  Widget emailButton({bool? isPopUp}) {
    return GetBuilder<AppConfigController>(
      assignId: true,
      builder: (controller) {
        return InkWell(
          onTap: () {
            launchEmail(myEmailAddress);
            if (isPopUp != null && isPopUp == true) {
              Get.back();
            }
            controller.update();
          },
          onHover: (value) {
            controller.hoverOnEmail.value = !controller.hoverOnEmail.value;
            controller.update();
          },
          child: Icon(
            Icons.email,
            color: controller.hoverOnEmail.isTrue
                ? colorGrey
                : isLightModeEnabled()
                ? colorWhite
                : colorBlack,
            size: 40,
          ),
        );
      },
    );
  }

  Widget linkedInButton({bool? isPopUp}) {
    return GetBuilder<AppConfigController>(
      assignId: true,
      builder: (controller) {
        return InkWell(
          onTap: () {
            launchUrlInBrowser(linkedinUrl);
            if (isPopUp != null && isPopUp == true) {
              Get.back();
            }
            controller.update();
          },
          onHover: (value) {
            controller.hoverOnLinkedin.value =
            !controller.hoverOnLinkedin.value;
            controller.update();
          },
          child: SvgPicture.asset(
            "assets/linkedin_icon.svg",
            color: controller.hoverOnLinkedin.isTrue
                ? colorGrey
                : isLightModeEnabled()
                ? colorWhite
                : colorBlack,
            height: 40,
            width: 40,
          ),
        );
      },
    );
  }

  showToolbarDialog() {
    Get.dialog(AlertDialog(
      backgroundColor: isLightModeEnabled() ? colorBlack : colorWhite,
      contentPadding: EdgeInsets.zero,
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            emailButton(isPopUp: true),
            const CustomDividerWhite(),
            facebookButton(isPopUp: true),
            const CustomDividerWhite(),
            instagramButton(isPopUp: true),
            const CustomDividerWhite(),
            linkedInButton(isPopUp: true),
            const CustomDividerWhite(),
            darkModeButton(isPopUp: true),
            const CustomDividerWhite(),
            contactButton(isPopUp: true),
          ],
        ),
      ),
    ));
  }

  Widget contactButton({bool? isPopUp}) {
    return GetBuilder<AppConfigController>(
      assignId: true,
      builder: (controller) {
        return InkWell(
          onTap: () {
            if (isPopUp != null && isPopUp == true) {
              Get.back();
            }
            controller.update();
          },
          onHover: (value) {
            controller.hoverOnContact.value = !controller.hoverOnContact.value;
            controller.update();
          },
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            child: CommonTextWidgetColorFixed(
              text: "Contact",
              fontWeight: normalFontWeight,
              fontSize: normalFontSize,
              maxLines: 1,
              textColor: controller.hoverOnContact.isTrue
                  ? colorGrey
                  : isLightModeEnabled()
                  ? colorWhite
                  : colorBlack,
            ),
          ),
        );
      },
    );
  }
}
