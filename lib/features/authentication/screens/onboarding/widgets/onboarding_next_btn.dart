import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/controllers/onboarding_controller.dart';
import 'package:projekt_zespolowy_pcz/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

/// Klasa reprezentująca przycisk "Dalej" na ekranie wprowadzającym.
class OnBoardingNextBtn extends StatelessWidget {
  const OnBoardingNextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Sprawdzenie, czy tryb ciemny jest włączony
    final dark = ZenHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: ZenDeviceUtils.getBottomNavigationBarHeight(),
      right: ZenSizes.defaultSpace,
      child: ElevatedButton(
        // Akcja po kliknięciu przycisku "Dalej"
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? ZenColors.primary : ZenColors.dark),
        child: const Icon(Icons.keyboard_arrow_right_rounded),
      ),
    );
  }
}
