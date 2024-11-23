import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/theme/widget_themes/appbar_theme.dart';
import 'package:projekt_zespolowy_pcz/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:projekt_zespolowy_pcz/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:projekt_zespolowy_pcz/utils/theme/widget_themes/chip_theme.dart';
import 'package:projekt_zespolowy_pcz/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:projekt_zespolowy_pcz/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:projekt_zespolowy_pcz/utils/theme/widget_themes/text_field_theme.dart';
import 'package:projekt_zespolowy_pcz/utils/theme/widget_themes/text_theme.dart';

import '../constants/colors.dart';

class ZenAppTheme {
  ZenAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: ZenColors.grey,
    brightness: Brightness.light,
    primaryColor: ZenColors.primary,
    textTheme: ZenTextTheme.lighZenTextTheme,
    chipTheme: ZenChipTheme.lighZenChipTheme,
    scaffoldBackgroundColor: ZenColors.white,
    appBarTheme: ZenAppBarTheme.lighZenAppBarTheme,
    checkboxTheme: ZenCheckboxTheme.lighZenCheckboxTheme,
    bottomSheetTheme: ZenBottomSheetTheme.lighZenBottomSheetTheme,
    elevatedButtonTheme: ZenElevatedButtonTheme.lighZenElevatedButtonTheme,
    outlinedButtonTheme: ZenOutlinedButtonTheme.lighZenOutlinedButtonTheme,
    inputDecorationTheme: ZenTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: ZenColors.grey,
    brightness: Brightness.dark,
    primaryColor: ZenColors.primary,
    textTheme: ZenTextTheme.darkTextTheme,
    chipTheme: ZenChipTheme.darkChipTheme,
    scaffoldBackgroundColor: ZenColors.black,
    appBarTheme: ZenAppBarTheme.darkAppBarTheme,
    checkboxTheme: ZenCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: ZenBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: ZenElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ZenOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ZenTextFormFieldTheme.darkInputDecorationTheme,
  );
}
