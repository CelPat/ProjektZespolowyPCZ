import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/common/styles/spacing_styles.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/knowledge/choroby/adhd/adhd.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/knowledge/choroby/anxiety/anxiety.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/knowledge/choroby/depresja/depression.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/knowledge/choroby/ocd/ocd.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/knowledge/choroby/ptsd/ptsd.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class KnowledgePage extends StatelessWidget{
  const KnowledgePage ({super.key});

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
                    Get.to(DepressionPage());
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
                    Get.to(AnxietyPage());
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
                    Get.to(PtsdPage());
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
                    Get.to(AdhdPage());
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
                    Get.to(OcdPage());
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