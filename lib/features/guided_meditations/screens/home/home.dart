import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ZenImages.appLogo, fit: BoxFit.cover),
              const SizedBox(
                height: ZenSizes.spaceBetweenSections,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(ZenTexts.meditations),
              ),
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(ZenTexts.helpCenter),
              ),
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(ZenTexts.knowledgeCenter),
              ),
            ]),
      ),
    );
  }
}
