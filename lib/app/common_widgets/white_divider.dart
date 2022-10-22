import 'package:flutter/material.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/constants.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/screen_utils.dart';

class CustomDividerWhite extends StatelessWidget {
  const CustomDividerWhite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: isLightModeEnabled() ? colorWhite : colorBlack,
    );
  }
}
