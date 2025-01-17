import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/controllers/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

/// Klasa reprezentująca nawigację kropek
/// na ekranie wprowadzającym.
class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Sprawdzenie, czy tryb ciemny jest włączony
    final dark = ZenHelperFunctions.isDarkMode(context);
    // Inicjalizacja kontrolera onboardingowego
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: ZenDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: ZenSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: WormEffect(
            activeDotColor: dark ? ZenColors.light : ZenColors.dark,
            dotHeight: 8),
      ),
    );
  }
}
