import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ZenChipTheme {
  ZenChipTheme._();

  static ChipThemeData lighZenChipTheme = ChipThemeData(
    disabledColor: ZenColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: ZenColors.black),
    selectedColor: ZenColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ZenColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: ZenColors.darkerGrey,
    labelStyle: TextStyle(color: ZenColors.white),
    selectedColor: ZenColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ZenColors.white,
  );
}
