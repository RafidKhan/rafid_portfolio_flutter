import 'package:flutter/material.dart';
import 'package:get/get.dart';

//ui elements
final Color colorWhite = Colors.white;
final Color colorBlack = Colors.black;
final Color colorGrey = Colors.grey;
final double largeFontSize = 20.0;
final double extraLargeFontSize = 40.0;
final double normalFontSize = 15.0;
final FontWeight boldFontWeight = FontWeight.bold;
final FontWeight normalFontWeight = FontWeight.normal;
final double defaultWidth = Get.width;
final double defaultHeight = Get.height;
RxBool isDesktopViewNavbar = true.obs;
BoxConstraints? boxConstraints;
final Transition defaultPageTransition = Transition.fade;

///strings
final Uri facebookUrl = Uri.parse('https://www.facebook.com/rafidhussainkhan/');
final Uri instagramUrl = Uri.parse('https://www.instagram.com/_rafidkhan/');
final Uri linkedinUrl = Uri.parse('https://www.linkedin.com/in/rafidkhan98/');
final String myEmailAddress = "rafid.hussainkhan98@gmail.com";
final String myName = "Rafid Hussain Khan";
final String myDesignation = "Mobile Application Developer";
final String myBio =
    "A dedicated mobile application developer who writes clean code, using state management to develop android and ios applications.";
final String workExperience3 =
    "Working at Dhrubok Infotech Services Ltd as Junior Flutter Application Developer";
final String workExperience2 = "ex Junior Software Engineer at Riseup Labs";
final String workExperience1 = "ex Flutter Engineer at Borak Services Limited";
