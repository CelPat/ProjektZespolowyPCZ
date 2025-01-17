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
              Image.asset(
                height: 150,
                ZenImages.knowledgeCenterAnimation,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: ZenSizes.spaceBetweenSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const DepressionPage());
                  },
                  child: const Text(ZenTexts.depresionButtonName),
                ),
              ),
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const AnxietyPage());
                  },
                  child: const Text(ZenTexts.anxietyButtonName),
                ),
              ),
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const PtsdPage());
                  },
                  child: const Text(ZenTexts.ptsdButtonName),
                ),
              ),
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const AdhdPage());
                  },
                  child: const Text(ZenTexts.adhdButtonName),
                ),
              ),
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
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
