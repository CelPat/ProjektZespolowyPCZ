import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class ZenElevatedButtonTheme {
  ZenElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lighZenElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ZenColors.light,
      backgroundColor: ZenColors.primary,
      disabledForegroundColor: ZenColors.darkGrey,
      disabledBackgroundColor: ZenColors.buttonDisabled,
      side: const BorderSide(color: ZenColors.primary),
      padding: const EdgeInsets.symmetric(vertical: ZenSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: ZenColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ZenSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ZenColors.light,
      backgroundColor: ZenColors.primary,
      disabledForegroundColor: ZenColors.darkGrey,
      disabledBackgroundColor: ZenColors.darkerGrey,
      side: const BorderSide(color: ZenColors.primary),
      padding: const EdgeInsets.symmetric(vertical: ZenSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: ZenColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ZenSizes.buttonRadius)),
    ),
  );
}
