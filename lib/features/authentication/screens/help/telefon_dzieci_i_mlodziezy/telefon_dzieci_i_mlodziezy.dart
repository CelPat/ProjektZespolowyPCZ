import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';
import 'package:url_launcher/link.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
//import 'package:url_launcher/url_launcher.dart';

class TelefonDzieciIMlodziezy extends StatelessWidget {
  const TelefonDzieciIMlodziezy({super.key});
  
//   makingPhoneCall() async {
//   var url = Uri.parse("tel:116111");
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

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
              child: 
              // ElevatedButton(
              //     onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //       minimumSize: const Size(200, 40),
              //     ), 
              //     child: const Text('116 111')
              //     ),
              ElevatedButton.icon(
                onPressed: () {
                  launchUrlString('tel:+48 116 111');
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 60)
                ),
                icon: const Icon(
                  Icons.phone_rounded,
                  color: Colors.white,
                  ), 
                label: const Text('116 111'),
                )
            ),
            const SizedBox(
              height: ZenSizes.spaceBetweenItems * 2,
            ),
            const SizedBox(
                child: Text(
                    'Telefon ten wspiera dzieci i młodzież w trudnych sytuacjach, umożliwiając rozmowę o ważnych sprawach, problemach, emocjach i doświadczeniach. Można dzwonić w przypadku przemocy, dyskryminacji, problemów rodzinnych, szkolnych, rówieśniczych lub osobistych, a także w chwilach niepokoju czy potrzeby wsparcia.',
                    textAlign: TextAlign.center)),
            const SizedBox(
              height: ZenSizes.spaceBetweenItems * 2,
            ),
            SizedBox(
              width: 150,
              child: Link(
                uri: Uri.parse('https://116111.pl/'), 
                builder: (context, followLink){
                  return ElevatedButton(
                    onPressed: followLink, 
                    child: const Text('116111.pl'
                    ));
                }) 
              ),
          ],
        )));
  }
}
