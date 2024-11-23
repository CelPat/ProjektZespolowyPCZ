import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/colors.dart';

class ZenBottomSheetTheme {
  ZenBottomSheetTheme._();

  static BottomSheetThemeData lighZenBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: ZenColors.white,
    modalBackgroundColor: ZenColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: ZenColors.black,
    modalBackgroundColor: ZenColors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
