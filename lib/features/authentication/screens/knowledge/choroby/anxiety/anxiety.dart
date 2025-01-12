import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class AnxietyPage extends StatelessWidget{
  const AnxietyPage ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(ZenTexts.anxietyButtonName),
          centerTitle: true,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            SizedBox(
                child: Text(
                    'Zaburzenia lękowe obejmują przewlekły niepokój, napady paniki, fobie społeczne i inne specyficzne lęki, które mogą znacznie utrudniać codzienne funkcjonowanie. Objawy obejmują szybkie bicie serca, nadmierne pocenie się, trudności w oddychaniu i uporczywe myśli lękowe.')),
            SizedBox(
              height: ZenSizes.spaceBetweenItems,
            )
          ],
        )));
  }
}