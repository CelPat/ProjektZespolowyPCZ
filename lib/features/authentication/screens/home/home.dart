import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/common/styles/spacing_styles.dart';
import 'package:projekt_zespolowy_pcz/common/widgets/bottomNavigationBar.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: ZenSpacingStyle.paddingWithAppBarHeight,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    height: 100,
                    ZenImages.appLogo, 
                    fit: BoxFit.cover
                    ),
                  const SizedBox(
                    height: ZenSizes.spaceBetweenSections * 4,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(ZenTexts.meditationHomeButton),
                    ),
                  ),
                  const SizedBox(
                    height: ZenSizes.spaceBetweenItems,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(ZenTexts.helpHomeButton),
                    ),
                  ),
                  const SizedBox(
                    height: ZenSizes.spaceBetweenItems,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(ZenTexts.knowledgeHomeButton),
                    ),
                  ),
                ]),
          ),
        ),
        bottomNavigationBar:
            const bottomNavigationBar());
  }
}