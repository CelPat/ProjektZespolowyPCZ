import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import '../../constants/colors.dart';

class ZenAppBarTheme {
  ZenAppBarTheme._();

  static const lighZenAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ZenColors.black, size: ZenSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: ZenColors.black, size: ZenSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: ZenColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ZenColors.black, size: ZenSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: ZenColors.white, size: ZenSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: ZenColors.white),
  );
}
