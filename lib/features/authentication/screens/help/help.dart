import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/common/styles/spacing_styles.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/help/niebieska_linia/niebieska_linia.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/help/dzieciecy_telefon/dzieciecy_telefon.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/help/kryzysowy_telefon_zaufania/kryzysowy_telefon_zaufania.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/help/telefon_dzieci_i_mlodziezy/telefon_dzieci_i_mlodziezy.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/help/telefon_chat_dzieci_mlodziez/telefon_chat_dzieci_mlodziez.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

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
              Image.asset(
                height: 150,
                ZenImages.helpCenterAnimation,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: ZenSizes.spaceBetweenSections,
              ),
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
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
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
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
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
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
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
              const SizedBox(
                height: ZenSizes.spaceBetweenItems,
              ),
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
