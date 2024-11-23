import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/colors.dart';
import '../../constants/sizes.dart';

class ZenTextFormFieldTheme {
  ZenTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: ZenColors.darkGrey,
    suffixIconColor: ZenColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: ZenSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: ZenSizes.fontSizeMd, color: ZenColors.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: ZenSizes.fonZenSizesm, color: ZenColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: ZenColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ZenSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ZenColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ZenSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ZenColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ZenSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ZenColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ZenSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ZenColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ZenSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ZenColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: ZenColors.darkGrey,
    suffixIconColor: ZenColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: ZenSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: ZenSizes.fontSizeMd, color: ZenColors.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: ZenSizes.fonZenSizesm, color: ZenColors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: ZenColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ZenSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ZenColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ZenSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ZenColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ZenSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ZenColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ZenSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ZenColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ZenSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ZenColors.warning),
    ),
  );
}
