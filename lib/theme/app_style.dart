import 'package:flutter/material.dart';
import 'package:hakernewsapp/core/app_export.dart';

class AppStyle {
  static TextStyle textstylesofiapromedium16 = TextStyle(
    color: ColorConstant.black900Dd,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Sofia Pro',
    fontWeight: FontWeight.w500,
  );

  static TextStyle textstyleregular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstylesofiapro122 = textstylesofiapro12.copyWith(
    color: ColorConstant.black900Dd,
  );

  static TextStyle textstylesofiapro16 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Sofia Pro',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstylesofiapro121 = textstylesofiapro12.copyWith(
    color: ColorConstant.black90060,
  );

  static TextStyle textstyleregular16 = TextStyle(
    color: ColorConstant.bluegray400,
    fontSize: getFontSize(
      16,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstylesofiapro12 = TextStyle(
    color: ColorConstant.orange800,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'Sofia Pro',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstylesofiapro161 = textstylesofiapro16.copyWith();

  static TextStyle textstylesofiaprosemibold30 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      30,
    ),
    fontFamily: 'Sofia Pro',
    fontWeight: FontWeight.w600,
  );

  static TextStyle textstylesofiapro14 = TextStyle(
    color: ColorConstant.black90099,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Sofia Pro',
    fontWeight: FontWeight.w400,
  );
}
