import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher_string.dart';

class KryzysowyTelefonZaufania extends StatelessWidget {
  const KryzysowyTelefonZaufania({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(ZenTexts.kryzysowyTelefonZaufaniaTitle),
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
                const SizedBox(
                  height: ZenSizes.spaceBetweenItems,
                ),
                SizedBox(
                    child: ElevatedButton.icon(
                  onPressed: () {
                    launchUrlString('tel:+48 116 123');
                  },
                  style:
                      ElevatedButton.styleFrom(fixedSize: const Size(150, 60)),
                  icon: const Icon(
                    Icons.phone_rounded,
                    color: Colors.white,
                  ),
                  label: const Text('116 123'),
                )

                    // ElevatedButton(
                    //     onPressed: () {}, child: const Text('116 123')),
                    ),
                const SizedBox(
                  height: ZenSizes.spaceBetweenItems * 2,
                ),
                const SizedBox(
                    child: Text(
                        'Bezpłatna infolinia dla dorosłych w kryzysie psychicznym oferuje wsparcie emocjonalne dla osób w trudnych sytuacjach życiowych, ich bliskich oraz profesjonalistów. Pomaga również osobom pokrzywdzonym przestępstwem, w tym ofiarom i świadkom przemocy domowej. Dostępny jest telefon, chat oraz formularz kontaktowy.',
                        textAlign: TextAlign.center)),
                const SizedBox(
                  height: ZenSizes.spaceBetweenItems,
                ),
                SizedBox(
                    //child: Text('116sos.pl')),
                    width: 150,
                    child: Link(
                        uri: Uri.parse('https://116sos.pl/'),
                        builder: (context, followLink) {
                          return ElevatedButton(
                              onPressed: followLink,
                              child: const Text('116sos.pl'));
                        })),
              ],
            )));
  }
}
