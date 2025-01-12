import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class TelefonChatDzieciMlodziez extends StatelessWidget {
  const TelefonChatDzieciMlodziez({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
                child: Text(ZenTexts.telefonChatDzieciIMlodziezTitle)),
            const SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            SizedBox(
              child: ElevatedButton(
                  onPressed: () {}, child: const Text('800 119 119')),
            ),
            const SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            const SizedBox(
                child: Text(
                    'Telefon i czat zaufania dla dzieci i młodzieży zapewnia bezpłatny kontakt z psychologami. Można omówić problemy emocjonalne, szkolne, rodzinne, rówieśnicze, romantyczne, dojrzewanie i dyskryminację. Oferuje wsparcie w kryzysie psychicznym, złym samopoczuciu oraz w sytuacjach przemocy domowej, fizycznej, psychicznej czy seksualnej.')),
            const SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            const SizedBox(child: Text('800119119.pl')),
          ],
        )));
  }
}
