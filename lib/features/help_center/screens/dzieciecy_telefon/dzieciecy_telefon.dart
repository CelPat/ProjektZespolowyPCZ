import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher_string.dart';

/// Klasa reprezentująca stronę aplikacji
/// z numerem Dziecięcego Telefonu Zaufania.
class DzieciecyTelefon extends StatelessWidget {
  const DzieciecyTelefon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(ZenTexts.dzieciecyTelefonZaufaniaTitle),
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
                    launchUrlString('tel:+48 800 12 12 12');
                  },
                  style:
                      ElevatedButton.styleFrom(fixedSize: const Size(150, 60)),
                  icon: const Icon(
                    Icons.phone_rounded,
                    color: Colors.white,
                  ),
                  label: const Text('800 12 12 12'),
                )),
                // Większy odstęp między elementami
                const SizedBox(
                  height: ZenSizes.spaceBetweenItems * 2,
                ),
                // Opis dostępnej pomocy pod numerem telefonu
                const SizedBox(
                    child: Text(
                        'Pod tym numerem dzieci, rodzice i opiekunowie mogą uzyskać wsparcie psychologiczne i prawne. Dorośli mogą zgłaszać problemy dzieci lub zaniedbania. Najczęściej poruszane są sprawy przemocy, problemów emocjonalnych, relacji rówieśniczych, szkolnych i rodzinnych. Dostępny jest także całodobowy chat.',
                        textAlign: TextAlign.center)),
                // Odstęp między elementami
                const SizedBox(
                  height: ZenSizes.spaceBetweenItems,
                ),
                // Link do strony internetowej z dodatkowymi informacjami
                SizedBox(
                    width: 150,
                    child: Link(
                        uri: Uri.parse('https://800121212.pl/'),
                        builder: (context, followLink) {
                          return ElevatedButton(
                              onPressed: followLink,
                              child: const Text('800121212.pl'));
                        })),
              ],
            )));
  }
}
