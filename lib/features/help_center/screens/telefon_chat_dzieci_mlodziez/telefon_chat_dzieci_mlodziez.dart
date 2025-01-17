import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher_string.dart';

/// Klasa reprezentująca stronę aplikacji
/// z numerem Telefonu i Czatu Zaufania dla Dzieci i Młodzieży.
class TelefonChatDzieciMlodziez extends StatelessWidget {
  const TelefonChatDzieciMlodziez({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(ZenTexts.telefonChatDzieciIMlodziezTitle),
          centerTitle: true,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          iconTheme: Theme.of(context).iconTheme,
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Odstęp między elementami
                const SizedBox(
                  height: ZenSizes.spaceBetweenItems,
                ),
                // Przycisk do wykonywania połączeń telefonicznych
                SizedBox(
                    child: ElevatedButton.icon(
                  onPressed: () {
                    launchUrlString('tel:+48 800 119 119');
                  },
                  style:
                      ElevatedButton.styleFrom(fixedSize: const Size(150, 60)),
                  icon: const Icon(
                    Icons.phone_rounded,
                    color: Colors.white,
                  ),
                  label: const Text('800 119 119'),
                )),
                // Większy odstęp między elementami
                const SizedBox(
                  height: ZenSizes.spaceBetweenItems * 2,
                ),
                // Opis dostępnej pomocy pod numerem telefonu
                const SizedBox(
                    child: Text(
                        'Telefon i czat zaufania dla dzieci i młodzieży zapewnia bezpłatny kontakt z psychologami. Można omówić problemy emocjonalne, szkolne, rodzinne, rówieśnicze, romantyczne, dojrzewanie i dyskryminację. Oferuje wsparcie w kryzysie psychicznym, złym samopoczuciu oraz w sytuacjach przemocy domowej, fizycznej, psychicznej czy seksualnej.',
                        textAlign: TextAlign.center)),
                // Odstęp między elementami
                const SizedBox(
                  height: ZenSizes.spaceBetweenItems,
                ),
                // Link do strony internetowej z dodatkowymi informacjami
                SizedBox(
                    width: 150,
                    child: Link(
                        uri: Uri.parse('https://800119119.pl/'),
                        builder: (context, followLink) {
                          return ElevatedButton(
                              onPressed: followLink,
                              child: const Text('800119119.pl')
                              // style: ElevatedButton.styleFrom(),
                              );
                        })),
              ],
            )));
  }
}
