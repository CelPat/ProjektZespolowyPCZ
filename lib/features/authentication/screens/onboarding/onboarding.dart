import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/controllers/onboarding_controller.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';
import 'package:get/get.dart';

import 'widgets/onboarding_next_btn.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

/// Klasa reprezentująca ekran wprowadzający w aplikacji.
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Inicjalizacja kontrolera onboardingowego
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Strony PageView z obrazkami, tytułami i podtytułami
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: ZenImages.onboarding1,
                title: ZenTexts.onBoardingTitle1,
                subtitle: ZenTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: ZenImages.onboarding2,
                title: ZenTexts.onBoardingTitle2,
                subtitle: ZenTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: ZenImages.onboarding3,
                title: ZenTexts.onBoardingTitle3,
                subtitle: ZenTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          // Przycisk "Pomiń"
          const OnBoardingSkip(),
          // Nawigacja kropek
          const OnBoardingDotNavigation(),
          // Przycisk "Dalej"
          const OnBoardingNextBtn(),
        ],
      ),
    );
  }
}
