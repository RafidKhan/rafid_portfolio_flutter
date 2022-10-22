import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/constants.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/screen_utils.dart';

class CommonTextWidgetBlack extends StatelessWidget {
  String text;
  FontWeight fontWeight;
  double fontSize;
  int maxLines;

  CommonTextWidgetBlack(
      {Key? key,
      required this.text,
      required this.fontWeight,
      required this.fontSize,
      required this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      maxLines: maxLines,
      style: GoogleFonts.lora(
          color: isLightModeEnabled() ? colorBlack : colorWhite,
          fontSize: fontSize,
          fontWeight: fontWeight),
      overflow: TextOverflow.ellipsis,
    );
  }
}
