import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/login/login.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

import '../../../../utils/helpers/helper_functions.dart';

/// Klasa reprezentująca ekran resetowania hasła w aplikacji.
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          // Przycisk powrotu
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ZenSizes.defaultSpace),
          child: Column(
            children: [
              // Obrazek informujący o wysłaniu wiadomości e-mail
              Image(
                image: const AssetImage(ZenImages.newEmailMessage),
                width: ZenHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: ZenSizes.spaceBetweenSections,
              ),

              // Tytuł i podtytuł ekranu
              Text(
                ZenTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              Text(
                ZenTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ZenSizes.spaceBetweenSections,
              ),

              // Przycisk "Gotowe"
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => LoginPage()),
                    child: const Text(ZenTexts.done)),
              ),

              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),

              // Przycisk ponownego wysłania wiadomości e-mail
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(ZenTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
