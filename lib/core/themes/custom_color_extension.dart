import 'package:flutter/material.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors(
      {required this.primaryColor,
      required this.textdarkcolor,
      required this.hinttextcolor,
      required this.fillColor,
      required this.lightBlueColor,
      required this.blackColor,
      required this.scaffoldColor,
      required this.productplaceholdercolor,
      required this.lightgreycolor,
      required this.greencolor,
      required this.redcolor,
      required this.greyborder,
      required this.blueColor,
      required this.lightGreyTextColor,
      required this.purpleColor,
      required this.darkGreytextcolor,
      required this.greycontainercolor,
      required this.yellowColor,
      required this.backGroundColor,
      required this.textFiledEnabledBorderColor,
      required this.textFiledFocusedBorderColor,
      required this.textfiledfillColor,
      required this.fillBackGroung});

  final Color? primaryColor;
  final Color? textdarkcolor;
  final Color? hinttextcolor;
  final Color? fillColor;
  final Color? lightBlueColor;
  final Color? blackColor;
  final Color? scaffoldColor;
  final Color? productplaceholdercolor;
  final Color? lightgreycolor;
  final Color? greencolor;
  final Color? redcolor;
  final Color? greyborder;
  final Color? blueColor;
  final Color? lightGreyTextColor;
  final Color? purpleColor;
  final Color? darkGreytextcolor;
  final Color? greycontainercolor;
  final Color? yellowColor;
  final Color? backGroundColor;
  final Color? textFiledEnabledBorderColor;
  final Color? textFiledFocusedBorderColor;
  final Color? textfiledfillColor;
  final Color? fillBackGroung;

  // Default light theme colors
  static const light = CustomColors(
    primaryColor: Color(0XFF15BE77),
    textdarkcolor: Color.fromARGB(255, 0, 0, 0),
    hinttextcolor: Color.fromARGB(255, 99, 99, 99),
    fillColor: Color(0XffFFFFFF),
    lightBlueColor: Color(0Xff006EFF),
    blackColor: Color(0xFF222222),
    scaffoldColor: Color(0xFFEBF3F8),
    productplaceholdercolor: Color(0XffC8E8E5),
    lightgreycolor: Color(0XffA3A3A3),
    greencolor: Color(0Xff239C71),
    redcolor: Color(0XffFF0000),
    greyborder: Color(0XffDEDEDE),
    blueColor: Color(0xff0000FF),
    lightGreyTextColor: Color(0xFFBBBBBB),
    purpleColor: Color(0xFF800080),
    darkGreytextcolor: Color(0xff666666),
    greycontainercolor: Color(0xFFECECEC),
    yellowColor: Color(0xffFFBF00),
    backGroundColor: Color(0XFFFFFFFF),
    textFiledEnabledBorderColor: Color.fromARGB(255, 160, 160, 160),
    textFiledFocusedBorderColor: Color.fromARGB(255, 0, 162, 0),
    textfiledfillColor: Color.fromARGB(255, 252, 252, 252),
    fillBackGroung: Color.fromARGB(255, 219, 219, 219),
  );

  // Default dark theme colors
  static const dark = CustomColors(
    primaryColor: Color.fromARGB(255, 0, 162, 0),
    textdarkcolor: Color.fromARGB(255, 255, 255, 255),
    fillColor: Color(0XffFFFFFF),
    hinttextcolor: Color.fromARGB(255, 99, 99, 99),
    lightBlueColor: Color(0Xff006EFF),
    blackColor: Color(0xFF222222),
    scaffoldColor: Color(0xFFEBF3F8),
    productplaceholdercolor: Color(0XffC8E8E5),
    lightgreycolor: Color(0XffA3A3A3),
    greencolor: Color(0Xff239C71),
    redcolor: Color(0XffFF0000),
    greyborder: Color(0XffDEDEDE),
    blueColor: Color(0xff0000FF),
    lightGreyTextColor: Color(0xFFBBBBBB),
    purpleColor: Color(0xFF800080),
    darkGreytextcolor: Color(0xff666666),
    greycontainercolor: Color(0xffAEAEAE),
    yellowColor: Color(0xffFFBF00),
    backGroundColor: Color(0XFF0D0D0D),
    textFiledEnabledBorderColor: Color.fromARGB(255, 81, 81, 81),
    textFiledFocusedBorderColor: Color.fromARGB(255, 0, 162, 0),
    textfiledfillColor: Color.fromARGB(255, 17, 17, 17),
    fillBackGroung: Color.fromARGB(111, 59, 59, 59),
  );

  @override
  CustomColors copyWith(
      {Color? primaryColor,
      Color? textdarkcolor,
      Color? hinttextcolor,
      Color? fillColor,
      Color? lightBlueColor,
      Color? blackColor,
      Color? scaffoldColor,
      Color? productplaceholdercolor,
      Color? lightgreycolor,
      Color? greencolor,
      Color? redcolor,
      Color? greyborder,
      Color? blueColor,
      Color? lightGreyTextColor,
      Color? purpleColor,
      Color? darkGreytextcolor,
      Color? greycontainercolor,
      Color? yellowColor,
      Color? backGroundColor,
      Color? textFiledEnabledBorderColor,
      Color? textFiledFocusedBorderColor,
      Color? textfiledfillColor,
      Color? fillBackGroung}) {
    return CustomColors(
        primaryColor: primaryColor ?? this.primaryColor,
        textdarkcolor: textdarkcolor ?? this.textdarkcolor,
        hinttextcolor: hinttextcolor ?? this.hinttextcolor,
        fillColor: fillColor ?? this.fillColor,
        lightBlueColor: lightBlueColor ?? this.lightBlueColor,
        blackColor: blackColor ?? this.blackColor,
        scaffoldColor: scaffoldColor ?? this.scaffoldColor,
        productplaceholdercolor:
            productplaceholdercolor ?? this.productplaceholdercolor,
        lightgreycolor: lightgreycolor ?? this.lightgreycolor,
        greencolor: greencolor ?? this.greencolor,
        redcolor: redcolor ?? this.redcolor,
        greyborder: greyborder ?? this.greyborder,
        blueColor: blueColor ?? this.blueColor,
        lightGreyTextColor: lightGreyTextColor ?? this.lightGreyTextColor,
        purpleColor: purpleColor ?? this.purpleColor,
        darkGreytextcolor: darkGreytextcolor ?? this.darkGreytextcolor,
        greycontainercolor: greycontainercolor ?? this.greycontainercolor,
        yellowColor: yellowColor ?? this.yellowColor,
        backGroundColor: backGroundColor ?? this.backGroundColor,
        textFiledEnabledBorderColor:
            textFiledEnabledBorderColor ?? this.textFiledEnabledBorderColor,
        textFiledFocusedBorderColor:
            textFiledFocusedBorderColor ?? this.textFiledFocusedBorderColor,
        textfiledfillColor: textfiledfillColor ?? this.textfiledfillColor,
        fillBackGroung: fillBackGroung ?? this.fillBackGroung);
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(
        primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
        textdarkcolor: Color.lerp(textdarkcolor, other.textdarkcolor, t),
        hinttextcolor: Color.lerp(hinttextcolor, other.hinttextcolor, t),
        fillColor: Color.lerp(fillColor, other.fillColor, t),
        lightBlueColor: Color.lerp(lightBlueColor, other.lightBlueColor, t),
        blackColor: Color.lerp(blackColor, other.blackColor, t),
        scaffoldColor: Color.lerp(scaffoldColor, other.scaffoldColor, t),
        productplaceholdercolor: Color.lerp(
          productplaceholdercolor,
          other.productplaceholdercolor,
          t,
        ),
        lightgreycolor: Color.lerp(lightgreycolor, other.lightgreycolor, t),
        greencolor: Color.lerp(greencolor, other.greencolor, t),
        redcolor: Color.lerp(redcolor, other.redcolor, t),
        greyborder: Color.lerp(greyborder, other.greyborder, t),
        blueColor: Color.lerp(blueColor, other.blueColor, t),
        lightGreyTextColor: Color.lerp(
          lightGreyTextColor,
          other.lightGreyTextColor,
          t,
        ),
        purpleColor: Color.lerp(purpleColor, other.purpleColor, t),
        darkGreytextcolor: Color.lerp(
          darkGreytextcolor,
          other.darkGreytextcolor,
          t,
        ),
        greycontainercolor: Color.lerp(
          greycontainercolor,
          other.greycontainercolor,
          t,
        ),
        yellowColor: Color.lerp(yellowColor, other.yellowColor, t),
        backGroundColor: Color.lerp(backGroundColor, other.backGroundColor, t),
        textFiledEnabledBorderColor: Color.lerp(
            textFiledEnabledBorderColor, other.textFiledEnabledBorderColor, t),
        textFiledFocusedBorderColor: Color.lerp(
            textFiledFocusedBorderColor, other.textFiledFocusedBorderColor, t),
        textfiledfillColor:
            Color.lerp(textfiledfillColor, other.textfiledfillColor, t),
        fillBackGroung: Color.lerp(fillBackGroung, other.fillBackGroung, t));
  }
}

extension ThemeDataCustomColors on ThemeData {
  CustomColors get customColors {
    final customColors = extension<CustomColors>();
    if (customColors == null) {
      return CustomColors.light;
    }
    return customColors;
  }
}
