import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/controllers/onboarding_controller.dart';
import 'package:projekt_zespolowy_pcz/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingNextBtn extends StatelessWidget {
  const OnBoardingNextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = ZenHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: ZenDeviceUtils.getBottomNavigationBarHeight(),
      right: ZenSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? ZenColors.primary : ZenColors.dark),
        child: const Icon(Icons.keyboard_arrow_right_rounded),
      ),
    );
  }
}
