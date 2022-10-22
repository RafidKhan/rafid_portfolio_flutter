import 'package:flutter/material.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/constants.dart';

class CustomLayoutBuilder extends StatelessWidget {
  Widget child;

  CustomLayoutBuilder({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        boxConstraints = constraints;
        if (boxConstraints!.maxWidth > 1200) {
          isDesktopViewNavbar.value = true;
        } else if (boxConstraints!.maxWidth > 800 && boxConstraints!.maxWidth < 1200) {
          isDesktopViewNavbar.value = true;
        } else {
          isDesktopViewNavbar.value = false;
        }
        return child;
      },
    );
  }
}
