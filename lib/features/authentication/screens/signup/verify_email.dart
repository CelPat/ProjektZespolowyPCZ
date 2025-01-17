import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/login/login.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/helpers/helper_functions.dart';

/// Klasa reprezentująca ekran weryfikacji adresu e-mail w aplikacji.
class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        actions: [
          // Przycisk powrotu do ekranu logowania
          IconButton(
            onPressed: () => Get.offAll(() => LoginPage()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ZenSizes.defaultSpace),
          child: Column(
            children: [
              // Obrazek potwierdzający wysłanie wiadomości e-mail
              Image(
                image: const AssetImage(ZenImages.newEmailMessage),
                width: ZenHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: ZenSizes.spaceBetweenItems),
              
              // Tytuł ekranu weryfikacji e-maila
              Text(
                ZenTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ZenSizes.spaceBetweenItems),
              
              // Podtytuł ekranu weryfikacji e-maila
              Text(
                ZenTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
