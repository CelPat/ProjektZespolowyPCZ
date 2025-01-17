import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

/// Klasa reprezentująca pojedynczą stronę w ekranie wprowadzającym.
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  // Parametry konstrukcyjne dla obrazu, tytułu i podtytułu.
  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ZenSizes.defaultSpace),
      child: Column(
        children: [
          // Obrazek wyświetlany na stronie wprowadzającej
          Image(
            width: ZenHelperFunctions.screenWidth() * 0.8, // 80% width
            height: ZenHelperFunctions.screenHeight() * 0.6, // 60% height
            image: AssetImage(image),
          ),
          // Tytuł strony wprowadzającej
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          // Odstęp między elementami
          const SizedBox(height: ZenSizes.spaceBetweenItems),
          // Podtytuł strony wprowadzającej
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
