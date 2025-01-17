import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/common/styles/spacing_styles.dart';
import 'package:projekt_zespolowy_pcz/features/knowledge_center/screens/choroby/adhd/adhd.dart';
import 'package:projekt_zespolowy_pcz/features/knowledge_center/screens/choroby/anxiety/anxiety.dart';
import 'package:projekt_zespolowy_pcz/features/knowledge_center/screens/choroby/depresja/depression.dart';
import 'package:projekt_zespolowy_pcz/features/knowledge_center/screens/choroby/ocd/ocd.dart';
import 'package:projekt_zespolowy_pcz/features/knowledge_center/screens/choroby/ptsd/ptsd.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

/// Klasa reprezentująca stronę centrum wiedzy
/// zawierającą różne informacje o chorobach.
class KnowledgePage extends StatelessWidget {
  const KnowledgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: ZenSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Obrazek animowany centrum wiedzy
              Image.asset(
                height: 150,
                ZenImages.knowledgeCenterAnimation,
                fit: BoxFit.cover,
              ),
              // Odstęp między sekcjami
              const SizedBox(
                height: ZenSizes.spaceBetweenSections,
              ),
              // Przycisk prowadzący do strony o depresji
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const DepressionPage());
                  },
                  child: const Text(ZenTexts.depresionButtonName),
                ),
              ),
              // Odstęp między elementami
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              // Przycisk prowadzący do strony o zaburzeniach lękowych
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const AnxietyPage());
                  },
                  child: const Text(ZenTexts.anxietyButtonName),
                ),
              ),
              // Odstęp między elementami
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              // Przycisk prowadzący do strony o PTSD
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const PtsdPage());
                  },
                  child: const Text(ZenTexts.ptsdButtonName),
                ),
              ),
              // Odstęp między elementami
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              // Przycisk prowadzący do strony o ADHD
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const AdhdPage());
                  },
                  child: const Text(ZenTexts.adhdButtonName),
                ),
              ),
              // Odstęp między elementami
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              // Przycisk prowadzący do strony o OCD
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const OcdPage());
                  },
                  child: const Text(ZenTexts.ocdButtonName),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
