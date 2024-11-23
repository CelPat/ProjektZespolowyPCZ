import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class ZenOutlinedButtonTheme {
  ZenOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lighZenOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: ZenColors.dark,
      side: const BorderSide(color: ZenColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16, color: ZenColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: ZenSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ZenSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ZenColors.light,
      side: const BorderSide(color: ZenColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16,
          color: ZenColors.textWhite,
          fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: ZenSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ZenSizes.buttonRadius)),
    ),
  );
}
