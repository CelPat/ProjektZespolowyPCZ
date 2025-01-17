import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/controllers/onboarding_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

/// Klasa reprezentująca przycisk "Pomiń" na ekranie wprowadzającym.
class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ZenDeviceUtils.getAppBarHeight(),
      right: ZenSizes.defaultSpace,
      child: TextButton(
          // Akcja po kliknięciu przycisku "Pomiń"
          onPressed: () => OnboardingController.instance.skipPage(),
          child: const Text("Skip")),
    );
  }
}
