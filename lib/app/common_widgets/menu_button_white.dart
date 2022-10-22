import 'package:flutter/material.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/constants.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/screen_utils.dart';

class CustomMenuButtonWhite extends StatelessWidget {
  VoidCallback onPressed;

  CustomMenuButtonWhite({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Icon(
        Icons.menu,
        color: isLightModeEnabled() ? colorWhite : colorBlack,
      ),
    );
  }
}
