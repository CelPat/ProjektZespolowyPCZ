import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/common/styles/spacing_styles.dart';
import 'package:projekt_zespolowy_pcz/features/help_center/screens/niebieska_linia/niebieska_linia.dart';
import 'package:projekt_zespolowy_pcz/features/help_center/screens/dzieciecy_telefon/dzieciecy_telefon.dart';
import 'package:projekt_zespolowy_pcz/features/help_center/screens/kryzysowy_telefon_zaufania/kryzysowy_telefon_zaufania.dart';
import 'package:projekt_zespolowy_pcz/features/help_center/screens/telefon_dzieci_i_mlodziezy/telefon_dzieci_i_mlodziezy.dart';
import 'package:projekt_zespolowy_pcz/features/help_center/screens/telefon_chat_dzieci_mlodziez/telefon_chat_dzieci_mlodziez.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

/// Klasa reprezentująca stronę centrum pomocy
/// zawierającą różne numery telefonów wsparcia.
class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

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
              // Obrazek animowany centrum pomocy
              Image.asset(
                height: 150,
                ZenImages.helpCenterAnimation,
                fit: BoxFit.cover,
              ),
              // Odstęp między sekcjami
              const SizedBox(
                height: ZenSizes.spaceBetweenSections,
              ),
              // Przycisk prowadzący do Dziecięcego Telefonu Zaufania
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DzieciecyTelefon()));
                  },
                  child: const Text(ZenTexts.firstCallName),
                ),
              ),
              // Odstęp między elementami
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              // Przycisk prowadzący do Telefonu Dzieci i Młodzieży
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TelefonDzieciIMlodziezy()));
                  },
                  child: const Text(ZenTexts.secondCallName),
                ),
              ),
              // Odstęp między elementami
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              // Przycisk prowadzący do Telefonu i Czatu Zaufania dla Dzieci i Młodzieży
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TelefonChatDzieciMlodziez()));
                  },
                  child: const Text(ZenTexts.thirdCallName),
                ),
              ),
              // Odstęp między elementami
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              // Przycisk prowadzący do Kryzysowego Telefonu Zaufania
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const KryzysowyTelefonZaufania()));
                  },
                  child: const Text(ZenTexts.fourthCallName),
                ),
              ),
              // Odstęp między elementami
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
              // Przycisk prowadzący do Niebieskiej Linii
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NiebieskaLinia()));
                  },
                  child: const Text(ZenTexts.fifthCallName),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
