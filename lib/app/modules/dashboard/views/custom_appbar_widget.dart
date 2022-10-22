import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rafid_portfolio_flutter/app/common_widgets/custom_text_widget_fix_color.dart';
import 'package:rafid_portfolio_flutter/app/common_widgets/menu_button_white.dart';
import 'package:rafid_portfolio_flutter/app/common_widgets/white_divider.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/helper_methods.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/screen_utils.dart';
import 'package:rafid_portfolio_flutter/app/modules/dashboard/controllers/dashboard_controller.dart';

import '../../../helper_methods/constants.dart';

class CustomAppbarView extends GetView<DashboardController> {
  const CustomAppbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return appBarView(context);
  }

  Widget appBarView(context) {
    return Obx(() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        width: screenWidth(1, context),
        color: isLightModeEnabled() ? colorBlack : colorWhite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                controller.initialViewType.value = 0;
              },
              onHover: (value) {
                controller.hoverOnName.value = !controller.hoverOnName.value;
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonTextWidgetColorFixed(
                    text: myName,
                    fontWeight: boldFontWeight,
                    fontSize: largeFontSize,
                    maxLines: 1,
                    textColor: controller.hoverOnName.isTrue
                        ? colorGrey
                        : isLightModeEnabled()
                        ? colorWhite
                        : colorBlack,
                  ),
                  CommonTextWidgetColorFixed(
                    text: myDesignation,
                    fontWeight: normalFontWeight,
                    fontSize: normalFontSize,
                    maxLines: 1,
                    textColor: controller.hoverOnName.isTrue
                        ? colorGrey
                        : isLightModeEnabled()
                        ? colorWhite
                        : colorBlack,
                  ),
                ],
              ),
            ),
            const Spacer(),
            isDesktopViewNavbar.isTrue
                ? const SizedBox()
                : CustomMenuButtonWhite(
              onPressed: () {
                showToolbarDialog(context);
              },
            ),
            ////contact
            isDesktopViewNavbar.isTrue ? contactButton() : const SizedBox(),
            ////email
            isDesktopViewNavbar.isTrue ? emailButton() : const SizedBox(),
            SizedBox(
              width: isDesktopViewNavbar.isTrue ? 10 : 0,
            ),
            ////github
            isDesktopViewNavbar.isTrue ? githubButton() : const SizedBox(),
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
    });
  }

  Widget darkModeButton({bool? isPopUp}) {
    return InkWell(
      onTap: () {
        toggleMode();
        if (isPopUp != null && isPopUp == true) {
          Get.back();
        }
      },
      onHover: (value) {
        controller.hoverOnDarkMode.value = !controller.hoverOnDarkMode.value;
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
  }

  Widget instagramButton({bool? isPopUp}) {
    return InkWell(
      onTap: () {
        launchUrlInBrowser(instagramUrl);
        if (isPopUp != null && isPopUp == true) {
          Get.back();
        }
      },
      onHover: (value) {
        controller.hoverOnInsta.value = !controller.hoverOnInsta.value;
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
  }

  Widget facebookButton({bool? isPopUp}) {
    return InkWell(
      onTap: () {
        launchUrlInBrowser(facebookUrl);
        if (isPopUp != null && isPopUp == true) {
          Get.back();
        }
      },
      onHover: (value) {
        controller.hoverOnFB.value = !controller.hoverOnFB.value;
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
  }

  Widget emailButton({bool? isPopUp}) {
    return InkWell(
      onTap: () {
        launchEmail(myEmailAddress);
        if (isPopUp != null && isPopUp == true) {
          Get.back();
        }
      },
      onHover: (value) {
        controller.hoverOnEmail.value = !controller.hoverOnEmail.value;
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
  }

  Widget linkedInButton({bool? isPopUp}) {
    return InkWell(
      onTap: () {
        launchUrlInBrowser(linkedinUrl);
        if (isPopUp != null && isPopUp == true) {
          Get.back();
        }
      },
      onHover: (value) {
        controller.hoverOnLinkedin.value = !controller.hoverOnLinkedin.value;
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
  }

  Widget contactButton() {
    return InkWell(
      onTap: () {
        controller.initialViewType.value = 1;
      },
      onHover: (value) {
        controller.hoverOnContact.value = !controller.hoverOnContact.value;
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
  }

  Widget githubButton({bool? isPopUp}) {
    return InkWell(
      onTap: () {
        launchUrlInBrowser(githubUrl);
        if (isPopUp != null && isPopUp == true) {
          Get.back();
        }
      },
      onHover: (value) {
        controller.hoverOnGithub.value = !controller.hoverOnGithub.value;
      },
      child: SvgPicture.asset(
        "assets/github_icon.svg",
        color: controller.hoverOnGithub.isTrue
            ? colorGrey
            : isLightModeEnabled()
            ? colorWhite
            : colorBlack,
        height: 40,
        width: 40,
      ),
    );
  }

  showToolbarDialog(context) {
    Get.dialog(Obx(() {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        backgroundColor: isLightModeEnabled() ? colorBlack : colorWhite,
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              emailButton(isPopUp: true),
              const CustomDividerWhite(),
              githubButton(isPopUp: true),
              const CustomDividerWhite(),
              facebookButton(isPopUp: true),
              const CustomDividerWhite(),
              instagramButton(isPopUp: true),
              const CustomDividerWhite(),
              linkedInButton(isPopUp: true),
              const CustomDividerWhite(),
              darkModeButton(isPopUp: true),
            ],
          ),
        ),
      );
    }));
  }
}
