import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rafid_portfolio_flutter/app/helper_methods/constants.dart';

class CommonTextWidgetColorFixed extends StatelessWidget {
  String text;
  FontWeight fontWeight = normalFontWeight;
  double fontSize = normalFontSize;
  Color textColor;
  int maxLines;

  CommonTextWidgetColorFixed(
      {Key? key,
      required this.text,
      required this.fontWeight,
      required this.fontSize,
      required this.textColor,
      required this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      maxLines: maxLines,
      style: GoogleFonts.lora(
          color: textColor, fontSize: fontSize, fontWeight: fontWeight),
      overflow: TextOverflow.ellipsis,
    );
  }
}
